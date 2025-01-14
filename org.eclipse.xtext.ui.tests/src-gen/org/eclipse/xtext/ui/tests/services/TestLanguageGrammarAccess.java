/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.services;

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
public class TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class FileElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.TestLanguage.File");
		private final Assignment cStuffAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cStuffStuffParserRuleCall_0 = (RuleCall)cStuffAssignment.eContents().get(0);
		
		//File :
		//    (stuff+=Stuff)*;
		@Override public ParserRule getRule() { return rule; }
		
		//(stuff+=Stuff)*
		public Assignment getStuffAssignment() { return cStuffAssignment; }
		
		//Stuff
		public RuleCall getStuffStuffParserRuleCall_0() { return cStuffStuffParserRuleCall_0; }
	}
	public class StuffElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.TestLanguage.Stuff");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cStuffKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cRefsKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cRefsAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final CrossReference cRefsStuffCrossReference_2_1_0 = (CrossReference)cRefsAssignment_2_1.eContents().get(0);
		private final RuleCall cRefsStuffIDTerminalRuleCall_2_1_0_1 = (RuleCall)cRefsStuffCrossReference_2_1_0.eContents().get(1);
		
		//Stuff :
		//    "stuff" name=ID ("refs" refs=[Stuff])?;
		@Override public ParserRule getRule() { return rule; }
		
		//"stuff" name=ID ("refs" refs=[Stuff])?
		public Group getGroup() { return cGroup; }
		
		//"stuff"
		public Keyword getStuffKeyword_0() { return cStuffKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//("refs" refs=[Stuff])?
		public Group getGroup_2() { return cGroup_2; }
		
		//"refs"
		public Keyword getRefsKeyword_2_0() { return cRefsKeyword_2_0; }
		
		//refs=[Stuff]
		public Assignment getRefsAssignment_2_1() { return cRefsAssignment_2_1; }
		
		//[Stuff]
		public CrossReference getRefsStuffCrossReference_2_1_0() { return cRefsStuffCrossReference_2_1_0; }
		
		//ID
		public RuleCall getRefsStuffIDTerminalRuleCall_2_1_0_1() { return cRefsStuffIDTerminalRuleCall_2_1_0_1; }
	}
	
	
	private final FileElements pFile;
	private final StuffElements pStuff;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pFile = new FileElements();
		this.pStuff = new StuffElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.TestLanguage".equals(grammar.getName())) {
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

	
	//File :
	//    (stuff+=Stuff)*;
	public FileElements getFileAccess() {
		return pFile;
	}
	
	public ParserRule getFileRule() {
		return getFileAccess().getRule();
	}
	
	//Stuff :
	//    "stuff" name=ID ("refs" refs=[Stuff])?;
	public StuffElements getStuffAccess() {
		return pStuff;
	}
	
	public ParserRule getStuffRule() {
		return getStuffAccess().getRule();
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
