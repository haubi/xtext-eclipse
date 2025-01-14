/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.DataType;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.DomainModelTestPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Import;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Reference;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.DomainModelTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class DomainModelTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private DomainModelTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == DomainModelTestPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case DomainModelTestPackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case DomainModelTestPackage.CLASS:
				sequence_Class(context, (org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Class) semanticObject); 
				return; 
			case DomainModelTestPackage.DATA_TYPE:
				sequence_DataType(context, (DataType) semanticObject); 
				return; 
			case DomainModelTestPackage.IMPORT:
				sequence_Import(context, (Import) semanticObject); 
				return; 
			case DomainModelTestPackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case DomainModelTestPackage.REFERENCE:
				sequence_Reference(context, (Reference) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Property returns Attribute
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (name=ID type=[DataType|ID])
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.PROPERTY__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.PROPERTY__NAME));
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.ATTRIBUTE__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.ATTRIBUTE__TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getAttributeAccess().getTypeDataTypeIDTerminalRuleCall_3_0_1(), semanticObject.eGet(DomainModelTestPackage.Literals.ATTRIBUTE__TYPE, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Type returns Class
	 *     Class returns Class
	 *
	 * Constraint:
	 *     (name=ID superClass=[Class|ID]? properties+=Property* subClasses+=Class*)
	 * </pre>
	 */
	protected void sequence_Class(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.domainModelTest.Class semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Type returns DataType
	 *     DataType returns DataType
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_DataType(ISerializationContext context, DataType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.TYPE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.TYPE__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getDataTypeAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Import returns Import
	 *
	 * Constraint:
	 *     importURI=STRING
	 * </pre>
	 */
	protected void sequence_Import(ISerializationContext context, Import semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.IMPORT__IMPORT_URI) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.IMPORT__IMPORT_URI));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_1_0(), semanticObject.getImportURI());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     ((imports+=Import+ elements+=Type+) | elements+=Type+)?
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Property returns Reference
	 *     Reference returns Reference
	 *
	 * Constraint:
	 *     (name=ID type=[Class|ID])
	 * </pre>
	 */
	protected void sequence_Reference(ISerializationContext context, Reference semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.PROPERTY__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.PROPERTY__NAME));
			if (transientValues.isValueTransient(semanticObject, DomainModelTestPackage.Literals.REFERENCE__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DomainModelTestPackage.Literals.REFERENCE__TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getReferenceAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getReferenceAccess().getTypeClassIDTerminalRuleCall_3_0_1(), semanticObject.eGet(DomainModelTestPackage.Literals.REFERENCE__TYPE, false));
		feeder.finish();
	}
	
	
}
