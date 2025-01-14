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
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug307519TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.Model");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Assignment cE1Assignment_0 = (Assignment)cAlternatives.eContents().get(0);
		private final RuleCall cE1Elem1ParserRuleCall_0_0 = (RuleCall)cE1Assignment_0.eContents().get(0);
		private final Assignment cE2Assignment_1 = (Assignment)cAlternatives.eContents().get(1);
		private final RuleCall cE2Elem2ParserRuleCall_1_0 = (RuleCall)cE2Assignment_1.eContents().get(0);
		
		//Model :
		//    ((e1 += Elem1)
		//    | (e2 += Elem2))+;
		@Override public ParserRule getRule() { return rule; }
		
		//((e1 += Elem1)
		//| (e2 += Elem2))+
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//(e1 += Elem1)
		public Assignment getE1Assignment_0() { return cE1Assignment_0; }
		
		//Elem1
		public RuleCall getE1Elem1ParserRuleCall_0_0() { return cE1Elem1ParserRuleCall_0_0; }
		
		//(e2 += Elem2)
		public Assignment getE2Assignment_1() { return cE2Assignment_1; }
		
		//Elem2
		public RuleCall getE2Elem2ParserRuleCall_1_0() { return cE2Elem2ParserRuleCall_1_0; }
	}
	public class Elem1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.Elem1");
		private final Assignment cValueAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cValueEnumTEnumRuleCall_0 = (RuleCall)cValueAssignment.eContents().get(0);
		
		//Elem1 :
		//    value = EnumT;
		@Override public ParserRule getRule() { return rule; }
		
		//value = EnumT
		public Assignment getValueAssignment() { return cValueAssignment; }
		
		//EnumT
		public RuleCall getValueEnumTEnumRuleCall_0() { return cValueEnumTEnumRuleCall_0; }
	}
	public class Elem2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.Elem2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cValueAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cValueEnumTEnumRuleCall_0_0 = (RuleCall)cValueAssignment_0.eContents().get(0);
		private final Keyword cFooKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cPercentSignKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Keyword cDollarSignKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Elem2 :
		//    value = EnumT "foo" "%" "$";
		@Override public ParserRule getRule() { return rule; }
		
		//value = EnumT "foo" "%" "$"
		public Group getGroup() { return cGroup; }
		
		//value = EnumT
		public Assignment getValueAssignment_0() { return cValueAssignment_0; }
		
		//EnumT
		public RuleCall getValueEnumTEnumRuleCall_0_0() { return cValueEnumTEnumRuleCall_0_0; }
		
		//"foo"
		public Keyword getFooKeyword_1() { return cFooKeyword_1; }
		
		//"%"
		public Keyword getPercentSignKeyword_2() { return cPercentSignKeyword_2; }
		
		//"$"
		public Keyword getDollarSignKeyword_3() { return cDollarSignKeyword_3; }
	}
	
	public class EnumTElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.EnumT");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cT1EnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cT1T1Keyword_0_0 = (Keyword)cT1EnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cT2EnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cT2T2Keyword_1_0 = (Keyword)cT2EnumLiteralDeclaration_1.eContents().get(0);
		
		//enum EnumT :
		//    T1 | T2;
		public EnumRule getRule() { return rule; }
		
		//T1 | T2
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//T1
		public EnumLiteralDeclaration getT1EnumLiteralDeclaration_0() { return cT1EnumLiteralDeclaration_0; }
		
		public Keyword getT1T1Keyword_0_0() { return cT1T1Keyword_0_0; }
		
		//T2
		public EnumLiteralDeclaration getT2EnumLiteralDeclaration_1() { return cT2EnumLiteralDeclaration_1; }
		
		public Keyword getT2T2Keyword_1_0() { return cT2T2Keyword_1_0; }
	}
	
	private final ModelElements pModel;
	private final EnumTElements eEnumT;
	private final Elem1Elements pElem1;
	private final Elem2Elements pElem2;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug307519TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.eEnumT = new EnumTElements();
		this.pElem1 = new Elem1Elements();
		this.pElem2 = new Elem2Elements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage".equals(grammar.getName())) {
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
	//    ((e1 += Elem1)
	//    | (e2 += Elem2))+;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//enum EnumT :
	//    T1 | T2;
	public EnumTElements getEnumTAccess() {
		return eEnumT;
	}
	
	public EnumRule getEnumTRule() {
		return getEnumTAccess().getRule();
	}
	
	//Elem1 :
	//    value = EnumT;
	public Elem1Elements getElem1Access() {
		return pElem1;
	}
	
	public ParserRule getElem1Rule() {
		return getElem1Access().getRule();
	}
	
	//Elem2 :
	//    value = EnumT "foo" "%" "$";
	public Elem2Elements getElem2Access() {
		return pElem2;
	}
	
	public ParserRule getElem2Rule() {
		return getElem2Access().getRule();
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
