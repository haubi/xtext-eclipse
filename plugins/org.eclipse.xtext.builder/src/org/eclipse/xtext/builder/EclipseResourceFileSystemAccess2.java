/*******************************************************************************
 * Copyright (c) 2011 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.builder;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

import org.apache.log4j.Logger;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.common.util.URI;
import org.eclipse.xtext.builder.trace.FileBasedTraceInformation;
import org.eclipse.xtext.builder.trace.TraceMarkers;
import org.eclipse.xtext.generator.AbstractFileSystemAccess;
import org.eclipse.xtext.generator.OutputConfiguration;
import org.eclipse.xtext.generator.trace.AbstractTraceRegion;
import org.eclipse.xtext.generator.trace.ILocationData;
import org.eclipse.xtext.generator.trace.ITraceRegionProvider;
import org.eclipse.xtext.generator.trace.SmapSupport;
import org.eclipse.xtext.generator.trace.TraceRegionSerializer;
import org.eclipse.xtext.util.StringInputStream;

import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import com.google.inject.Inject;

/**
 * @author Sven Efftinge - Initial contribution and API
 * @author Michael Clay - https://bugs.eclipse.org/bugs/show_bug.cgi?id=386135
 * @since 2.1
 */
public class EclipseResourceFileSystemAccess2 extends AbstractFileSystemAccess {

	private final static Logger log = Logger.getLogger(EclipseResourceFileSystemAccess2.class);
	
	/**
	 * @noimplement This interface is not intended to be implemented by clients.
	 */
	public interface IFileCallback {
		public void afterFileUpdate(IFile file);
		public void afterFileCreation(IFile file);
		/**
		 * @return whether a deletion is vetoed.
		 */
		public boolean beforeFileDeletion(IFile file);
	}
	
	private IProject project;
	
	private IProgressMonitor monitor;
	
	private IFileCallback callBack;
	
	@Inject
	private TraceRegionSerializer traceSerializer;
	
	@Inject
	private TraceMarkers traceMarkers;
	
	@Inject
	private FileBasedTraceInformation fileBasedTraceInformation;
	
	@Inject
	private IWorkspace workspace;
	
	private Multimap<URI, IPath> sourceTraces;
	
	@Inject
	private SmapSupport smapSupport;
	
	/**
	 * @since 2.3
	 */
	protected IFileCallback getCallBack() {
		return callBack;
	}
	
	public void setProject(IProject project) {
		this.project = project;
	}
	
	public void setMonitor(IProgressMonitor monitor) {
		this.monitor = monitor;
	}
	
	public void setPostProcessor(IFileCallback callBack) {
		this.callBack = callBack;
	}
	
	protected IProgressMonitor getMonitor() {
		return monitor;
	}

	public void generateFile(String fileName, String outputName, CharSequence contents) {
		if (monitor.isCanceled())
			throw new OperationCanceledException();
		OutputConfiguration outputConfig = getOutputConfig(outputName);
		
		// check output folder exists
		IContainer container = getContainer(outputConfig);
		if (!container.exists()) {
			if (outputConfig.isCreateOutputDirectory()) {
				try {
					createContainer(container);
				} catch (CoreException e) {
					throw new RuntimeException(e);
				}
			} else {
				return;
			}
		}
		
		IFile file = getFile(fileName, outputName);
		IFile traceFile = getTraceFile(file);
		CharSequence postProcessedContent = postProcess(fileName, outputName, contents);
		String contentsAsString = postProcessedContent.toString(); 
		if (file.exists()) {
			if (outputConfig.isOverrideExistingResources()) {
				try {
					StringInputStream newContent = getInputStream(contentsAsString, getEncoding(file));
					if (hasContentsChanged(file, newContent)) {
						// reset to offset zero allows to reuse internal byte[]
						// no need to convert the string twice
						newContent.reset();
						file.setContents(newContent, true, true, monitor);
						if (file.isDerived() != outputConfig.isSetDerivedProperty()) {
							setDerived(file, outputConfig.isSetDerivedProperty());
						}
					}
					updateTraceInformation(traceFile, postProcessedContent, outputConfig.isSetDerivedProperty());
				} catch (CoreException e) {
					throw new RuntimeException(e);
				} catch (IOException e) {
					throw new RuntimeException(e);
				}
				if (callBack != null)
					callBack.afterFileUpdate(file);
			}
		} else {
			try {
				ensureParentExists(file);
				file.create(getInputStream(contentsAsString, getEncoding(file)), true, monitor);
				if (outputConfig.isSetDerivedProperty()) {
					setDerived(file, true);
				}
				updateTraceInformation(traceFile, postProcessedContent, outputConfig.isSetDerivedProperty());
			} catch (CoreException e) {
				throw new RuntimeException(e);
			} catch (IOException e) {
				throw new RuntimeException(e);
			}
			if (callBack != null)
				callBack.afterFileCreation(file);
		}
	}

