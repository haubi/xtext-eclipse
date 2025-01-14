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
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug286935TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class StateElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage.State");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cStateAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cIsInitialAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final Keyword cIsInitialInitKeyword_1_0_0 = (Keyword)cIsInitialAssignment_1_0.eContents().get(0);
		private final Assignment cIsFinalAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final Keyword cIsFinalFinalKeyword_1_1_0 = (Keyword)cIsFinalAssignment_1_1.eContents().get(0);
		private final Assignment cStateKindAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cStateKindStateTypeEnumRuleCall_1_2_0 = (RuleCall)cStateKindAssignment_1_2.eContents().get(0);
		private final Group cGroup_1_3 = (Group)cAlternatives_1.eContents().get(3);
		private final Assignment cIsInitialAssignment_1_3_0 = (Assignment)cGroup_1_3.eContents().get(0);
		private final Keyword cIsInitialInitKeyword_1_3_0_0 = (Keyword)cIsInitialAssignment_1_3_0.eContents().get(0);
		private final Assignment cStateKindAssignment_1_3_1 = (Assignment)cGroup_1_3.eContents().get(1);
		private final RuleCall cStateKindStateTypeEnumRuleCall_1_3_1_0 = (RuleCall)cStateKindAssignment_1_3_1.eContents().get(0);
		private final Group cGroup_1_4 = (Group)cAlternatives_1.eContents().get(4);
		private final Assignment cIsInitialAssignment_1_4_0 = (Assignment)cGroup_1_4.eContents().get(0);
		private final Keyword cIsInitialInitKeyword_1_4_0_0 = (Keyword)cIsInitialAssignment_1_4_0.eContents().get(0);
		private final Assignment cStateKindAssignment_1_4_1 = (Assignment)cGroup_1_4.eContents().get(1);
		private final RuleCall cStateKindStateTypeEnumRuleCall_1_4_1_0 = (RuleCall)cStateKindAssignment_1_4_1.eContents().get(0);
		private final Assignment cIsFinalAssignment_1_4_2 = (Assignment)cGroup_1_4.eContents().get(2);
		private final Keyword cIsFinalFinalKeyword_1_4_2_0 = (Keyword)cIsFinalAssignment_1_4_2.eContents().get(0);
		private final Keyword cStateKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cStateNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cStateNameIDTerminalRuleCall_3_0 = (RuleCall)cStateNameAssignment_3.eContents().get(0);
		private final Assignment cLabelAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cLabelSTRINGTerminalRuleCall_4_0 = (RuleCall)cLabelAssignment_4.eContents().get(0);
		
		//State:
		//    {State}
		//  (
		//    (isInitial?='init')
		//  | (isFinal?='final')
		//  | (stateKind=StateType)
		//  | (isInitial?='init' stateKind=StateType)
		//  | (isInitial?='init' stateKind=StateType isFinal?='final')
		//  )?
		//  ('state')?
		//  (stateName=ID)?
		//  (label=STRING)?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  {State}
		//(
		//  (isInitial?='init')
		//| (isFinal?='final')
		//| (stateKind=StateType)
		//| (isInitial?='init' stateKind=StateType)
		//| (isInitial?='init' stateKind=StateType isFinal?='final')
		//)?
		//('state')?
		//(stateName=ID)?
		//(label=STRING)?
		public Group getGroup() { return cGroup; }
		
		//{State}
		public Action getStateAction_0() { return cStateAction_0; }
		
		//(
		//  (isInitial?='init')
		//| (isFinal?='final')
		//| (stateKind=StateType)
		//| (isInitial?='init' stateKind=StateType)
		//| (isInitial?='init' stateKind=StateType isFinal?='final')
		//)?
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//(isInitial?='init')
		public Assignment getIsInitialAssignment_1_0() { return cIsInitialAssignment_1_0; }
		
		//'init'
		public Keyword getIsInitialInitKeyword_1_0_0() { return cIsInitialInitKeyword_1_0_0; }
		
		//(isFinal?='final')
		public Assignment getIsFinalAssignment_1_1() { return cIsFinalAssignment_1_1; }
		
		//'final'
		public Keyword getIsFinalFinalKeyword_1_1_0() { return cIsFinalFinalKeyword_1_1_0; }
		
		//(stateKind=StateType)
		public Assignment getStateKindAssignment_1_2() { return cStateKindAssignment_1_2; }
		
		//StateType
		public RuleCall getStateKindStateTypeEnumRuleCall_1_2_0() { return cStateKindStateTypeEnumRuleCall_1_2_0; }
		
		//(isInitial?='init' stateKind=StateType)
		public Group getGroup_1_3() { return cGroup_1_3; }
		
		//isInitial?='init'
		public Assignment getIsInitialAssignment_1_3_0() { return cIsInitialAssignment_1_3_0; }
		
		//'init'
		public Keyword getIsInitialInitKeyword_1_3_0_0() { return cIsInitialInitKeyword_1_3_0_0; }
		
		//stateKind=StateType
		public Assignment getStateKindAssignment_1_3_1() { return cStateKindAssignment_1_3_1; }
		
		//StateType
		public RuleCall getStateKindStateTypeEnumRuleCall_1_3_1_0() { return cStateKindStateTypeEnumRuleCall_1_3_1_0; }
		
		//(isInitial?='init' stateKind=StateType isFinal?='final')
		public Group getGroup_1_4() { return cGroup_1_4; }
		
		//isInitial?='init'
		public Assignment getIsInitialAssignment_1_4_0() { return cIsInitialAssignment_1_4_0; }
		
		//'init'
		public Keyword getIsInitialInitKeyword_1_4_0_0() { return cIsInitialInitKeyword_1_4_0_0; }
		
		//stateKind=StateType
		public Assignment getStateKindAssignment_1_4_1() { return cStateKindAssignment_1_4_1; }
		
		//StateType
		public RuleCall getStateKindStateTypeEnumRuleCall_1_4_1_0() { return cStateKindStateTypeEnumRuleCall_1_4_1_0; }
		
		//isFinal?='final'
		public Assignment getIsFinalAssignment_1_4_2() { return cIsFinalAssignment_1_4_2; }
		
		//'final'
		public Keyword getIsFinalFinalKeyword_1_4_2_0() { return cIsFinalFinalKeyword_1_4_2_0; }
		
		//('state')?
		public Keyword getStateKeyword_2() { return cStateKeyword_2; }
		
		//(stateName=ID)?
		public Assignment getStateNameAssignment_3() { return cStateNameAssignment_3; }
		
		//ID
		public RuleCall getStateNameIDTerminalRuleCall_3_0() { return cStateNameIDTerminalRuleCall_3_0; }
		
		//(label=STRING)?
		public Assignment getLabelAssignment_4() { return cLabelAssignment_4; }
		
		//STRING
		public RuleCall getLabelSTRINGTerminalRuleCall_4_0() { return cLabelSTRINGTerminalRuleCall_4_0; }
	}
	
	public class StateTypeElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage.StateType");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cNORMALEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cNORMALNORMALKeyword_0_0 = (Keyword)cNORMALEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cPSEUDOEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cPSEUDOCondKeyword_1_0 = (Keyword)cPSEUDOEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cREFERENCEEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cREFERENCEReferenceKeyword_2_0 = (Keyword)cREFERENCEEnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cTEXTUALEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cTEXTUALTextualKeyword_3_0 = (Keyword)cTEXTUALEnumLiteralDeclaration_3.eContents().get(0);
		
		//enum StateType:
		//  NORMAL | PSEUDO='cond' | REFERENCE='reference' | TEXTUAL='textual'
		//;
		public EnumRule getRule() { return rule; }
		
		//NORMAL | PSEUDO='cond' | REFERENCE='reference' | TEXTUAL='textual'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//NORMAL
		public EnumLiteralDeclaration getNORMALEnumLiteralDeclaration_0() { return cNORMALEnumLiteralDeclaration_0; }
		
		public Keyword getNORMALNORMALKeyword_0_0() { return cNORMALNORMALKeyword_0_0; }
		
		//PSEUDO='cond'
		public EnumLiteralDeclaration getPSEUDOEnumLiteralDeclaration_1() { return cPSEUDOEnumLiteralDeclaration_1; }
		
		//'cond'
		public Keyword getPSEUDOCondKeyword_1_0() { return cPSEUDOCondKeyword_1_0; }
		
		//REFERENCE='reference'
		public EnumLiteralDeclaration getREFERENCEEnumLiteralDeclaration_2() { return cREFERENCEEnumLiteralDeclaration_2; }
		
		//'reference'
		public Keyword getREFERENCEReferenceKeyword_2_0() { return cREFERENCEReferenceKeyword_2_0; }
		
		//TEXTUAL='textual'
		public EnumLiteralDeclaration getTEXTUALEnumLiteralDeclaration_3() { return cTEXTUALEnumLiteralDeclaration_3; }
		
		//'textual'
		public Keyword getTEXTUALTextualKeyword_3_0() { return cTEXTUALTextualKeyword_3_0; }
	}
	
	private final StateElements pState;
	private final StateTypeElements eStateType;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug286935TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pState = new StateElements();
		this.eStateType = new StateTypeElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage".equals(grammar.getName())) {
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

	
	//State:
	//    {State}
	//  (
	//    (isInitial?='init')
	//  | (isFinal?='final')
	//  | (stateKind=StateType)
	//  | (isInitial?='init' stateKind=StateType)
	//  | (isInitial?='init' stateKind=StateType isFinal?='final')
	//  )?
	//  ('state')?
	//  (stateName=ID)?
	//  (label=STRING)?
	//;
	public StateElements getStateAccess() {
		return pState;
	}
	
	public ParserRule getStateRule() {
		return getStateAccess().getRule();
	}
	
	//enum StateType:
	//  NORMAL | PSEUDO='cond' | REFERENCE='reference' | TEXTUAL='textual'
	//;
	public StateTypeElements getStateTypeAccess() {
		return eStateType;
	}
	
	public EnumRule getStateTypeRule() {
		return getStateTypeAccess().getRule();
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
