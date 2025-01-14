/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug303200TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ProgramElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Program");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cProgramAction_0 = (Action)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_1_0 = (RuleCall)cGroup_1.eContents().get(0);
		private final Assignment cDirectivesAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cDirectivesProgramDirectiveParserRuleCall_1_1_0 = (RuleCall)cDirectivesAssignment_1_1.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_2 = (RuleCall)cGroup.eContents().get(2);
		
		//Program: {Program}
		//    (LT* directives+=ProgramDirective)*
		//    LT*;
		@Override public ParserRule getRule() { return rule; }
		
		//{Program}
		//   (LT* directives+=ProgramDirective)*
		//   LT*
		public Group getGroup() { return cGroup; }
		
		//{Program}
		public Action getProgramAction_0() { return cProgramAction_0; }
		
		//(LT* directives+=ProgramDirective)*
		public Group getGroup_1() { return cGroup_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_0() { return cLTTerminalRuleCall_1_0; }
		
		//directives+=ProgramDirective
		public Assignment getDirectivesAssignment_1_1() { return cDirectivesAssignment_1_1; }
		
		//ProgramDirective
		public RuleCall getDirectivesProgramDirectiveParserRuleCall_1_1_0() { return cDirectivesProgramDirectiveParserRuleCall_1_1_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_2() { return cLTTerminalRuleCall_2; }
	}
	public class ProgramDirectiveElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ProgramDirective");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cFunctionDefinitionParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cStatementParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//ProgramDirective
		//    : FunctionDefinition
		//    | Statement
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//FunctionDefinition
		//   | Statement
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//FunctionDefinition
		public RuleCall getFunctionDefinitionParserRuleCall_0() { return cFunctionDefinitionParserRuleCall_0; }
		
		//Statement
		public RuleCall getStatementParserRuleCall_1() { return cStatementParserRuleCall_1; }
	}
	public class FunctionDefinitionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.FunctionDefinition");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAttributesAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAttributesAttributeParserRuleCall_0_0 = (RuleCall)cAttributesAssignment_0.eContents().get(0);
		private final Keyword cFunctionKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_2 = (RuleCall)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_4 = (RuleCall)cGroup.eContents().get(4);
		private final Assignment cParamsAssignment_5 = (Assignment)cGroup.eContents().get(5);
		private final RuleCall cParamsParametersParserRuleCall_5_0 = (RuleCall)cParamsAssignment_5.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_6 = (RuleCall)cGroup.eContents().get(6);
		private final Assignment cBodyAssignment_7 = (Assignment)cGroup.eContents().get(7);
		private final RuleCall cBodyBlockParserRuleCall_7_0 = (RuleCall)cBodyAssignment_7.eContents().get(0);
		
		//FunctionDefinition:
		//    (attributes+=Attribute)* 'function' LT* name=ID LT*
		//    params=Parameters LT* body=Block;
		@Override public ParserRule getRule() { return rule; }
		
		//(attributes+=Attribute)* 'function' LT* name=ID LT*
		//params=Parameters LT* body=Block
		public Group getGroup() { return cGroup; }
		
		//(attributes+=Attribute)*
		public Assignment getAttributesAssignment_0() { return cAttributesAssignment_0; }
		
		//Attribute
		public RuleCall getAttributesAttributeParserRuleCall_0_0() { return cAttributesAttributeParserRuleCall_0_0; }
		
		//'function'
		public Keyword getFunctionKeyword_1() { return cFunctionKeyword_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_2() { return cLTTerminalRuleCall_2; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_4() { return cLTTerminalRuleCall_4; }
		
		//params=Parameters
		public Assignment getParamsAssignment_5() { return cParamsAssignment_5; }
		
		//Parameters
		public RuleCall getParamsParametersParserRuleCall_5_0() { return cParamsParametersParserRuleCall_5_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_6() { return cLTTerminalRuleCall_6; }
		
		//body=Block
		public Assignment getBodyAssignment_7() { return cBodyAssignment_7; }
		
		//Block
		public RuleCall getBodyBlockParserRuleCall_7_0() { return cBodyBlockParserRuleCall_7_0; }
	}
	public class AttributeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Attribute");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Assignment cIdentAssignment_0 = (Assignment)cAlternatives.eContents().get(0);
		private final RuleCall cIdentIDTerminalRuleCall_0_0 = (RuleCall)cIdentAssignment_0.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Action cBracketAttributeAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Keyword cLeftSquareBracketKeyword_1_1 = (Keyword)cGroup_1.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_1_2 = (RuleCall)cGroup_1.eContents().get(2);
		private final Assignment cExpressionAssignment_1_3 = (Assignment)cGroup_1.eContents().get(3);
		private final RuleCall cExpressionPostfixExpressionParserRuleCall_1_3_0 = (RuleCall)cExpressionAssignment_1_3.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_4 = (RuleCall)cGroup_1.eContents().get(4);
		private final Keyword cRightSquareBracketKeyword_1_5 = (Keyword)cGroup_1.eContents().get(5);
		
		//Attribute
		//    : ident=ID
		//    | {BracketAttribute} '[' LT* expression=PostfixExpression LT* ']'
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//ident=ID
		//   | {BracketAttribute} '[' LT* expression=PostfixExpression LT* ']'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//ident=ID
		public Assignment getIdentAssignment_0() { return cIdentAssignment_0; }
		
		//ID
		public RuleCall getIdentIDTerminalRuleCall_0_0() { return cIdentIDTerminalRuleCall_0_0; }
		
		//{BracketAttribute} '[' LT* expression=PostfixExpression LT* ']'
		public Group getGroup_1() { return cGroup_1; }
		
		//{BracketAttribute}
		public Action getBracketAttributeAction_1_0() { return cBracketAttributeAction_1_0; }
		
		//'['
		public Keyword getLeftSquareBracketKeyword_1_1() { return cLeftSquareBracketKeyword_1_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_2() { return cLTTerminalRuleCall_1_2; }
		
		//expression=PostfixExpression
		public Assignment getExpressionAssignment_1_3() { return cExpressionAssignment_1_3; }
		
		//PostfixExpression
		public RuleCall getExpressionPostfixExpressionParserRuleCall_1_3_0() { return cExpressionPostfixExpressionParserRuleCall_1_3_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_4() { return cLTTerminalRuleCall_1_4; }
		
		//']'
		public Keyword getRightSquareBracketKeyword_1_5() { return cRightSquareBracketKeyword_1_5; }
	}
	public class ParametersElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Parameters");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cParametersAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_2 = (RuleCall)cGroup.eContents().get(2);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Assignment cParamsAssignment_3_0 = (Assignment)cGroup_3.eContents().get(0);
		private final RuleCall cParamsIDTerminalRuleCall_3_0_0 = (RuleCall)cParamsAssignment_3_0.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_3_1 = (RuleCall)cGroup_3.eContents().get(1);
		private final Group cGroup_3_2 = (Group)cGroup_3.eContents().get(2);
		private final Keyword cCommaKeyword_3_2_0 = (Keyword)cGroup_3_2.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_3_2_1 = (RuleCall)cGroup_3_2.eContents().get(1);
		private final Assignment cParamsAssignment_3_2_2 = (Assignment)cGroup_3_2.eContents().get(2);
		private final RuleCall cParamsIDTerminalRuleCall_3_2_2_0 = (RuleCall)cParamsAssignment_3_2_2.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_3_2_3 = (RuleCall)cGroup_3_2.eContents().get(3);
		private final Keyword cRightParenthesisKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//Parameters :
		//    {Parameters}
		//    '(' LT* (params+=ID LT* (',' LT* params+=ID LT*)* )? ')';
		@Override public ParserRule getRule() { return rule; }
		
		//{Parameters}
		//'(' LT* (params+=ID LT* (',' LT* params+=ID LT*)* )? ')'
		public Group getGroup() { return cGroup; }
		
		//{Parameters}
		public Action getParametersAction_0() { return cParametersAction_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1() { return cLeftParenthesisKeyword_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_2() { return cLTTerminalRuleCall_2; }
		
		//(params+=ID LT* (',' LT* params+=ID LT*)* )?
		public Group getGroup_3() { return cGroup_3; }
		
		//params+=ID
		public Assignment getParamsAssignment_3_0() { return cParamsAssignment_3_0; }
		
		//ID
		public RuleCall getParamsIDTerminalRuleCall_3_0_0() { return cParamsIDTerminalRuleCall_3_0_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_3_1() { return cLTTerminalRuleCall_3_1; }
		
		//(',' LT* params+=ID LT*)*
		public Group getGroup_3_2() { return cGroup_3_2; }
		
		//','
		public Keyword getCommaKeyword_3_2_0() { return cCommaKeyword_3_2_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_3_2_1() { return cLTTerminalRuleCall_3_2_1; }
		
		//params+=ID
		public Assignment getParamsAssignment_3_2_2() { return cParamsAssignment_3_2_2; }
		
		//ID
		public RuleCall getParamsIDTerminalRuleCall_3_2_2_0() { return cParamsIDTerminalRuleCall_3_2_2_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_3_2_3() { return cLTTerminalRuleCall_3_2_3; }
		
		//')'
		public Keyword getRightParenthesisKeyword_4() { return cRightParenthesisKeyword_4; }
	}
	public class BlockElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Block");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cBlockAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final RuleCall cLTTerminalRuleCall_2_0 = (RuleCall)cGroup_2.eContents().get(0);
		private final Assignment cDirectivesAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final RuleCall cDirectivesStatementParserRuleCall_2_1_0 = (RuleCall)cDirectivesAssignment_2_1.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_3 = (RuleCall)cGroup.eContents().get(3);
		private final Keyword cRightCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//Block :
		//    {Block}
		//    '{' (LT* directives+=Statement )* LT* '}';
		@Override public ParserRule getRule() { return rule; }
		
		//{Block}
		//'{' (LT* directives+=Statement )* LT* '}'
		public Group getGroup() { return cGroup; }
		
		//{Block}
		public Action getBlockAction_0() { return cBlockAction_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_1() { return cLeftCurlyBracketKeyword_1; }
		
		//(LT* directives+=Statement )*
		public Group getGroup_2() { return cGroup_2; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_2_0() { return cLTTerminalRuleCall_2_0; }
		
		//directives+=Statement
		public Assignment getDirectivesAssignment_2_1() { return cDirectivesAssignment_2_1; }
		
		//Statement
		public RuleCall getDirectivesStatementParserRuleCall_2_1_0() { return cDirectivesStatementParserRuleCall_2_1_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_3() { return cLTTerminalRuleCall_3; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_4() { return cRightCurlyBracketKeyword_4; }
	}
	public class StatementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Statement");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cBlockParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Action cExpressionStatementAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Assignment cExpressionAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cExpressionPostfixExpressionParserRuleCall_1_1_0 = (RuleCall)cExpressionAssignment_1_1.eContents().get(0);
		private final Alternatives cAlternatives_1_2 = (Alternatives)cGroup_1.eContents().get(2);
		private final Keyword cSemicolonKeyword_1_2_0 = (Keyword)cAlternatives_1_2.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_2_1 = (RuleCall)cAlternatives_1_2.eContents().get(1);
		
		//Statement
		//    : Block
		//    | {ExpressionStatement} expression=PostfixExpression (';' | LT)
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//Block
		//   | {ExpressionStatement} expression=PostfixExpression (';' | LT)
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Block
		public RuleCall getBlockParserRuleCall_0() { return cBlockParserRuleCall_0; }
		
		//{ExpressionStatement} expression=PostfixExpression (';' | LT)
		public Group getGroup_1() { return cGroup_1; }
		
		//{ExpressionStatement}
		public Action getExpressionStatementAction_1_0() { return cExpressionStatementAction_1_0; }
		
		//expression=PostfixExpression
		public Assignment getExpressionAssignment_1_1() { return cExpressionAssignment_1_1; }
		
		//PostfixExpression
		public RuleCall getExpressionPostfixExpressionParserRuleCall_1_1_0() { return cExpressionPostfixExpressionParserRuleCall_1_1_0; }
		
		//(';' | LT)
		public Alternatives getAlternatives_1_2() { return cAlternatives_1_2; }
		
		//';'
		public Keyword getSemicolonKeyword_1_2_0() { return cSemicolonKeyword_1_2_0; }
		
		//LT
		public RuleCall getLTTerminalRuleCall_1_2_1() { return cLTTerminalRuleCall_1_2_1; }
	}
	public class PostfixExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PostfixExpression");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cPrimaryExpressionParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Group cGroup_1_0 = (Group)cAlternatives_1.eContents().get(0);
		private final Action cPostfixExpressionExpressionAction_1_0_0 = (Action)cGroup_1_0.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_0_1 = (RuleCall)cGroup_1_0.eContents().get(1);
		private final Assignment cPropertyAssignment_1_0_2 = (Assignment)cGroup_1_0.eContents().get(2);
		private final RuleCall cPropertyPropertyOperatorParserRuleCall_1_0_2_0 = (RuleCall)cPropertyAssignment_1_0_2.eContents().get(0);
		private final Group cGroup_1_1 = (Group)cAlternatives_1.eContents().get(1);
		private final Action cInvocationExpressionAction_1_1_0 = (Action)cGroup_1_1.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_1_1 = (RuleCall)cGroup_1_1.eContents().get(1);
		private final Keyword cLeftParenthesisKeyword_1_1_2 = (Keyword)cGroup_1_1.eContents().get(2);
		private final RuleCall cLTTerminalRuleCall_1_1_3 = (RuleCall)cGroup_1_1.eContents().get(3);
		private final Group cGroup_1_1_4 = (Group)cGroup_1_1.eContents().get(4);
		private final Assignment cArgumentsAssignment_1_1_4_0 = (Assignment)cGroup_1_1_4.eContents().get(0);
		private final RuleCall cArgumentsListExpressionParserRuleCall_1_1_4_0_0 = (RuleCall)cArgumentsAssignment_1_1_4_0.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_1_4_1 = (RuleCall)cGroup_1_1_4.eContents().get(1);
		private final Keyword cRightParenthesisKeyword_1_1_5 = (Keyword)cGroup_1_1.eContents().get(5);
		
		//PostfixExpression
		//    :     PrimaryExpression
		//        ( {PostfixExpression.expression = current} LT* property=PropertyOperator
		//        | {Invocation.expression = current} LT* '(' LT* (arguments=ListExpression LT*)? ')'
		//        )*
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//PrimaryExpression
		//   ( {PostfixExpression.expression = current} LT* property=PropertyOperator
		//   | {Invocation.expression = current} LT* '(' LT* (arguments=ListExpression LT*)? ')'
		//   )*
		public Group getGroup() { return cGroup; }
		
		//PrimaryExpression
		public RuleCall getPrimaryExpressionParserRuleCall_0() { return cPrimaryExpressionParserRuleCall_0; }
		
		//( {PostfixExpression.expression = current} LT* property=PropertyOperator
		//| {Invocation.expression = current} LT* '(' LT* (arguments=ListExpression LT*)? ')'
		//)*
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//{PostfixExpression.expression = current} LT* property=PropertyOperator
		public Group getGroup_1_0() { return cGroup_1_0; }
		
		//{PostfixExpression.expression = current}
		public Action getPostfixExpressionExpressionAction_1_0_0() { return cPostfixExpressionExpressionAction_1_0_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_0_1() { return cLTTerminalRuleCall_1_0_1; }
		
		//property=PropertyOperator
		public Assignment getPropertyAssignment_1_0_2() { return cPropertyAssignment_1_0_2; }
		
		//PropertyOperator
		public RuleCall getPropertyPropertyOperatorParserRuleCall_1_0_2_0() { return cPropertyPropertyOperatorParserRuleCall_1_0_2_0; }
		
		//{Invocation.expression = current} LT* '(' LT* (arguments=ListExpression LT*)? ')'
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//{Invocation.expression = current}
		public Action getInvocationExpressionAction_1_1_0() { return cInvocationExpressionAction_1_1_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_1_1() { return cLTTerminalRuleCall_1_1_1; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1_1_2() { return cLeftParenthesisKeyword_1_1_2; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_1_3() { return cLTTerminalRuleCall_1_1_3; }
		
		//(arguments=ListExpression LT*)?
		public Group getGroup_1_1_4() { return cGroup_1_1_4; }
		
		//arguments=ListExpression
		public Assignment getArgumentsAssignment_1_1_4_0() { return cArgumentsAssignment_1_1_4_0; }
		
		//ListExpression
		public RuleCall getArgumentsListExpressionParserRuleCall_1_1_4_0_0() { return cArgumentsListExpressionParserRuleCall_1_1_4_0_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_1_4_1() { return cLTTerminalRuleCall_1_1_4_1; }
		
		//')'
		public Keyword getRightParenthesisKeyword_1_1_5() { return cRightParenthesisKeyword_1_1_5; }
	}
	public class ListExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ListExpression");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cExpressionsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cExpressionsPostfixExpressionParserRuleCall_0_0 = (RuleCall)cExpressionsAssignment_0.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_1_0 = (RuleCall)cGroup_1.eContents().get(0);
		private final Keyword cCommaKeyword_1_1 = (Keyword)cGroup_1.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_1_2 = (RuleCall)cGroup_1.eContents().get(2);
		private final Assignment cExpressionsAssignment_1_3 = (Assignment)cGroup_1.eContents().get(3);
		private final RuleCall cExpressionsPostfixExpressionParserRuleCall_1_3_0 = (RuleCall)cExpressionsAssignment_1_3.eContents().get(0);
		
		//ListExpression:
		//    expressions+=PostfixExpression (LT* ',' LT* expressions+=PostfixExpression)*;
		@Override public ParserRule getRule() { return rule; }
		
		//expressions+=PostfixExpression (LT* ',' LT* expressions+=PostfixExpression)*
		public Group getGroup() { return cGroup; }
		
		//expressions+=PostfixExpression
		public Assignment getExpressionsAssignment_0() { return cExpressionsAssignment_0; }
		
		//PostfixExpression
		public RuleCall getExpressionsPostfixExpressionParserRuleCall_0_0() { return cExpressionsPostfixExpressionParserRuleCall_0_0; }
		
		//(LT* ',' LT* expressions+=PostfixExpression)*
		public Group getGroup_1() { return cGroup_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_0() { return cLTTerminalRuleCall_1_0; }
		
		//','
		public Keyword getCommaKeyword_1_1() { return cCommaKeyword_1_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_2() { return cLTTerminalRuleCall_1_2; }
		
		//expressions+=PostfixExpression
		public Assignment getExpressionsAssignment_1_3() { return cExpressionsAssignment_1_3; }
		
		//PostfixExpression
		public RuleCall getExpressionsPostfixExpressionParserRuleCall_1_3_0() { return cExpressionsPostfixExpressionParserRuleCall_1_3_0; }
	}
	public class PropertyOperatorElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PropertyOperator");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Keyword cFullStopKeyword_0_0 = (Keyword)cGroup_0.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_0_1 = (RuleCall)cGroup_0.eContents().get(1);
		private final Assignment cNameAssignment_0_2 = (Assignment)cGroup_0.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_0_2_0 = (RuleCall)cNameAssignment_0_2.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Keyword cLeftSquareBracketKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		private final Assignment cExpressionsAssignment_1_2 = (Assignment)cGroup_1.eContents().get(2);
		private final RuleCall cExpressionsListExpressionParserRuleCall_1_2_0 = (RuleCall)cExpressionsAssignment_1_2.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_3 = (RuleCall)cGroup_1.eContents().get(3);
		private final Keyword cRightSquareBracketKeyword_1_4 = (Keyword)cGroup_1.eContents().get(4);
		
		//PropertyOperator
		//    : '.' LT* name=ID
		//    | '[' LT* expressions=ListExpression LT* ']'
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//'.' LT* name=ID
		//   | '[' LT* expressions=ListExpression LT* ']'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'.' LT* name=ID
		public Group getGroup_0() { return cGroup_0; }
		
		//'.'
		public Keyword getFullStopKeyword_0_0() { return cFullStopKeyword_0_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_0_1() { return cLTTerminalRuleCall_0_1; }
		
		//name=ID
		public Assignment getNameAssignment_0_2() { return cNameAssignment_0_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_2_0() { return cNameIDTerminalRuleCall_0_2_0; }
		
		//'[' LT* expressions=ListExpression LT* ']'
		public Group getGroup_1() { return cGroup_1; }
		
		//'['
		public Keyword getLeftSquareBracketKeyword_1_0() { return cLeftSquareBracketKeyword_1_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_1() { return cLTTerminalRuleCall_1_1; }
		
		//expressions=ListExpression
		public Assignment getExpressionsAssignment_1_2() { return cExpressionsAssignment_1_2; }
		
		//ListExpression
		public RuleCall getExpressionsListExpressionParserRuleCall_1_2_0() { return cExpressionsListExpressionParserRuleCall_1_2_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_3() { return cLTTerminalRuleCall_1_3; }
		
		//']'
		public Keyword getRightSquareBracketKeyword_1_4() { return cRightSquareBracketKeyword_1_4; }
	}
	public class PrimaryExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PrimaryExpression");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Action cIdentifierAction_0_0 = (Action)cGroup_0.eContents().get(0);
		private final Assignment cNameAssignment_0_1 = (Assignment)cGroup_0.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_0_1_0 = (RuleCall)cNameAssignment_0_1.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Action cFunctionExpressionAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Keyword cFunctionKeyword_1_1 = (Keyword)cGroup_1.eContents().get(1);
		private final RuleCall cLTTerminalRuleCall_1_2 = (RuleCall)cGroup_1.eContents().get(2);
		private final Assignment cParamsAssignment_1_3 = (Assignment)cGroup_1.eContents().get(3);
		private final RuleCall cParamsParametersParserRuleCall_1_3_0 = (RuleCall)cParamsAssignment_1_3.eContents().get(0);
		private final RuleCall cLTTerminalRuleCall_1_4 = (RuleCall)cGroup_1.eContents().get(4);
		private final Assignment cBodyAssignment_1_5 = (Assignment)cGroup_1.eContents().get(5);
		private final RuleCall cBodyBlockParserRuleCall_1_5_0 = (RuleCall)cBodyAssignment_1_5.eContents().get(0);
		
		//PrimaryExpression
		//    : {Identifier} name=ID
		//    | {FunctionExpression} 'function' LT* params=Parameters LT* body=Block
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//{Identifier} name=ID
		//   | {FunctionExpression} 'function' LT* params=Parameters LT* body=Block
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//{Identifier} name=ID
		public Group getGroup_0() { return cGroup_0; }
		
		//{Identifier}
		public Action getIdentifierAction_0_0() { return cIdentifierAction_0_0; }
		
		//name=ID
		public Assignment getNameAssignment_0_1() { return cNameAssignment_0_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_1_0() { return cNameIDTerminalRuleCall_0_1_0; }
		
		//{FunctionExpression} 'function' LT* params=Parameters LT* body=Block
		public Group getGroup_1() { return cGroup_1; }
		
		//{FunctionExpression}
		public Action getFunctionExpressionAction_1_0() { return cFunctionExpressionAction_1_0; }
		
		//'function'
		public Keyword getFunctionKeyword_1_1() { return cFunctionKeyword_1_1; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_2() { return cLTTerminalRuleCall_1_2; }
		
		//params=Parameters
		public Assignment getParamsAssignment_1_3() { return cParamsAssignment_1_3; }
		
		//Parameters
		public RuleCall getParamsParametersParserRuleCall_1_3_0() { return cParamsParametersParserRuleCall_1_3_0; }
		
		//LT*
		public RuleCall getLTTerminalRuleCall_1_4() { return cLTTerminalRuleCall_1_4; }
		
		//body=Block
		public Assignment getBodyAssignment_1_5() { return cBodyAssignment_1_5; }
		
		//Block
		public RuleCall getBodyBlockParserRuleCall_1_5_0() { return cBodyBlockParserRuleCall_1_5_0; }
	}
	
	
	private final ProgramElements pProgram;
	private final ProgramDirectiveElements pProgramDirective;
	private final FunctionDefinitionElements pFunctionDefinition;
	private final AttributeElements pAttribute;
	private final ParametersElements pParameters;
	private final BlockElements pBlock;
	private final StatementElements pStatement;
	private final PostfixExpressionElements pPostfixExpression;
	private final ListExpressionElements pListExpression;
	private final PropertyOperatorElements pPropertyOperator;
	private final PrimaryExpressionElements pPrimaryExpression;
	private final TerminalRule tID;
	private final TerminalRule tWS;
	private final TerminalRule tLT;
	
	private final Grammar grammar;

	@Inject
	public Bug303200TestLanguageGrammarAccess(GrammarProvider grammarProvider) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.pProgram = new ProgramElements();
		this.pProgramDirective = new ProgramDirectiveElements();
		this.pFunctionDefinition = new FunctionDefinitionElements();
		this.pAttribute = new AttributeElements();
		this.pParameters = new ParametersElements();
		this.pBlock = new BlockElements();
		this.pStatement = new StatementElements();
		this.pPostfixExpression = new PostfixExpressionElements();
		this.pListExpression = new ListExpressionElements();
		this.pPropertyOperator = new PropertyOperatorElements();
		this.pPrimaryExpression = new PrimaryExpressionElements();
		this.tID = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
		this.tWS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.WS");
		this.tLT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.LT");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	

	
	//Program: {Program}
	//    (LT* directives+=ProgramDirective)*
	//    LT*;
	public ProgramElements getProgramAccess() {
		return pProgram;
	}
	
	public ParserRule getProgramRule() {
		return getProgramAccess().getRule();
	}
	
	//ProgramDirective
	//    : FunctionDefinition
	//    | Statement
	//    ;
	public ProgramDirectiveElements getProgramDirectiveAccess() {
		return pProgramDirective;
	}
	
	public ParserRule getProgramDirectiveRule() {
		return getProgramDirectiveAccess().getRule();
	}
	
	//FunctionDefinition:
	//    (attributes+=Attribute)* 'function' LT* name=ID LT*
	//    params=Parameters LT* body=Block;
	public FunctionDefinitionElements getFunctionDefinitionAccess() {
		return pFunctionDefinition;
	}
	
	public ParserRule getFunctionDefinitionRule() {
		return getFunctionDefinitionAccess().getRule();
	}
	
	//Attribute
	//    : ident=ID
	//    | {BracketAttribute} '[' LT* expression=PostfixExpression LT* ']'
	//    ;
	public AttributeElements getAttributeAccess() {
		return pAttribute;
	}
	
	public ParserRule getAttributeRule() {
		return getAttributeAccess().getRule();
	}
	
	//Parameters :
	//    {Parameters}
	//    '(' LT* (params+=ID LT* (',' LT* params+=ID LT*)* )? ')';
	public ParametersElements getParametersAccess() {
		return pParameters;
	}
	
	public ParserRule getParametersRule() {
		return getParametersAccess().getRule();
	}
	
	//Block :
	//    {Block}
	//    '{' (LT* directives+=Statement )* LT* '}';
	public BlockElements getBlockAccess() {
		return pBlock;
	}
	
	public ParserRule getBlockRule() {
		return getBlockAccess().getRule();
	}
	
	//Statement
	//    : Block
	//    | {ExpressionStatement} expression=PostfixExpression (';' | LT)
	//    ;
	public StatementElements getStatementAccess() {
		return pStatement;
	}
	
	public ParserRule getStatementRule() {
		return getStatementAccess().getRule();
	}
	
	//PostfixExpression
	//    :     PrimaryExpression
	//        ( {PostfixExpression.expression = current} LT* property=PropertyOperator
	//        | {Invocation.expression = current} LT* '(' LT* (arguments=ListExpression LT*)? ')'
	//        )*
	//    ;
	public PostfixExpressionElements getPostfixExpressionAccess() {
		return pPostfixExpression;
	}
	
	public ParserRule getPostfixExpressionRule() {
		return getPostfixExpressionAccess().getRule();
	}
	
	//ListExpression:
	//    expressions+=PostfixExpression (LT* ',' LT* expressions+=PostfixExpression)*;
	public ListExpressionElements getListExpressionAccess() {
		return pListExpression;
	}
	
	public ParserRule getListExpressionRule() {
		return getListExpressionAccess().getRule();
	}
	
	//PropertyOperator
	//    : '.' LT* name=ID
	//    | '[' LT* expressions=ListExpression LT* ']'
	//    ;
	public PropertyOperatorElements getPropertyOperatorAccess() {
		return pPropertyOperator;
	}
	
	public ParserRule getPropertyOperatorRule() {
		return getPropertyOperatorAccess().getRule();
	}
	
	//PrimaryExpression
	//    : {Identifier} name=ID
	//    | {FunctionExpression} 'function' LT* params=Parameters LT* body=Block
	//    ;
	public PrimaryExpressionElements getPrimaryExpressionAccess() {
		return pPrimaryExpression;
	}
	
	public ParserRule getPrimaryExpressionRule() {
		return getPrimaryExpressionAccess().getRule();
	}
	
	//terminal ID: ('a'..'z'|'A'..'Z')+;
	public TerminalRule getIDRule() {
		return tID;
	}
	
	//terminal WS: (' '|'\t')+;
	public TerminalRule getWSRule() {
		return tWS;
	}
	
	//terminal LT: '\r'|'\n';
	public TerminalRule getLTRule() {
		return tLT;
	}
}
