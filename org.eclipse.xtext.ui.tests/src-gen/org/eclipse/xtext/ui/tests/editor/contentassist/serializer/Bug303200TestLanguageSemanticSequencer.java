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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Block;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.BracketAttribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Bug303200TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.ExpressionStatement;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.FunctionDefinition;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.FunctionExpression;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Identifier;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Invocation;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.ListExpression;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Parameters;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.PostfixExpression;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.Program;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug303200TestLanguage.PropertyOperator;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug303200TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug303200TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug303200TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug303200TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug303200TestLanguagePackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.BLOCK:
				sequence_Block(context, (Block) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.BRACKET_ATTRIBUTE:
				sequence_Attribute(context, (BracketAttribute) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.EXPRESSION_STATEMENT:
				sequence_Statement(context, (ExpressionStatement) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.FUNCTION_DEFINITION:
				sequence_FunctionDefinition(context, (FunctionDefinition) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.FUNCTION_EXPRESSION:
				sequence_PrimaryExpression(context, (FunctionExpression) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.IDENTIFIER:
				sequence_PrimaryExpression(context, (Identifier) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.INVOCATION:
				sequence_PostfixExpression(context, (Invocation) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.LIST_EXPRESSION:
				sequence_ListExpression(context, (ListExpression) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.PARAMETERS:
				sequence_Parameters(context, (Parameters) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.POSTFIX_EXPRESSION:
				sequence_PostfixExpression(context, (PostfixExpression) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.PROGRAM:
				sequence_Program(context, (Program) semanticObject); 
				return; 
			case Bug303200TestLanguagePackage.PROPERTY_OPERATOR:
				sequence_PropertyOperator(context, (PropertyOperator) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     ident=ID
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.ATTRIBUTE__IDENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.ATTRIBUTE__IDENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getIdentIDTerminalRuleCall_0_0(), semanticObject.getIdent());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Attribute returns BracketAttribute
	 *
	 * Constraint:
	 *     expression=PostfixExpression
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, BracketAttribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.BRACKET_ATTRIBUTE__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.BRACKET_ATTRIBUTE__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getExpressionPostfixExpressionParserRuleCall_1_3_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ProgramDirective returns Block
	 *     Block returns Block
	 *     Statement returns Block
	 *
	 * Constraint:
	 *     directives+=Statement*
	 * </pre>
	 */
	protected void sequence_Block(ISerializationContext context, Block semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ProgramDirective returns FunctionDefinition
	 *     FunctionDefinition returns FunctionDefinition
	 *
	 * Constraint:
	 *     (attributes+=Attribute* name=ID params=Parameters body=Block)
	 * </pre>
	 */
	protected void sequence_FunctionDefinition(ISerializationContext context, FunctionDefinition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ListExpression returns ListExpression
	 *
	 * Constraint:
	 *     (expressions+=PostfixExpression expressions+=PostfixExpression*)
	 * </pre>
	 */
	protected void sequence_ListExpression(ISerializationContext context, ListExpression semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Parameters returns Parameters
	 *
	 * Constraint:
	 *     (params+=ID params+=ID*)?
	 * </pre>
	 */
	protected void sequence_Parameters(ISerializationContext context, Parameters semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PostfixExpression returns Invocation
	 *     PostfixExpression.PostfixExpression_1_0_0 returns Invocation
	 *     PostfixExpression.Invocation_1_1_0 returns Invocation
	 *
	 * Constraint:
	 *     (expression=PostfixExpression_Invocation_1_1_0 arguments=ListExpression?)
	 * </pre>
	 */
	protected void sequence_PostfixExpression(ISerializationContext context, Invocation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PostfixExpression returns PostfixExpression
	 *     PostfixExpression.PostfixExpression_1_0_0 returns PostfixExpression
	 *     PostfixExpression.Invocation_1_1_0 returns PostfixExpression
	 *
	 * Constraint:
	 *     (expression=PostfixExpression_PostfixExpression_1_0_0 property=PropertyOperator)
	 * </pre>
	 */
	protected void sequence_PostfixExpression(ISerializationContext context, PostfixExpression semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.POSTFIX_EXPRESSION__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.POSTFIX_EXPRESSION__EXPRESSION));
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.POSTFIX_EXPRESSION__PROPERTY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.POSTFIX_EXPRESSION__PROPERTY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPostfixExpressionAccess().getPostfixExpressionExpressionAction_1_0_0(), semanticObject.getExpression());
		feeder.accept(grammarAccess.getPostfixExpressionAccess().getPropertyPropertyOperatorParserRuleCall_1_0_2_0(), semanticObject.getProperty());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PostfixExpression returns FunctionExpression
	 *     PostfixExpression.PostfixExpression_1_0_0 returns FunctionExpression
	 *     PostfixExpression.Invocation_1_1_0 returns FunctionExpression
	 *     PrimaryExpression returns FunctionExpression
	 *
	 * Constraint:
	 *     (params=Parameters body=Block)
	 * </pre>
	 */
	protected void sequence_PrimaryExpression(ISerializationContext context, FunctionExpression semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.FUNCTION_EXPRESSION__PARAMS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.FUNCTION_EXPRESSION__PARAMS));
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.FUNCTION_EXPRESSION__BODY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.FUNCTION_EXPRESSION__BODY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPrimaryExpressionAccess().getParamsParametersParserRuleCall_1_3_0(), semanticObject.getParams());
		feeder.accept(grammarAccess.getPrimaryExpressionAccess().getBodyBlockParserRuleCall_1_5_0(), semanticObject.getBody());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PostfixExpression returns Identifier
	 *     PostfixExpression.PostfixExpression_1_0_0 returns Identifier
	 *     PostfixExpression.Invocation_1_1_0 returns Identifier
	 *     PrimaryExpression returns Identifier
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_PrimaryExpression(ISerializationContext context, Identifier semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.IDENTIFIER__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.IDENTIFIER__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPrimaryExpressionAccess().getNameIDTerminalRuleCall_0_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Program returns Program
	 *
	 * Constraint:
	 *     directives+=ProgramDirective*
	 * </pre>
	 */
	protected void sequence_Program(ISerializationContext context, Program semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PropertyOperator returns PropertyOperator
	 *
	 * Constraint:
	 *     (name=ID | expressions=ListExpression)
	 * </pre>
	 */
	protected void sequence_PropertyOperator(ISerializationContext context, PropertyOperator semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ProgramDirective returns ExpressionStatement
	 *     Statement returns ExpressionStatement
	 *
	 * Constraint:
	 *     expression=PostfixExpression
	 * </pre>
	 */
	protected void sequence_Statement(ISerializationContext context, ExpressionStatement semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug303200TestLanguagePackage.Literals.EXPRESSION_STATEMENT__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug303200TestLanguagePackage.Literals.EXPRESSION_STATEMENT__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getStatementAccess().getExpressionPostfixExpressionParserRuleCall_1_1_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
}
