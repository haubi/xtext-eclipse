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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Attribut;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Bug304681TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.ConstraintDefinition;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.PackageDefinition;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Reference;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug304681TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug304681TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug304681TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug304681TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug304681TestLanguagePackage.ATTRIBUT:
				sequence_Attribute2(context, (Attribut) semanticObject); 
				return; 
			case Bug304681TestLanguagePackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case Bug304681TestLanguagePackage.CONSTRAINT_DEFINITION:
				sequence_ConstraintDefinition(context, (ConstraintDefinition) semanticObject); 
				return; 
			case Bug304681TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug304681TestLanguagePackage.OBJECT:
				if (rule == grammarAccess.getObject2Rule()) {
					sequence_Object2(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Object) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getObjectRule()) {
					sequence_Object(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Object) semanticObject); 
					return; 
				}
				else break;
			case Bug304681TestLanguagePackage.PACKAGE_DEFINITION:
				if (rule == grammarAccess.getPackageDefinition2Rule()) {
					sequence_PackageDefinition2(context, (PackageDefinition) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getPackageDefinitionRule()) {
					sequence_PackageDefinition(context, (PackageDefinition) semanticObject); 
					return; 
				}
				else break;
			case Bug304681TestLanguagePackage.REFERENCE:
				if (rule == grammarAccess.getFeature2Rule()
						|| rule == grammarAccess.getReference2Rule()) {
					sequence_Reference2(context, (Reference) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getFeatureRule()
						|| rule == grammarAccess.getReferenceRule()) {
					sequence_Reference(context, (Reference) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Feature2 returns Attribut
	 *     Attribute2 returns Attribut
	 *
	 * Constraint:
	 *     (
	 *         type=ID 
	 *         name=ID 
	 *         (shortDescription=STRING | longDescription=STRING | constraintDefinitions+=ConstraintDefinition | required?='required' | technical?='technical')*
	 *     )
	 * </pre>
	 */
	protected void sequence_Attribute2(ISerializationContext context, Attribut semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Feature returns Attribute
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (type=ID name=ID)
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug304681TestLanguagePackage.Literals.ATTRIBUTE__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug304681TestLanguagePackage.Literals.ATTRIBUTE__TYPE));
			if (transientValues.isValueTransient(semanticObject, Bug304681TestLanguagePackage.Literals.FEATURE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug304681TestLanguagePackage.Literals.FEATURE__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getTypeIDTerminalRuleCall_1_0(), semanticObject.getType());
		feeder.accept(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ConstraintDefinition returns ConstraintDefinition
	 *
	 * Constraint:
	 *     (type=ID (parameters+=STRING | message=STRING)*)
	 * </pre>
	 */
	protected void sequence_ConstraintDefinition(ISerializationContext context, ConstraintDefinition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     (definition=PackageDefinition | definition=PackageDefinition2)
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Object2 returns Object
	 *
	 * Constraint:
	 *     (
	 *         (enabled?='enabled' | abstract?='abstract')? 
	 *         name=ID 
	 *         parent=[Object|ID]? 
	 *         (shortDescription=STRING | longDescription=STRING | serialVersionUID=INT | cloneable?='cloneable' | features+=Feature2)*
	 *     )
	 * </pre>
	 */
	protected void sequence_Object2(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Object semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Object returns Object
	 *
	 * Constraint:
	 *     (
	 *         (enabled?='enabled' | abstract?='abstract')? 
	 *         name=ID 
	 *         parent=[Object|ID]? 
	 *         (
	 *             shortDescription=STRING | 
	 *             longDescription=STRING | 
	 *             serialVersionUID=INT | 
	 *             cloneable?='cloneable' | 
	 *             features+=Feature | 
	 *             features+=Feature | 
	 *             features+=Feature | 
	 *             features+=Feature
	 *         )*
	 *     )
	 * </pre>
	 */
	protected void sequence_Object(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Object semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PackageDefinition2 returns PackageDefinition
	 *
	 * Constraint:
	 *     (namespace=ID contents+=Object2*)
	 * </pre>
	 */
	protected void sequence_PackageDefinition2(ISerializationContext context, PackageDefinition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PackageDefinition returns PackageDefinition
	 *
	 * Constraint:
	 *     (namespace=ID contents+=Object*)
	 * </pre>
	 */
	protected void sequence_PackageDefinition(ISerializationContext context, PackageDefinition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Feature2 returns Reference
	 *     Reference2 returns Reference
	 *
	 * Constraint:
	 *     (type=[Object|ID] many?='*'? name=ID (shortDescription=STRING | longDescription=STRING)*)
	 * </pre>
	 */
	protected void sequence_Reference2(ISerializationContext context, Reference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Feature returns Reference
	 *     Reference returns Reference
	 *
	 * Constraint:
	 *     (type=[Object|ID] many?='*'? name=ID (shortDescription=STRING | longDescription=STRING)*)
	 * </pre>
	 */
	protected void sequence_Reference(ISerializationContext context, Reference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
