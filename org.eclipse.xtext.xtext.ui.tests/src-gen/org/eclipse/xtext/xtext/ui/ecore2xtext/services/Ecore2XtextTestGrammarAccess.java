/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.xtext.ui.ecore2xtext.services;

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
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Ecore2XtextTestGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class RootElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Root");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cRootAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cRootKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameINT0ParserRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Group cGroup_4 = (Group)cGroup.eContents().get(4);
		private final Keyword cClassesKeyword_4_0 = (Keyword)cGroup_4.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_4_1 = (Keyword)cGroup_4.eContents().get(1);
		private final Assignment cClassesAssignment_4_2 = (Assignment)cGroup_4.eContents().get(2);
		private final RuleCall cClassesAbstractParserRuleCall_4_2_0 = (RuleCall)cClassesAssignment_4_2.eContents().get(0);
		private final Group cGroup_4_3 = (Group)cGroup_4.eContents().get(3);
		private final Keyword cCommaKeyword_4_3_0 = (Keyword)cGroup_4_3.eContents().get(0);
		private final Assignment cClassesAssignment_4_3_1 = (Assignment)cGroup_4_3.eContents().get(1);
		private final RuleCall cClassesAbstractParserRuleCall_4_3_1_0 = (RuleCall)cClassesAssignment_4_3_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_4_4 = (Keyword)cGroup_4.eContents().get(4);
		private final Group cGroup_5 = (Group)cGroup.eContents().get(5);
		private final Keyword cConcrete0Keyword_5_0 = (Keyword)cGroup_5.eContents().get(0);
		private final Assignment cConcrete0Assignment_5_1 = (Assignment)cGroup_5.eContents().get(1);
		private final RuleCall cConcrete0Concrete0ParserRuleCall_5_1_0 = (RuleCall)cConcrete0Assignment_5_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_6 = (Keyword)cGroup.eContents().get(6);
		
		//Root returns Root:
		//    {Root}
		//    'Root'
		//    name=INT0
		//    '{'
		//        ('classes' '{' classes+=Abstract ( "," classes+=Abstract)* '}' )?
		//        ('concrete0' concrete0=Concrete0)?
		//    '}';
		@Override public ParserRule getRule() { return rule; }
		
		//{Root}
		//'Root'
		//name=INT0
		//'{'
		//    ('classes' '{' classes+=Abstract ( "," classes+=Abstract)* '}' )?
		//    ('concrete0' concrete0=Concrete0)?
		//'}'
		public Group getGroup() { return cGroup; }
		
		//{Root}
		public Action getRootAction_0() { return cRootAction_0; }
		
		//'Root'
		public Keyword getRootKeyword_1() { return cRootKeyword_1; }
		
		//name=INT0
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//INT0
		public RuleCall getNameINT0ParserRuleCall_2_0() { return cNameINT0ParserRuleCall_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3() { return cLeftCurlyBracketKeyword_3; }
		
		//('classes' '{' classes+=Abstract ( "," classes+=Abstract)* '}' )?
		public Group getGroup_4() { return cGroup_4; }
		
		//'classes'
		public Keyword getClassesKeyword_4_0() { return cClassesKeyword_4_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_4_1() { return cLeftCurlyBracketKeyword_4_1; }
		
		//classes+=Abstract
		public Assignment getClassesAssignment_4_2() { return cClassesAssignment_4_2; }
		
		//Abstract
		public RuleCall getClassesAbstractParserRuleCall_4_2_0() { return cClassesAbstractParserRuleCall_4_2_0; }
		
		//( "," classes+=Abstract)*
		public Group getGroup_4_3() { return cGroup_4_3; }
		
		//","
		public Keyword getCommaKeyword_4_3_0() { return cCommaKeyword_4_3_0; }
		
		//classes+=Abstract
		public Assignment getClassesAssignment_4_3_1() { return cClassesAssignment_4_3_1; }
		
		//Abstract
		public RuleCall getClassesAbstractParserRuleCall_4_3_1_0() { return cClassesAbstractParserRuleCall_4_3_1_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_4_4() { return cRightCurlyBracketKeyword_4_4; }
		
		//('concrete0' concrete0=Concrete0)?
		public Group getGroup_5() { return cGroup_5; }
		
		//'concrete0'
		public Keyword getConcrete0Keyword_5_0() { return cConcrete0Keyword_5_0; }
		
		//concrete0=Concrete0
		public Assignment getConcrete0Assignment_5_1() { return cConcrete0Assignment_5_1; }
		
		//Concrete0
		public RuleCall getConcrete0Concrete0ParserRuleCall_5_1_0() { return cConcrete0Concrete0ParserRuleCall_5_1_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_6() { return cRightCurlyBracketKeyword_6; }
	}
	public class AbstractElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Abstract");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cConcrete0_ImplParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cConcrete1_ImplParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cDiamondInheritanceParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		
		//Abstract returns Abstract:
		//    Concrete0_Impl | Concrete1_Impl | DiamondInheritance;
		@Override public ParserRule getRule() { return rule; }
		
		//Concrete0_Impl | Concrete1_Impl | DiamondInheritance
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Concrete0_Impl
		public RuleCall getConcrete0_ImplParserRuleCall_0() { return cConcrete0_ImplParserRuleCall_0; }
		
		//Concrete1_Impl
		public RuleCall getConcrete1_ImplParserRuleCall_1() { return cConcrete1_ImplParserRuleCall_1; }
		
		//DiamondInheritance
		public RuleCall getDiamondInheritanceParserRuleCall_2() { return cDiamondInheritanceParserRuleCall_2; }
	}
	public class Concrete0Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Concrete0");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cConcrete0_ImplParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cDiamondInheritanceParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Concrete0 returns Concrete0:
		//    Concrete0_Impl | DiamondInheritance;
		@Override public ParserRule getRule() { return rule; }
		
		//Concrete0_Impl | DiamondInheritance
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Concrete0_Impl
		public RuleCall getConcrete0_ImplParserRuleCall_0() { return cConcrete0_ImplParserRuleCall_0; }
		
		//DiamondInheritance
		public RuleCall getDiamondInheritanceParserRuleCall_1() { return cDiamondInheritanceParserRuleCall_1; }
	}
	public class INT0Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.INT0");
		private final Keyword cINTKeyword = (Keyword)rule.eContents().get(1);
		
		//INT0 returns INT:
		//    'INT' /* TODO: implement this rule and an appropriate IValueConverter */;
		@Override public ParserRule getRule() { return rule; }
		
		//'INT'
		public Keyword getINTKeyword() { return cINTKeyword; }
	}
	public class Concrete0_ImplElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Concrete0_Impl");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cConcrete0Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cConcrete0Keyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameEStringParserRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Concrete0_Impl returns Concrete0:
		//    {Concrete0}
		//    'Concrete0'
		//    name=EString;
		@Override public ParserRule getRule() { return rule; }
		
		//{Concrete0}
		//'Concrete0'
		//name=EString
		public Group getGroup() { return cGroup; }
		
		//{Concrete0}
		public Action getConcrete0Action_0() { return cConcrete0Action_0; }
		
		//'Concrete0'
		public Keyword getConcrete0Keyword_1() { return cConcrete0Keyword_1; }
		
		//name=EString
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//EString
		public RuleCall getNameEStringParserRuleCall_2_0() { return cNameEStringParserRuleCall_2_0; }
	}
	public class EStringElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cSTRINGTerminalRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//EString returns ecore::EString:
		//    STRING | ID;
		@Override public ParserRule getRule() { return rule; }
		
		//STRING | ID
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//STRING
		public RuleCall getSTRINGTerminalRuleCall_0() { return cSTRINGTerminalRuleCall_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1() { return cIDTerminalRuleCall_1; }
	}
	public class Concrete1_ImplElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Concrete1_Impl");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cConcrete1Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cConcrete1Keyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameEStringParserRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Concrete1_Impl returns Concrete1:
		//    {Concrete1}
		//    'Concrete1'
		//    name=EString;
		@Override public ParserRule getRule() { return rule; }
		
		//{Concrete1}
		//'Concrete1'
		//name=EString
		public Group getGroup() { return cGroup; }
		
		//{Concrete1}
		public Action getConcrete1Action_0() { return cConcrete1Action_0; }
		
		//'Concrete1'
		public Keyword getConcrete1Keyword_1() { return cConcrete1Keyword_1; }
		
		//name=EString
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//EString
		public RuleCall getNameEStringParserRuleCall_2_0() { return cNameEStringParserRuleCall_2_0; }
	}
	public class DiamondInheritanceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.DiamondInheritance");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cDiamondInheritanceAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDiamondInheritanceKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameEStringParserRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//DiamondInheritance returns DiamondInheritance:
		//    {DiamondInheritance}
		//    'DiamondInheritance'
		//    name=EString;
		@Override public ParserRule getRule() { return rule; }
		
		//{DiamondInheritance}
		//'DiamondInheritance'
		//name=EString
		public Group getGroup() { return cGroup; }
		
		//{DiamondInheritance}
		public Action getDiamondInheritanceAction_0() { return cDiamondInheritanceAction_0; }
		
		//'DiamondInheritance'
		public Keyword getDiamondInheritanceKeyword_1() { return cDiamondInheritanceKeyword_1; }
		
		//name=EString
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//EString
		public RuleCall getNameEStringParserRuleCall_2_0() { return cNameEStringParserRuleCall_2_0; }
	}
	
	
	private final RootElements pRoot;
	private final AbstractElements pAbstract;
	private final Concrete0Elements pConcrete0;
	private final INT0Elements pINT0;
	private final Concrete0_ImplElements pConcrete0_Impl;
	private final EStringElements pEString;
	private final Concrete1_ImplElements pConcrete1_Impl;
	private final DiamondInheritanceElements pDiamondInheritance;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Ecore2XtextTestGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pRoot = new RootElements();
		this.pAbstract = new AbstractElements();
		this.pConcrete0 = new Concrete0Elements();
		this.pINT0 = new INT0Elements();
		this.pConcrete0_Impl = new Concrete0_ImplElements();
		this.pEString = new EStringElements();
		this.pConcrete1_Impl = new Concrete1_ImplElements();
		this.pDiamondInheritance = new DiamondInheritanceElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest".equals(grammar.getName())) {
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

	
	//Root returns Root:
	//    {Root}
	//    'Root'
	//    name=INT0
	//    '{'
	//        ('classes' '{' classes+=Abstract ( "," classes+=Abstract)* '}' )?
	//        ('concrete0' concrete0=Concrete0)?
	//    '}';
	public RootElements getRootAccess() {
		return pRoot;
	}
	
	public ParserRule getRootRule() {
		return getRootAccess().getRule();
	}
	
	//Abstract returns Abstract:
	//    Concrete0_Impl | Concrete1_Impl | DiamondInheritance;
	public AbstractElements getAbstractAccess() {
		return pAbstract;
	}
	
	public ParserRule getAbstractRule() {
		return getAbstractAccess().getRule();
	}
	
	//Concrete0 returns Concrete0:
	//    Concrete0_Impl | DiamondInheritance;
	public Concrete0Elements getConcrete0Access() {
		return pConcrete0;
	}
	
	public ParserRule getConcrete0Rule() {
		return getConcrete0Access().getRule();
	}
	
	//INT0 returns INT:
	//    'INT' /* TODO: implement this rule and an appropriate IValueConverter */;
	public INT0Elements getINT0Access() {
		return pINT0;
	}
	
	public ParserRule getINT0Rule() {
		return getINT0Access().getRule();
	}
	
	//Concrete0_Impl returns Concrete0:
	//    {Concrete0}
	//    'Concrete0'
	//    name=EString;
	public Concrete0_ImplElements getConcrete0_ImplAccess() {
		return pConcrete0_Impl;
	}
	
	public ParserRule getConcrete0_ImplRule() {
		return getConcrete0_ImplAccess().getRule();
	}
	
	//EString returns ecore::EString:
	//    STRING | ID;
	public EStringElements getEStringAccess() {
		return pEString;
	}
	
	public ParserRule getEStringRule() {
		return getEStringAccess().getRule();
	}
	
	//Concrete1_Impl returns Concrete1:
	//    {Concrete1}
	//    'Concrete1'
	//    name=EString;
	public Concrete1_ImplElements getConcrete1_ImplAccess() {
		return pConcrete1_Impl;
	}
	
	public ParserRule getConcrete1_ImplRule() {
		return getConcrete1_ImplAccess().getRule();
	}
	
	//DiamondInheritance returns DiamondInheritance:
	//    {DiamondInheritance}
	//    'DiamondInheritance'
	//    name=EString;
	public DiamondInheritanceElements getDiamondInheritanceAccess() {
		return pDiamondInheritance;
	}
	
	public ParserRule getDiamondInheritanceRule() {
		return getDiamondInheritanceAccess().getRule();
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
