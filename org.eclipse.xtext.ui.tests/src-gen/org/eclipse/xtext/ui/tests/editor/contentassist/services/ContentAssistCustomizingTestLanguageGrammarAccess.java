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
public class ContentAssistCustomizingTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.Model");
		private final Assignment cTypesAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cTypesTypeParserRuleCall_0 = (RuleCall)cTypesAssignment.eContents().get(0);
		
		//Model :
		//    types+=Type*
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//types+=Type*
		public Assignment getTypesAssignment() { return cTypesAssignment; }
		
		//Type
		public RuleCall getTypesTypeParserRuleCall_0() { return cTypesTypeParserRuleCall_0; }
	}
	public class TypeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.Type");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Alternatives cAlternatives_0 = (Alternatives)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_0_0 = (Assignment)cAlternatives_0.eContents().get(0);
		private final RuleCall cNameFQNParserRuleCall_0_0_0 = (RuleCall)cNameAssignment_0_0.eContents().get(0);
		private final Assignment cNameAssignment_0_1 = (Assignment)cAlternatives_0.eContents().get(1);
		private final Keyword cNameFQNKeyword_0_1_0 = (Keyword)cNameAssignment_0_1.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cExtendsKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cSuperTypeAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cSuperTypeTypeRefParserRuleCall_1_1_0 = (RuleCall)cSuperTypeAssignment_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Type:
		//    (name=FQN|name='FQN') ('extends' superType=TypeRef)? ';'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(name=FQN|name='FQN') ('extends' superType=TypeRef)? ';'
		public Group getGroup() { return cGroup; }
		
		//(name=FQN|name='FQN')
		public Alternatives getAlternatives_0() { return cAlternatives_0; }
		
		//name=FQN
		public Assignment getNameAssignment_0_0() { return cNameAssignment_0_0; }
		
		//FQN
		public RuleCall getNameFQNParserRuleCall_0_0_0() { return cNameFQNParserRuleCall_0_0_0; }
		
		//name='FQN'
		public Assignment getNameAssignment_0_1() { return cNameAssignment_0_1; }
		
		//'FQN'
		public Keyword getNameFQNKeyword_0_1_0() { return cNameFQNKeyword_0_1_0; }
		
		//('extends' superType=TypeRef)?
		public Group getGroup_1() { return cGroup_1; }
		
		//'extends'
		public Keyword getExtendsKeyword_1_0() { return cExtendsKeyword_1_0; }
		
		//superType=TypeRef
		public Assignment getSuperTypeAssignment_1_1() { return cSuperTypeAssignment_1_1; }
		
		//TypeRef
		public RuleCall getSuperTypeTypeRefParserRuleCall_1_1_0() { return cSuperTypeTypeRefParserRuleCall_1_1_0; }
		
		//';'
		public Keyword getSemicolonKeyword_2() { return cSemicolonKeyword_2; }
	}
	public class TypeRefElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.TypeRef");
		private final Assignment cTypeAssignment = (Assignment)rule.eContents().get(1);
		private final CrossReference cTypeTypeCrossReference_0 = (CrossReference)cTypeAssignment.eContents().get(0);
		private final RuleCall cTypeTypeFQNParserRuleCall_0_1 = (RuleCall)cTypeTypeCrossReference_0.eContents().get(1);
		
		//TypeRef:
		//    type=[Type|FQN]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//type=[Type|FQN]
		public Assignment getTypeAssignment() { return cTypeAssignment; }
		
		//[Type|FQN]
		public CrossReference getTypeTypeCrossReference_0() { return cTypeTypeCrossReference_0; }
		
		//FQN
		public RuleCall getTypeTypeFQNParserRuleCall_0_1() { return cTypeTypeFQNParserRuleCall_0_1; }
	}
	public class FQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.FQN");
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
	
	
	private final ModelElements pModel;
	private final TypeElements pType;
	private final TypeRefElements pTypeRef;
	private final FQNElements pFQN;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public ContentAssistCustomizingTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pType = new TypeElements();
		this.pTypeRef = new TypeRefElements();
		this.pFQN = new FQNElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage".equals(grammar.getName())) {
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
	//    types+=Type*
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Type:
	//    (name=FQN|name='FQN') ('extends' superType=TypeRef)? ';'
	//;
	public TypeElements getTypeAccess() {
		return pType;
	}
	
	public ParserRule getTypeRule() {
		return getTypeAccess().getRule();
	}
	
	//TypeRef:
	//    type=[Type|FQN]
	//;
	public TypeRefElements getTypeRefAccess() {
		return pTypeRef;
	}
	
	public ParserRule getTypeRefRule() {
		return getTypeRefAccess().getRule();
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
