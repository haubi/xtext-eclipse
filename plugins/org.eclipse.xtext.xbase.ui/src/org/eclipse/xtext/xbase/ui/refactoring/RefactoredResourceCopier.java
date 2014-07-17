/*******************************************************************************
 * Copyright (c) 2014 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.xbase.ui.refactoring;

import org.eclipse.core.resources.IProject;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.ui.refactoring.impl.ProjectUtil;
import org.eclipse.xtext.ui.refactoring.impl.RefactoringResourceSetProvider;

import com.google.inject.Inject;

/**
 * @author Sebastian Zarnekow - Initial contribution and API
 */
public class RefactoredResourceCopier {

	@Inject
	private RefactoringResourceSetProvider resourceSetProvider;
	
	@Inject
	private ProjectUtil projectUtil;
	
	public XtextResource loadIntoNewResourceSet(XtextResource orig) {
		IProject project = projectUtil.getProject(orig.getURI());
		ResourceSet copy = resourceSetProvider.get(project);
		XtextResource result = (XtextResource) copy.getResource(orig.getURI(), true);
		return result;
	}
}
