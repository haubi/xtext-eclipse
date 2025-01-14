/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.refactoring.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Alternatives;
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
public class RefactoringTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class MainElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.Main");
		private final Assignment cElementsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cElementsAbstractElementParserRuleCall_0 = (RuleCall)cElementsAssignment.eContents().get(0);
		
		//Main :
		//    elements+=AbstractElement*;
		@Override public ParserRule getRule() { return rule; }
		
		//elements+=AbstractElement*
		public Assignment getElementsAssignment() { return cElementsAssignment; }
		
		//AbstractElement
		public RuleCall getElementsAbstractElementParserRuleCall_0() { return cElementsAbstractElementParserRuleCall_0; }
	}
	public class AbstractElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.AbstractElement");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cElementParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cImportParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//AbstractElement:
		//    Element | Import;
		@Override public ParserRule getRule() { return rule; }
		
		//Element | Import
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Element
		public RuleCall getElementParserRuleCall_0() { return cElementParserRuleCall_0; }
		
		//Import
		public RuleCall getImportParserRuleCall_1() { return cImportParserRuleCall_1; }
	}
	public class ImportElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.Import");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cImportKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cImportedNamespaceAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cImportedNamespaceFQNWithWCParserRuleCall_1_0 = (RuleCall)cImportedNamespaceAssignment_1.eContents().get(0);
		
		//Import:
		//    'import' importedNamespace=FQNWithWC;
		@Override public ParserRule getRule() { return rule; }
		
		//'import' importedNamespace=FQNWithWC
		public Group getGroup() { return cGroup; }
		
		//'import'
		public Keyword getImportKeyword_0() { return cImportKeyword_0; }
		
		//importedNamespace=FQNWithWC
		public Assignment getImportedNamespaceAssignment_1() { return cImportedNamespaceAssignment_1; }
		
		//FQNWithWC
		public RuleCall getImportedNamespaceFQNWithWCParserRuleCall_1_0() { return cImportedNamespaceFQNWithWCParserRuleCall_1_0; }
	}
	public class ElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.Element");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cLeftCurlyBracketKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Alternatives cAlternatives_1_1 = (Alternatives)cGroup_1.eContents().get(1);
		private final Assignment cContainedAssignment_1_1_0 = (Assignment)cAlternatives_1_1.eContents().get(0);
		private final RuleCall cContainedElementParserRuleCall_1_1_0_0 = (RuleCall)cContainedAssignment_1_1_0.eContents().get(0);
		private final Group cGroup_1_1_1 = (Group)cAlternatives_1_1.eContents().get(1);
		private final Keyword cRefKeyword_1_1_1_0 = (Keyword)cGroup_1_1_1.eContents().get(0);
		private final Assignment cReferencedAssignment_1_1_1_1 = (Assignment)cGroup_1_1_1.eContents().get(1);
		private final CrossReference cReferencedElementCrossReference_1_1_1_1_0 = (CrossReference)cReferencedAssignment_1_1_1_1.eContents().get(0);
		private final RuleCall cReferencedElementFQNParserRuleCall_1_1_1_1_0_1 = (RuleCall)cReferencedElementCrossReference_1_1_1_1_0.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_1_2 = (Keyword)cGroup_1.eContents().get(2);
		
		//Element:
		//    name=ID ('{' ( contained+=Element | 'ref' referenced+=[Element|FQN] )* '}')?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ('{' ( contained+=Element | 'ref' referenced+=[Element|FQN] )* '}')?
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//('{' ( contained+=Element | 'ref' referenced+=[Element|FQN] )* '}')?
		public Group getGroup_1() { return cGroup_1; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_1_0() { return cLeftCurlyBracketKeyword_1_0; }
		
		//( contained+=Element | 'ref' referenced+=[Element|FQN] )*
		public Alternatives getAlternatives_1_1() { return cAlternatives_1_1; }
		
		//contained+=Element
		public Assignment getContainedAssignment_1_1_0() { return cContainedAssignment_1_1_0; }
		
		//Element
		public RuleCall getContainedElementParserRuleCall_1_1_0_0() { return cContainedElementParserRuleCall_1_1_0_0; }
		
		//'ref' referenced+=[Element|FQN]
		public Group getGroup_1_1_1() { return cGroup_1_1_1; }
		
		//'ref'
		public Keyword getRefKeyword_1_1_1_0() { return cRefKeyword_1_1_1_0; }
		
		//referenced+=[Element|FQN]
		public Assignment getReferencedAssignment_1_1_1_1() { return cReferencedAssignment_1_1_1_1; }
		
		//[Element|FQN]
		public CrossReference getReferencedElementCrossReference_1_1_1_1_0() { return cReferencedElementCrossReference_1_1_1_1_0; }
		
		//FQN
		public RuleCall getReferencedElementFQNParserRuleCall_1_1_1_1_0_1() { return cReferencedElementFQNParserRuleCall_1_1_1_1_0_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_1_2() { return cRightCurlyBracketKeyword_1_2; }
	}
	public class FQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.FQN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//FQN:
		//    ID ('.' ID)*;
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
	public class FQNWithWCElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage.FQNWithWC");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cFQNParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Keyword cFullStopAsteriskKeyword_1 = (Keyword)cGroup.eContents().get(1);
		
		//FQNWithWC:
		//    FQN '.*'?;
		@Override public ParserRule getRule() { return rule; }
		
		//FQN '.*'?
		public Group getGroup() { return cGroup; }
		
		//FQN
		public RuleCall getFQNParserRuleCall_0() { return cFQNParserRuleCall_0; }
		
		//'.*'?
		public Keyword getFullStopAsteriskKeyword_1() { return cFullStopAsteriskKeyword_1; }
	}
	
	
	private final MainElements pMain;
	private final AbstractElementElements pAbstractElement;
	private final ImportElements pImport;
	private final ElementElements pElement;
	private final FQNElements pFQN;
	private final FQNWithWCElements pFQNWithWC;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public RefactoringTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pMain = new MainElements();
		this.pAbstractElement = new AbstractElementElements();
		this.pImport = new ImportElements();
		this.pElement = new ElementElements();
		this.pFQN = new FQNElements();
		this.pFQNWithWC = new FQNWithWCElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage".equals(grammar.getName())) {
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
	//    elements+=AbstractElement*;
	public MainElements getMainAccess() {
		return pMain;
	}
	
	public ParserRule getMainRule() {
		return getMainAccess().getRule();
	}
	
	//AbstractElement:
	//    Element | Import;
	public AbstractElementElements getAbstractElementAccess() {
		return pAbstractElement;
	}
	
	public ParserRule getAbstractElementRule() {
		return getAbstractElementAccess().getRule();
	}
	
	//Import:
	//    'import' importedNamespace=FQNWithWC;
	public ImportElements getImportAccess() {
		return pImport;
	}
	
	public ParserRule getImportRule() {
		return getImportAccess().getRule();
	}
	
	//Element:
	//    name=ID ('{' ( contained+=Element | 'ref' referenced+=[Element|FQN] )* '}')?
	//;
	public ElementElements getElementAccess() {
		return pElement;
	}
	
	public ParserRule getElementRule() {
		return getElementAccess().getRule();
	}
	
	//FQN:
	//    ID ('.' ID)*;
	public FQNElements getFQNAccess() {
		return pFQN;
	}
	
	public ParserRule getFQNRule() {
		return getFQNAccess().getRule();
	}
	
	//FQNWithWC:
	//    FQN '.*'?;
	public FQNWithWCElements getFQNWithWCAccess() {
		return pFQNWithWC;
	}
	
	public ParserRule getFQNWithWCRule() {
		return getFQNWithWCAccess().getRule();
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
