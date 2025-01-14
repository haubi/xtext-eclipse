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
import org.eclipse.xtext.EnumLiteralDeclaration;
import org.eclipse.xtext.EnumRule;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.UnorderedGroup;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug360834TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Model");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Keyword cAlternativeKeyword_0_0 = (Keyword)cGroup_0.eContents().get(0);
		private final Assignment cElementAssignment_0_1 = (Assignment)cGroup_0.eContents().get(1);
		private final RuleCall cElementAlternativeParserRuleCall_0_1_0 = (RuleCall)cElementAssignment_0_1.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Keyword cUnorderedKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cElementAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cElementUnorderedParserRuleCall_1_1_0 = (RuleCall)cElementAssignment_1_1.eContents().get(0);
		
		//Model :
		//      'alternative' element=Alternative
		//    | 'unordered' element=Unordered
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  'alternative' element=Alternative
		//| 'unordered' element=Unordered
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'alternative' element=Alternative
		public Group getGroup_0() { return cGroup_0; }
		
		//'alternative'
		public Keyword getAlternativeKeyword_0_0() { return cAlternativeKeyword_0_0; }
		
		//element=Alternative
		public Assignment getElementAssignment_0_1() { return cElementAssignment_0_1; }
		
		//Alternative
		public RuleCall getElementAlternativeParserRuleCall_0_1_0() { return cElementAlternativeParserRuleCall_0_1_0; }
		
		//'unordered' element=Unordered
		public Group getGroup_1() { return cGroup_1; }
		
		//'unordered'
		public Keyword getUnorderedKeyword_1_0() { return cUnorderedKeyword_1_0; }
		
		//element=Unordered
		public Assignment getElementAssignment_1_1() { return cElementAssignment_1_1; }
		
		//Unordered
		public RuleCall getElementUnorderedParserRuleCall_1_1_0() { return cElementUnorderedParserRuleCall_1_1_0; }
	}
	public class AlternativeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Alternative");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cPackageKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameFQNParserRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cRootDeclarationAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0 = (RuleCall)cRootDeclarationAssignment_3.eContents().get(0);
		
		//Alternative:
		//    'package' name = FQN ';'
		//    rootDeclaration=RecursiveClassDeclaration
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'package' name = FQN ';'
		//rootDeclaration=RecursiveClassDeclaration
		public Group getGroup() { return cGroup; }
		
		//'package'
		public Keyword getPackageKeyword_0() { return cPackageKeyword_0; }
		
		//name = FQN
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//FQN
		public RuleCall getNameFQNParserRuleCall_1_0() { return cNameFQNParserRuleCall_1_0; }
		
		//';'
		public Keyword getSemicolonKeyword_2() { return cSemicolonKeyword_2; }
		
		//rootDeclaration=RecursiveClassDeclaration
		public Assignment getRootDeclarationAssignment_3() { return cRootDeclarationAssignment_3; }
		
		//RecursiveClassDeclaration
		public RuleCall getRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0() { return cRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0; }
	}
	public class FQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.FQN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//FQN:
		//    ID ('.' ID)*
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('.' ID)*
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('.' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'.'
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
	}
	public class RecursiveClassDeclarationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.RecursiveClassDeclaration");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cModifiersAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cModifiersAlternativeClassModifiersParserRuleCall_0_0 = (RuleCall)cModifiersAssignment_0.eContents().get(0);
		private final Keyword cClassKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cMembersAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cMembersRecursiveClassDeclarationParserRuleCall_4_0 = (RuleCall)cMembersAssignment_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//RecursiveClassDeclaration:
		//    modifiers=AlternativeClassModifiers 'class' name=ID '{'
		//        members+=RecursiveClassDeclaration*
		//    '}'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//modifiers=AlternativeClassModifiers 'class' name=ID '{'
		//    members+=RecursiveClassDeclaration*
		//'}'
		public Group getGroup() { return cGroup; }
		
		//modifiers=AlternativeClassModifiers
		public Assignment getModifiersAssignment_0() { return cModifiersAssignment_0; }
		
		//AlternativeClassModifiers
		public RuleCall getModifiersAlternativeClassModifiersParserRuleCall_0_0() { return cModifiersAlternativeClassModifiersParserRuleCall_0_0; }
		
		//'class'
		public Keyword getClassKeyword_1() { return cClassKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3() { return cLeftCurlyBracketKeyword_3; }
		
		//members+=RecursiveClassDeclaration*
		public Assignment getMembersAssignment_4() { return cMembersAssignment_4; }
		
		//RecursiveClassDeclaration
		public RuleCall getMembersRecursiveClassDeclarationParserRuleCall_4_0() { return cMembersRecursiveClassDeclarationParserRuleCall_4_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	public class AlternativeClassModifiersElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.AlternativeClassModifiers");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cModifiersAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cFinalAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final Keyword cFinalFinalKeyword_1_0_0 = (Keyword)cFinalAssignment_1_0.eContents().get(0);
		private final Assignment cAbstractAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final Keyword cAbstractAbstractKeyword_1_1_0 = (Keyword)cAbstractAssignment_1_1.eContents().get(0);
		private final Assignment cExternAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final Keyword cExternExternKeyword_1_2_0 = (Keyword)cExternAssignment_1_2.eContents().get(0);
		private final Assignment cVisibilityAssignment_1_3 = (Assignment)cAlternatives_1.eContents().get(3);
		private final RuleCall cVisibilityVisibilityEnumRuleCall_1_3_0 = (RuleCall)cVisibilityAssignment_1_3.eContents().get(0);
		
		//AlternativeClassModifiers returns Modifiers:
		//    {Modifiers}
		//    (
		//        final?='final'
		//        |
		//        abstract?='abstract'
		//        |
		//        extern?='extern'
		//        |
		//        visibility=Visibility?
		//    )
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Modifiers}
		//(
		//    final?='final'
		//    |
		//    abstract?='abstract'
		//    |
		//    extern?='extern'
		//    |
		//    visibility=Visibility?
		//)
		public Group getGroup() { return cGroup; }
		
		//{Modifiers}
		public Action getModifiersAction_0() { return cModifiersAction_0; }
		
		//(
		//    final?='final'
		//    |
		//    abstract?='abstract'
		//    |
		//    extern?='extern'
		//    |
		//    visibility=Visibility?
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//final?='final'
		public Assignment getFinalAssignment_1_0() { return cFinalAssignment_1_0; }
		
		//'final'
		public Keyword getFinalFinalKeyword_1_0_0() { return cFinalFinalKeyword_1_0_0; }
		
		//abstract?='abstract'
		public Assignment getAbstractAssignment_1_1() { return cAbstractAssignment_1_1; }
		
		//'abstract'
		public Keyword getAbstractAbstractKeyword_1_1_0() { return cAbstractAbstractKeyword_1_1_0; }
		
		//extern?='extern'
		public Assignment getExternAssignment_1_2() { return cExternAssignment_1_2; }
		
		//'extern'
		public Keyword getExternExternKeyword_1_2_0() { return cExternExternKeyword_1_2_0; }
		
		//visibility=Visibility?
		public Assignment getVisibilityAssignment_1_3() { return cVisibilityAssignment_1_3; }
		
		//Visibility
		public RuleCall getVisibilityVisibilityEnumRuleCall_1_3_0() { return cVisibilityVisibilityEnumRuleCall_1_3_0; }
	}
	public class UnorderedElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Unordered");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cPackageKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameFQNParserRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cRootDeclarationAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cRootDeclarationSimpleClassDeclarationParserRuleCall_3_0 = (RuleCall)cRootDeclarationAssignment_3.eContents().get(0);
		
		//Unordered:
		//    'package' name = FQN ';'
		//    rootDeclaration=SimpleClassDeclaration
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'package' name = FQN ';'
		//rootDeclaration=SimpleClassDeclaration
		public Group getGroup() { return cGroup; }
		
		//'package'
		public Keyword getPackageKeyword_0() { return cPackageKeyword_0; }
		
		//name = FQN
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//FQN
		public RuleCall getNameFQNParserRuleCall_1_0() { return cNameFQNParserRuleCall_1_0; }
		
		//';'
		public Keyword getSemicolonKeyword_2() { return cSemicolonKeyword_2; }
		
		//rootDeclaration=SimpleClassDeclaration
		public Assignment getRootDeclarationAssignment_3() { return cRootDeclarationAssignment_3; }
		
		//SimpleClassDeclaration
		public RuleCall getRootDeclarationSimpleClassDeclarationParserRuleCall_3_0() { return cRootDeclarationSimpleClassDeclarationParserRuleCall_3_0; }
	}
	public class SimpleClassDeclarationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.SimpleClassDeclaration");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cModifiersAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cModifiersUnorderedModifiersParserRuleCall_0_0 = (RuleCall)cModifiersAssignment_0.eContents().get(0);
		private final Keyword cClassKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cMembersAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cMembersClassMemberParserRuleCall_4_0 = (RuleCall)cMembersAssignment_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//SimpleClassDeclaration:
		//    modifiers=UnorderedModifiers 'class' name=ID '{'
		//        members+=ClassMember*
		//    '}'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//modifiers=UnorderedModifiers 'class' name=ID '{'
		//    members+=ClassMember*
		//'}'
		public Group getGroup() { return cGroup; }
		
		//modifiers=UnorderedModifiers
		public Assignment getModifiersAssignment_0() { return cModifiersAssignment_0; }
		
		//UnorderedModifiers
		public RuleCall getModifiersUnorderedModifiersParserRuleCall_0_0() { return cModifiersUnorderedModifiersParserRuleCall_0_0; }
		
		//'class'
		public Keyword getClassKeyword_1() { return cClassKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3() { return cLeftCurlyBracketKeyword_3; }
		
		//members+=ClassMember*
		public Assignment getMembersAssignment_4() { return cMembersAssignment_4; }
		
		//ClassMember
		public RuleCall getMembersClassMemberParserRuleCall_4_0() { return cMembersClassMemberParserRuleCall_4_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	public class ClassMemberElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.ClassMember");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cModifiersAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cModifiersUnorderedModifiersParserRuleCall_0_0 = (RuleCall)cModifiersAssignment_0.eContents().get(0);
		private final Keyword cVarKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cSemicolonKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//ClassMember:
		//    modifiers=UnorderedModifiers 'var' name=ID ';'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//modifiers=UnorderedModifiers 'var' name=ID ';'
		public Group getGroup() { return cGroup; }
		
		//modifiers=UnorderedModifiers
		public Assignment getModifiersAssignment_0() { return cModifiersAssignment_0; }
		
		//UnorderedModifiers
		public RuleCall getModifiersUnorderedModifiersParserRuleCall_0_0() { return cModifiersUnorderedModifiersParserRuleCall_0_0; }
		
		//'var'
		public Keyword getVarKeyword_1() { return cVarKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//';'
		public Keyword getSemicolonKeyword_3() { return cSemicolonKeyword_3; }
	}
	public class UnorderedModifiersElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.UnorderedModifiers");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cModifiersAction_0 = (Action)cGroup.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_1 = (UnorderedGroup)cGroup.eContents().get(1);
		private final Assignment cFinalAssignment_1_0 = (Assignment)cUnorderedGroup_1.eContents().get(0);
		private final Keyword cFinalFinalKeyword_1_0_0 = (Keyword)cFinalAssignment_1_0.eContents().get(0);
		private final Assignment cAbstractAssignment_1_1 = (Assignment)cUnorderedGroup_1.eContents().get(1);
		private final Keyword cAbstractAbstractKeyword_1_1_0 = (Keyword)cAbstractAssignment_1_1.eContents().get(0);
		private final Assignment cExternAssignment_1_2 = (Assignment)cUnorderedGroup_1.eContents().get(2);
		private final Keyword cExternExternKeyword_1_2_0 = (Keyword)cExternAssignment_1_2.eContents().get(0);
		private final Assignment cVisibilityAssignment_1_3 = (Assignment)cUnorderedGroup_1.eContents().get(3);
		private final RuleCall cVisibilityVisibilityEnumRuleCall_1_3_0 = (RuleCall)cVisibilityAssignment_1_3.eContents().get(0);
		
		//UnorderedModifiers:
		//    {Modifiers}
		//    (
		//        final?='final'?
		//        &
		//        abstract?='abstract'?
		//        &
		//        extern?='extern'?
		//        &
		//        visibility=Visibility?
		//    )
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Modifiers}
		//(
		//    final?='final'?
		//    &
		//    abstract?='abstract'?
		//    &
		//    extern?='extern'?
		//    &
		//    visibility=Visibility?
		//)
		public Group getGroup() { return cGroup; }
		
		//{Modifiers}
		public Action getModifiersAction_0() { return cModifiersAction_0; }
		
		//(
		//    final?='final'?
		//    &
		//    abstract?='abstract'?
		//    &
		//    extern?='extern'?
		//    &
		//    visibility=Visibility?
		//)
		public UnorderedGroup getUnorderedGroup_1() { return cUnorderedGroup_1; }
		
		//final?='final'?
		public Assignment getFinalAssignment_1_0() { return cFinalAssignment_1_0; }
		
		//'final'
		public Keyword getFinalFinalKeyword_1_0_0() { return cFinalFinalKeyword_1_0_0; }
		
		//abstract?='abstract'?
		public Assignment getAbstractAssignment_1_1() { return cAbstractAssignment_1_1; }
		
		//'abstract'
		public Keyword getAbstractAbstractKeyword_1_1_0() { return cAbstractAbstractKeyword_1_1_0; }
		
		//extern?='extern'?
		public Assignment getExternAssignment_1_2() { return cExternAssignment_1_2; }
		
		//'extern'
		public Keyword getExternExternKeyword_1_2_0() { return cExternExternKeyword_1_2_0; }
		
		//visibility=Visibility?
		public Assignment getVisibilityAssignment_1_3() { return cVisibilityAssignment_1_3; }
		
		//Visibility
		public RuleCall getVisibilityVisibilityEnumRuleCall_1_3_0() { return cVisibilityVisibilityEnumRuleCall_1_3_0; }
	}
	
	public class VisibilityElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Visibility");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cPUBLICEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cPUBLICPublicKeyword_0_0 = (Keyword)cPUBLICEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cPROTECTEDEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cPROTECTEDProtectedKeyword_1_0 = (Keyword)cPROTECTEDEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cPRIVATEEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cPRIVATEPrivateKeyword_2_0 = (Keyword)cPRIVATEEnumLiteralDeclaration_2.eContents().get(0);
		
		//enum Visibility:
		//    PUBLIC='public' | PROTECTED='protected' | PRIVATE='private'
		//;
		public EnumRule getRule() { return rule; }
		
		//PUBLIC='public' | PROTECTED='protected' | PRIVATE='private'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//PUBLIC='public'
		public EnumLiteralDeclaration getPUBLICEnumLiteralDeclaration_0() { return cPUBLICEnumLiteralDeclaration_0; }
		
		//'public'
		public Keyword getPUBLICPublicKeyword_0_0() { return cPUBLICPublicKeyword_0_0; }
		
		//PROTECTED='protected'
		public EnumLiteralDeclaration getPROTECTEDEnumLiteralDeclaration_1() { return cPROTECTEDEnumLiteralDeclaration_1; }
		
		//'protected'
		public Keyword getPROTECTEDProtectedKeyword_1_0() { return cPROTECTEDProtectedKeyword_1_0; }
		
		//PRIVATE='private'
		public EnumLiteralDeclaration getPRIVATEEnumLiteralDeclaration_2() { return cPRIVATEEnumLiteralDeclaration_2; }
		
		//'private'
		public Keyword getPRIVATEPrivateKeyword_2_0() { return cPRIVATEPrivateKeyword_2_0; }
	}
	
	private final ModelElements pModel;
	private final AlternativeElements pAlternative;
	private final FQNElements pFQN;
	private final RecursiveClassDeclarationElements pRecursiveClassDeclaration;
	private final VisibilityElements eVisibility;
	private final AlternativeClassModifiersElements pAlternativeClassModifiers;
	private final UnorderedElements pUnordered;
	private final SimpleClassDeclarationElements pSimpleClassDeclaration;
	private final ClassMemberElements pClassMember;
	private final UnorderedModifiersElements pUnorderedModifiers;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug360834TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pAlternative = new AlternativeElements();
		this.pFQN = new FQNElements();
		this.pRecursiveClassDeclaration = new RecursiveClassDeclarationElements();
		this.eVisibility = new VisibilityElements();
		this.pAlternativeClassModifiers = new AlternativeClassModifiersElements();
		this.pUnordered = new UnorderedElements();
		this.pSimpleClassDeclaration = new SimpleClassDeclarationElements();
		this.pClassMember = new ClassMemberElements();
		this.pUnorderedModifiers = new UnorderedModifiersElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage".equals(grammar.getName())) {
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
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Model :
	//      'alternative' element=Alternative
	//    | 'unordered' element=Unordered
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Alternative:
	//    'package' name = FQN ';'
	//    rootDeclaration=RecursiveClassDeclaration
	//;
	public AlternativeElements getAlternativeAccess() {
		return pAlternative;
	}
	
	public ParserRule getAlternativeRule() {
		return getAlternativeAccess().getRule();
	}
	
	//FQN:
	//    ID ('.' ID)*
	//;
	public FQNElements getFQNAccess() {
		return pFQN;
	}
	
	public ParserRule getFQNRule() {
		return getFQNAccess().getRule();
	}
	
	//RecursiveClassDeclaration:
	//    modifiers=AlternativeClassModifiers 'class' name=ID '{'
	//        members+=RecursiveClassDeclaration*
	//    '}'
	//;
	public RecursiveClassDeclarationElements getRecursiveClassDeclarationAccess() {
		return pRecursiveClassDeclaration;
	}
	
	public ParserRule getRecursiveClassDeclarationRule() {
		return getRecursiveClassDeclarationAccess().getRule();
	}
	
	//enum Visibility:
	//    PUBLIC='public' | PROTECTED='protected' | PRIVATE='private'
	//;
	public VisibilityElements getVisibilityAccess() {
		return eVisibility;
	}
	
	public EnumRule getVisibilityRule() {
		return getVisibilityAccess().getRule();
	}
	
	//AlternativeClassModifiers returns Modifiers:
	//    {Modifiers}
	//    (
	//        final?='final'
	//        |
	//        abstract?='abstract'
	//        |
	//        extern?='extern'
	//        |
	//        visibility=Visibility?
	//    )
	//;
	public AlternativeClassModifiersElements getAlternativeClassModifiersAccess() {
		return pAlternativeClassModifiers;
	}
	
	public ParserRule getAlternativeClassModifiersRule() {
		return getAlternativeClassModifiersAccess().getRule();
	}
	
	//Unordered:
	//    'package' name = FQN ';'
	//    rootDeclaration=SimpleClassDeclaration
	//;
	public UnorderedElements getUnorderedAccess() {
		return pUnordered;
	}
	
	public ParserRule getUnorderedRule() {
		return getUnorderedAccess().getRule();
	}
	
	//SimpleClassDeclaration:
	//    modifiers=UnorderedModifiers 'class' name=ID '{'
	//        members+=ClassMember*
	//    '}'
	//;
	public SimpleClassDeclarationElements getSimpleClassDeclarationAccess() {
		return pSimpleClassDeclaration;
	}
	
	public ParserRule getSimpleClassDeclarationRule() {
		return getSimpleClassDeclarationAccess().getRule();
	}
	
	//ClassMember:
	//    modifiers=UnorderedModifiers 'var' name=ID ';'
	//;
	public ClassMemberElements getClassMemberAccess() {
		return pClassMember;
	}
	
	public ParserRule getClassMemberRule() {
		return getClassMemberAccess().getRule();
	}
	
	//UnorderedModifiers:
	//    {Modifiers}
	//    (
	//        final?='final'?
	//        &
	//        abstract?='abstract'?
	//        &
	//        extern?='extern'?
	//        &
	//        visibility=Visibility?
	//    )
	//;
	public UnorderedModifiersElements getUnorderedModifiersAccess() {
		return pUnorderedModifiers;
	}
	
	public ParserRule getUnorderedModifiersRule() {
		return getUnorderedModifiersAccess().getRule();
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS         : (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}
