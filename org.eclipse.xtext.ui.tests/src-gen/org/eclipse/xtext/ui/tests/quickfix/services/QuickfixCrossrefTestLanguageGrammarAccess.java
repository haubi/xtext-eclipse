/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.quickfix.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
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
public class QuickfixCrossrefTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class MainElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.quickfix.QuickfixCrossrefTestLanguage.Main");
		private final Assignment cElementsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cElementsElementParserRuleCall_0 = (RuleCall)cElementsAssignment.eContents().get(0);
		
		//Main :
		//    elements+=Element*;
		@Override public ParserRule getRule() { return rule; }
		
		//elements+=Element*
		public Assignment getElementsAssignment() { return cElementsAssignment; }
		
		//Element
		public RuleCall getElementsElementParserRuleCall_0() { return cElementsElementParserRuleCall_0; }
	}
	public class ElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.quickfix.QuickfixCrossrefTestLanguage.Element");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cDocAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cDocSTRINGTerminalRuleCall_0_0 = (RuleCall)cDocAssignment_0.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cContainedAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cContainedElementParserRuleCall_3_0 = (RuleCall)cContainedAssignment_3.eContents().get(0);
		private final Group cGroup_4 = (Group)cGroup.eContents().get(4);
		private final Keyword cRefKeyword_4_0 = (Keyword)cGroup_4.eContents().get(0);
		private final Assignment cReferencedAssignment_4_1 = (Assignment)cGroup_4.eContents().get(1);
		private final CrossReference cReferencedElementCrossReference_4_1_0 = (CrossReference)cReferencedAssignment_4_1.eContents().get(0);
		private final RuleCall cReferencedElementIDTerminalRuleCall_4_1_0_1 = (RuleCall)cReferencedElementCrossReference_4_1_0.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Element:
		//    (doc=STRING)?
		//    name=ID '{' contained+=Element* ('ref' referenced+=[Element])* '}'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(doc=STRING)?
		//name=ID '{' contained+=Element* ('ref' referenced+=[Element])* '}'
		public Group getGroup() { return cGroup; }
		
		//(doc=STRING)?
		public Assignment getDocAssignment_0() { return cDocAssignment_0; }
		
		//STRING
		public RuleCall getDocSTRINGTerminalRuleCall_0_0() { return cDocSTRINGTerminalRuleCall_0_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_2() { return cLeftCurlyBracketKeyword_2; }
		
		//contained+=Element*
		public Assignment getContainedAssignment_3() { return cContainedAssignment_3; }
		
		//Element
		public RuleCall getContainedElementParserRuleCall_3_0() { return cContainedElementParserRuleCall_3_0; }
		
		//('ref' referenced+=[Element])*
		public Group getGroup_4() { return cGroup_4; }
		
		//'ref'
		public Keyword getRefKeyword_4_0() { return cRefKeyword_4_0; }
		
		//referenced+=[Element]
		public Assignment getReferencedAssignment_4_1() { return cReferencedAssignment_4_1; }
		
		//[Element]
		public CrossReference getReferencedElementCrossReference_4_1_0() { return cReferencedElementCrossReference_4_1_0; }
		
		//ID
		public RuleCall getReferencedElementIDTerminalRuleCall_4_1_0_1() { return cReferencedElementIDTerminalRuleCall_4_1_0_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	
	
	private final MainElements pMain;
	private final ElementElements pElement;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public QuickfixCrossrefTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pMain = new MainElements();
		this.pElement = new ElementElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.quickfix.QuickfixCrossrefTestLanguage".equals(grammar.getName())) {
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

	
	//Main :
	//    elements+=Element*;
	public MainElements getMainAccess() {
		return pMain;
	}
	
	public ParserRule getMainRule() {
		return getMainAccess().getRule();
	}
	
	//Element:
	//    (doc=STRING)?
	//    name=ID '{' contained+=Element* ('ref' referenced+=[Element])* '}'
	//;
	public ElementElements getElementAccess() {
		return pElement;
	}
	
	public ParserRule getElementRule() {
		return getElementAccess().getRule();
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