	/**
	 * @since 2.3
	 */
	protected String getEncoding(IFile file) throws CoreException {
		return file.getCharset(true);
	}
	
	/**
	 * @since 2.3
	 */
	@SuppressWarnings("deprecation")
	protected void setDerived(IFile file, boolean derived) throws CoreException {
		file.setDerived(derived);
	}

	/**
	 * @deprecated use {@link #createContainer(IContainer)} instead
	 */
	@Deprecated
	protected void createFolder(IFolder folder) throws CoreException {
		ensureExists(folder);
	}

	/**
	 * @since 2.4
	 */
	protected void createContainer(IContainer container) throws CoreException {
        if (container instanceof IFolder) {
        		createFolder((IFolder) container);
        } else {
        		ensureExists(container);
        } 
	}

	protected void ensureParentExists(IFile file) throws CoreException {
		if (!file.exists()) {
			ensureExists(file.getParent());
		}
	}
	
	protected void ensureExists(IContainer container) throws CoreException {
		if (container.exists())
			return;
		if (container instanceof IFolder) {
			ensureExists(container.getParent());
			((IFolder)container).create(true, true, monitor);
		}
	}

	protected StringInputStream getInputStream(String contentsAsString, String encoding) {
		try {
			return new StringInputStream(contentsAsString, encoding);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * @deprecated use {@link #getContainer(OutputConfiguration)} instead
	 */
	@Deprecated
	protected IFolder getFolder(OutputConfiguration outputConfig) {
		return project.getFolder(new Path(outputConfig.getOutputDirectory()));
	}

	/**
	 * @since 2.4
	 */
	protected IContainer getContainer(OutputConfiguration outputConfig) {
		String path = outputConfig.getOutputDirectory();
		if (".".equals(path) || "./".equals(path) || "".equals(path)) {
			return project;
		}
		return getFolder(outputConfig);
	}

	protected boolean hasContentsChanged(IFile file, StringInputStream newContent) {
		boolean contentChanged = false;
		BufferedInputStream oldContent = null;
		try {
			oldContent = new BufferedInputStream(file.getContents());
			int newByte = newContent.read();
			int oldByte = oldContent.read();
			while(newByte != -1 && oldByte != -1 && newByte == oldByte) {
				newByte = newContent.read();
				oldByte = oldContent.read();
			}
			contentChanged = newByte != oldByte;
		} catch (CoreException e) {
			contentChanged = true;
		} catch (IOException e) {
			contentChanged = true;
		} finally {
			if (oldContent != null) {
				try {
					oldContent.close();
				} catch (IOException e) {
					// ignore
				}
			}
		}
		return contentChanged;
	}
	

	/**
	 * @throws CoreException if something unexpected happens during resource access
	 * @throws IOException if serialization of the trace data fails 
	 * @since 2.3
	 */
	protected void updateTraceInformation(IFile traceFile, CharSequence contents, boolean derived) throws CoreException, IOException {
		if (contents instanceof ITraceRegionProvider) {
			AbstractTraceRegion traceRegion = ((ITraceRegionProvider) contents).getTraceRegion();
			if (sourceTraces == null) {
				sourceTraces = HashMultimap.create();
			}
			IPath tracePath = traceFile.getFullPath();
			Iterator<AbstractTraceRegion> iterator = traceRegion.treeIterator();
			while(iterator.hasNext()) {
				AbstractTraceRegion region = iterator.next();
				for(ILocationData location: region.getAssociatedLocations()) {
					URI path = location.getPath();
					if (path != null) {
						sourceTraces.put(path, tracePath);
					}
				}
			}
			class AccessibleOutputStream extends ByteArrayOutputStream {
				byte[] internalBuffer() {
					return buf;
				}
				int internalLength() {
					return count;
				}
			}
			AccessibleOutputStream data = new AccessibleOutputStream();
			traceSerializer.writeTraceRegionTo(traceRegion, data);
			// avoid copying the byte array
			InputStream input = new ByteArrayInputStream(data.internalBuffer(), 0, data.internalLength());
			if (traceFile.exists()) {
				traceFile.setContents(input, false, true, monitor);
			} else {
				traceFile.create(input, true, monitor);
			}
			setDerived(traceFile, derived);
			return;
		}
		if (traceFile.exists()) {
			traceFile.delete(IResource.KEEP_HISTORY, monitor);
		}
	}
	
	/**
	 * @since 2.3
	 */
	@Deprecated
	protected IFile getSmapFile(IFile javaSourceFile) {
		log.warn("Smap files are no longer generated on disk.");
		return null;
	}


	/**
	 * Can be used to announce that a builder participant is done with this file system access and
	 * all potentially recorded trace information should be persisted. Uses the default generator name.
	 * @since 2.3
	 * @see TraceMarkers#DEFAULT_GENERATOR_NAME
	 */
	public void flushSourceTraces() throws CoreException {
		flushSourceTraces(TraceMarkers.DEFAULT_GENERATOR_NAME);
	}
	
	/**
	 * Can be used to announce that a builder participant is done with this file system access and
	 * all potentially recorded trace information should be persisted.
	 * @param generatorName the name of the generator. 
	 * @since 2.3
	 */
	public void flushSourceTraces(String generatorName) throws CoreException {
		if (sourceTraces != null) {
			Set<URI> keys = sourceTraces.keySet();
			for(URI uri: keys) {
				if (uri.isPlatformResource()) {
					Collection<IPath> paths = sourceTraces.get(uri);
					IFile sourceFile = workspace.getRoot().getFile(new Path(uri.toPlatformString(true)));
					if (sourceFile.exists()) {
						IPath[] tracePathArray = paths.toArray(new IPath[paths.size()]);
						traceMarkers.installMarker(sourceFile, generatorName, tracePathArray);
					}
				}
			}
		}
		sourceTraces = null;
	}

	/**
	 * @since 2.3
	 */
	protected IFile getTraceFile(IFile file) {
		IStorage traceFile = fileBasedTraceInformation.getTraceFile(file);
		if (traceFile instanceof IFile) {
			return (IFile) traceFile;
		}
		return null;
	}

	@Override
	public void deleteFile(String fileName, String outputName) {
		try {
			IFile file = getFile(fileName, outputName);
			deleteFile(file, monitor);
		} catch (CoreException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * @since 2.3
	 */
	public void deleteFile(IFile file, IProgressMonitor monitor) throws CoreException {
		IFileCallback callBack = getCallBack();
		if ((callBack == null || callBack.beforeFileDeletion(file)) && file.exists()) {
			IFile traceFile = getTraceFile(file);
			file.delete(IResource.KEEP_HISTORY, monitor);
			if (traceFile.exists()) {
				traceFile.delete(IResource.KEEP_HISTORY, monitor);
			}
		}
	}
	
	protected IFile getFile(String fileName, String outputName) {
		OutputConfiguration configuration = getOutputConfig(outputName);
		IContainer container = getContainer(configuration);
		return container.getFile(new Path(fileName));
	}
	
	/**
	 * We cannot use the storage to URI mapper here, as it only works for Xtext based languages 
	 * @since 2.3
	 */
	public URI getURI(String fileName, String outputConfiguration) {
		IFile file = getFile(fileName, outputConfiguration);
		return URI.createPlatformResourceURI(file.getFullPath().toString(), true);
	}

}
