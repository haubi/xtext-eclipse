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
import org.eclipse.xtext.Assignment;
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
public class Bug381381TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguage.Model");
		private final Assignment cStmtAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cStmtCopyFieldNameToVariableStmtParserRuleCall_0 = (RuleCall)cStmtAssignment.eContents().get(0);
		
		//Model:
		//    stmt=CopyFieldNameToVariableStmt;
		@Override public ParserRule getRule() { return rule; }
		
		//stmt=CopyFieldNameToVariableStmt
		public Assignment getStmtAssignment() { return cStmtAssignment; }
		
		//CopyFieldNameToVariableStmt
		public RuleCall getStmtCopyFieldNameToVariableStmtParserRuleCall_0() { return cStmtCopyFieldNameToVariableStmtParserRuleCall_0; }
	}
	public class CopyFieldNameToVariableStmtElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguage.CopyFieldNameToVariableStmt");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cFIELDNAMETOVARIABLEKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_1 = (UnorderedGroup)cGroup.eContents().get(1);
		private final Group cGroup_1_0 = (Group)cUnorderedGroup_1.eContents().get(0);
		private final Keyword cCommaKeyword_1_0_0 = (Keyword)cGroup_1_0.eContents().get(0);
		private final Keyword cSCREENKeyword_1_0_1 = (Keyword)cGroup_1_0.eContents().get(1);
		private final Keyword cEqualsSignKeyword_1_0_2 = (Keyword)cGroup_1_0.eContents().get(2);
		private final Keyword cLeftParenthesisKeyword_1_0_3 = (Keyword)cGroup_1_0.eContents().get(3);
		private final Assignment cLineAssignment_1_0_4 = (Assignment)cGroup_1_0.eContents().get(4);
		private final RuleCall cLineINTTerminalRuleCall_1_0_4_0 = (RuleCall)cLineAssignment_1_0_4.eContents().get(0);
		private final Keyword cCommaKeyword_1_0_5 = (Keyword)cGroup_1_0.eContents().get(5);
		private final Assignment cColumnAssignment_1_0_6 = (Assignment)cGroup_1_0.eContents().get(6);
		private final RuleCall cColumnINTTerminalRuleCall_1_0_6_0 = (RuleCall)cColumnAssignment_1_0_6.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_1_0_7 = (Keyword)cGroup_1_0.eContents().get(7);
		private final Group cGroup_1_1 = (Group)cUnorderedGroup_1.eContents().get(1);
		private final Keyword cCommaKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Keyword cVARKeyword_1_1_1 = (Keyword)cGroup_1_1.eContents().get(1);
		private final Keyword cEqualsSignKeyword_1_1_2 = (Keyword)cGroup_1_1.eContents().get(2);
		private final Assignment cNameAssignment_1_1_3 = (Assignment)cGroup_1_1.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_1_1_3_0 = (RuleCall)cNameAssignment_1_1_3.eContents().get(0);
		private final Group cGroup_1_2 = (Group)cUnorderedGroup_1.eContents().get(2);
		private final Keyword cCommaKeyword_1_2_0 = (Keyword)cGroup_1_2.eContents().get(0);
		private final Keyword cTYPEKeyword_1_2_1 = (Keyword)cGroup_1_2.eContents().get(1);
		private final Keyword cEqualsSignKeyword_1_2_2 = (Keyword)cGroup_1_2.eContents().get(2);
		private final Keyword cREPLACEKeyword_1_2_3 = (Keyword)cGroup_1_2.eContents().get(3);
		
		//CopyFieldNameToVariableStmt:
		//  'FIELD-NAME-TO-VARIABLE' ((',' 'SCREEN' '=' '(' line=INT ',' column=INT ')') &
		//                            (',' 'VAR' '=' name=ID) &
		//                            (',' 'TYPE' '=' 'REPLACE')?);
		@Override public ParserRule getRule() { return rule; }
		
		//'FIELD-NAME-TO-VARIABLE' ((',' 'SCREEN' '=' '(' line=INT ',' column=INT ')') &
		//                          (',' 'VAR' '=' name=ID) &
		//                          (',' 'TYPE' '=' 'REPLACE')?)
		public Group getGroup() { return cGroup; }
		
		//'FIELD-NAME-TO-VARIABLE'
		public Keyword getFIELDNAMETOVARIABLEKeyword_0() { return cFIELDNAMETOVARIABLEKeyword_0; }
		
		//((',' 'SCREEN' '=' '(' line=INT ',' column=INT ')') &
		//                           (',' 'VAR' '=' name=ID) &
		//                           (',' 'TYPE' '=' 'REPLACE')?)
		public UnorderedGroup getUnorderedGroup_1() { return cUnorderedGroup_1; }
		
		//(',' 'SCREEN' '=' '(' line=INT ',' column=INT ')')
		public Group getGroup_1_0() { return cGroup_1_0; }
		
		//','
		public Keyword getCommaKeyword_1_0_0() { return cCommaKeyword_1_0_0; }
		
		//'SCREEN'
		public Keyword getSCREENKeyword_1_0_1() { return cSCREENKeyword_1_0_1; }
		
		//'='
		public Keyword getEqualsSignKeyword_1_0_2() { return cEqualsSignKeyword_1_0_2; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1_0_3() { return cLeftParenthesisKeyword_1_0_3; }
		
		//line=INT
		public Assignment getLineAssignment_1_0_4() { return cLineAssignment_1_0_4; }
		
		//INT
		public RuleCall getLineINTTerminalRuleCall_1_0_4_0() { return cLineINTTerminalRuleCall_1_0_4_0; }
		
		//','
		public Keyword getCommaKeyword_1_0_5() { return cCommaKeyword_1_0_5; }
		
		//column=INT
		public Assignment getColumnAssignment_1_0_6() { return cColumnAssignment_1_0_6; }
		
		//INT
		public RuleCall getColumnINTTerminalRuleCall_1_0_6_0() { return cColumnINTTerminalRuleCall_1_0_6_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_1_0_7() { return cRightParenthesisKeyword_1_0_7; }
		
		//(',' 'VAR' '=' name=ID)
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//','
		public Keyword getCommaKeyword_1_1_0() { return cCommaKeyword_1_1_0; }
		
		//'VAR'
		public Keyword getVARKeyword_1_1_1() { return cVARKeyword_1_1_1; }
		
		//'='
		public Keyword getEqualsSignKeyword_1_1_2() { return cEqualsSignKeyword_1_1_2; }
		
		//name=ID
		public Assignment getNameAssignment_1_1_3() { return cNameAssignment_1_1_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_1_3_0() { return cNameIDTerminalRuleCall_1_1_3_0; }
		
		//(',' 'TYPE' '=' 'REPLACE')?
		public Group getGroup_1_2() { return cGroup_1_2; }
		
		//','
		public Keyword getCommaKeyword_1_2_0() { return cCommaKeyword_1_2_0; }
		
		//'TYPE'
		public Keyword getTYPEKeyword_1_2_1() { return cTYPEKeyword_1_2_1; }
		
		//'='
		public Keyword getEqualsSignKeyword_1_2_2() { return cEqualsSignKeyword_1_2_2; }
		
		//'REPLACE'
		public Keyword getREPLACEKeyword_1_2_3() { return cREPLACEKeyword_1_2_3; }
	}
	
	
	private final ModelElements pModel;
	private final CopyFieldNameToVariableStmtElements pCopyFieldNameToVariableStmt;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug381381TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pCopyFieldNameToVariableStmt = new CopyFieldNameToVariableStmtElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguage".equals(grammar.getName())) {
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

	
	//Model:
	//    stmt=CopyFieldNameToVariableStmt;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//CopyFieldNameToVariableStmt:
	//  'FIELD-NAME-TO-VARIABLE' ((',' 'SCREEN' '=' '(' line=INT ',' column=INT ')') &
	//                            (',' 'VAR' '=' name=ID) &
	//                            (',' 'TYPE' '=' 'REPLACE')?);
	public CopyFieldNameToVariableStmtElements getCopyFieldNameToVariableStmtAccess() {
		return pCopyFieldNameToVariableStmt;
	}
	
	public ParserRule getCopyFieldNameToVariableStmtRule() {
		return getCopyFieldNameToVariableStmtAccess().getRule();
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
