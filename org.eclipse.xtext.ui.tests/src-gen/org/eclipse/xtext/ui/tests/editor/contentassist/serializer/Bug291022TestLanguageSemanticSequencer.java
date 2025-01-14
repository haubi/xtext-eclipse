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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.RootModel;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug291022TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug291022TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug291022TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug291022TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug291022TestLanguagePackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case Bug291022TestLanguagePackage.MODEL_ELEMENT:
				sequence_ModelElement(context, (ModelElement) semanticObject); 
				return; 
			case Bug291022TestLanguagePackage.ROOT_MODEL:
				sequence_RootModel(context, (RootModel) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     ModelAttribute returns Attribute
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (feature=[ModelElement|ID] value=STRING)
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug291022TestLanguagePackage.Literals.ATTRIBUTE__FEATURE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug291022TestLanguagePackage.Literals.ATTRIBUTE__FEATURE));
			if (transientValues.isValueTransient(semanticObject, Bug291022TestLanguagePackage.Literals.ATTRIBUTE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug291022TestLanguagePackage.Literals.ATTRIBUTE__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getFeatureModelElementIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug291022TestLanguagePackage.Literals.ATTRIBUTE__FEATURE, false));
		feeder.accept(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ModelElement returns ModelElement
	 *     ModelAttribute returns ModelElement
	 *
	 * Constraint:
	 *     (firstReference=[ModelElement|ID] name=ID? secondReference=[ModelElement|ID]? elements+=ModelAttribute*)
	 * </pre>
	 */
	protected void sequence_ModelElement(ISerializationContext context, ModelElement semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     RootModel returns RootModel
	 *
	 * Constraint:
	 *     (name=ID type=[ModelElement|ID]? elements+=ModelAttribute*)
	 * </pre>
	 */
	protected void sequence_RootModel(ISerializationContext context, RootModel semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
