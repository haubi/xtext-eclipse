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
public class DatatypeRuleTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.Model");
		private final RuleCall cTypesParserRuleCall = (RuleCall)rule.eContents().get(1);
		
		//Model : Types;
		@Override public ParserRule getRule() { return rule; }
		
		//Types
		public RuleCall getTypesParserRuleCall() { return cTypesParserRuleCall; }
	}
	public class TypesElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.Types");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cTypesAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cTypesKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cTypesAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cTypesTypeParserRuleCall_2_0 = (RuleCall)cTypesAssignment_2.eContents().get(0);
		
		//Types:
		//    {Types}
		//  'Types'
		//  (types+=Type)*;
		@Override public ParserRule getRule() { return rule; }
		
		//  {Types}
		//'Types'
		//(types+=Type)*
		public Group getGroup() { return cGroup; }
		
		//{Types}
		public Action getTypesAction_0() { return cTypesAction_0; }
		
		//'Types'
		public Keyword getTypesKeyword_1() { return cTypesKeyword_1; }
		
		//(types+=Type)*
		public Assignment getTypesAssignment_2() { return cTypesAssignment_2; }
		
		//Type
		public RuleCall getTypesTypeParserRuleCall_2_0() { return cTypesTypeParserRuleCall_2_0; }
	}
	public class TypeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.Type");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cSimpleTypeParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cCompositeTypeParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Type:
		//  SimpleType | CompositeType;
		@Override public ParserRule getRule() { return rule; }
		
		//SimpleType | CompositeType
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//SimpleType
		public RuleCall getSimpleTypeParserRuleCall_0() { return cSimpleTypeParserRuleCall_0; }
		
		//CompositeType
		public RuleCall getCompositeTypeParserRuleCall_1() { return cCompositeTypeParserRuleCall_1; }
	}
	public class SimpleTypeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.SimpleType");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cTypeKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//SimpleType:
		//        'Type' name=ID ';';
		@Override public ParserRule getRule() { return rule; }
		
		//'Type' name=ID ';'
		public Group getGroup() { return cGroup; }
		
		//'Type'
		public Keyword getTypeKeyword_0() { return cTypeKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//';'
		public Keyword getSemicolonKeyword_2() { return cSemicolonKeyword_2; }
	}
	public class CompositeTypeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.CompositeType");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cCompositeKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cBaseKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cBaseTypeAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cBaseTypeCompositeTypeEntryParserRuleCall_3_0 = (RuleCall)cBaseTypeAssignment_3.eContents().get(0);
		private final Keyword cSemicolonKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//CompositeType:
		//        'Composite' name=ID
		//        'base' baseType=CompositeTypeEntry ';';
		@Override public ParserRule getRule() { return rule; }
		
		//'Composite' name=ID
		//'base' baseType=CompositeTypeEntry ';'
		public Group getGroup() { return cGroup; }
		
		//'Composite'
		public Keyword getCompositeKeyword_0() { return cCompositeKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//'base'
		public Keyword getBaseKeyword_2() { return cBaseKeyword_2; }
		
		//baseType=CompositeTypeEntry
		public Assignment getBaseTypeAssignment_3() { return cBaseTypeAssignment_3; }
		
		//CompositeTypeEntry
		public RuleCall getBaseTypeCompositeTypeEntryParserRuleCall_3_0() { return cBaseTypeCompositeTypeEntryParserRuleCall_3_0; }
		
		//';'
		public Keyword getSemicolonKeyword_4() { return cSemicolonKeyword_4; }
	}
	public class CompositeTypeEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.CompositeTypeEntry");
		private final Assignment cDataTypeAssignment = (Assignment)rule.eContents().get(1);
		private final CrossReference cDataTypeTypeCrossReference_0 = (CrossReference)cDataTypeAssignment.eContents().get(0);
		private final RuleCall cDataTypeTypeTypeIdParserRuleCall_0_1 = (RuleCall)cDataTypeTypeCrossReference_0.eContents().get(1);
		
		//CompositeTypeEntry:
		//        dataType=[Type|TypeId];
		@Override public ParserRule getRule() { return rule; }
		
		//dataType=[Type|TypeId]
		public Assignment getDataTypeAssignment() { return cDataTypeAssignment; }
		
		//[Type|TypeId]
		public CrossReference getDataTypeTypeCrossReference_0() { return cDataTypeTypeCrossReference_0; }
		
		//TypeId
		public RuleCall getDataTypeTypeTypeIdParserRuleCall_0_1() { return cDataTypeTypeTypeIdParserRuleCall_0_1; }
	}
	public class TypeIdElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.TypeId");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cLessThanSignKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cTypeIdParserRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		private final Group cGroup_1_2 = (Group)cGroup_1.eContents().get(2);
		private final Keyword cCommaKeyword_1_2_0 = (Keyword)cGroup_1_2.eContents().get(0);
		private final RuleCall cTypeIdParserRuleCall_1_2_1 = (RuleCall)cGroup_1_2.eContents().get(1);
		private final Keyword cGreaterThanSignKeyword_1_3 = (Keyword)cGroup_1.eContents().get(3);
		
		//TypeId: ID ('<' TypeId (',' TypeId)* '>')?;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('<' TypeId (',' TypeId)* '>')?
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('<' TypeId (',' TypeId)* '>')?
		public Group getGroup_1() { return cGroup_1; }
		
		//'<'
		public Keyword getLessThanSignKeyword_1_0() { return cLessThanSignKeyword_1_0; }
		
		//TypeId
		public RuleCall getTypeIdParserRuleCall_1_1() { return cTypeIdParserRuleCall_1_1; }
		
		//(',' TypeId)*
		public Group getGroup_1_2() { return cGroup_1_2; }
		
		//','
		public Keyword getCommaKeyword_1_2_0() { return cCommaKeyword_1_2_0; }
		
		//TypeId
		public RuleCall getTypeIdParserRuleCall_1_2_1() { return cTypeIdParserRuleCall_1_2_1; }
		
		//'>'
		public Keyword getGreaterThanSignKeyword_1_3() { return cGreaterThanSignKeyword_1_3; }
	}
	
	
	private final ModelElements pModel;
	private final TypesElements pTypes;
	private final TypeElements pType;
	private final SimpleTypeElements pSimpleType;
	private final CompositeTypeElements pCompositeType;
	private final CompositeTypeEntryElements pCompositeTypeEntry;
	private final TypeIdElements pTypeId;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public DatatypeRuleTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pTypes = new TypesElements();
		this.pType = new TypeElements();
		this.pSimpleType = new SimpleTypeElements();
		this.pCompositeType = new CompositeTypeElements();
		this.pCompositeTypeEntry = new CompositeTypeEntryElements();
		this.pTypeId = new TypeIdElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage".equals(grammar.getName())) {
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

	
	//Model : Types;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Types:
	//    {Types}
	//  'Types'
	//  (types+=Type)*;
	public TypesElements getTypesAccess() {
		return pTypes;
	}
	
	public ParserRule getTypesRule() {
		return getTypesAccess().getRule();
	}
	
	//Type:
	//  SimpleType | CompositeType;
	public TypeElements getTypeAccess() {
		return pType;
	}
	
	public ParserRule getTypeRule() {
		return getTypeAccess().getRule();
	}
	
	//SimpleType:
	//        'Type' name=ID ';';
	public SimpleTypeElements getSimpleTypeAccess() {
		return pSimpleType;
	}
	
	public ParserRule getSimpleTypeRule() {
		return getSimpleTypeAccess().getRule();
	}
	
	//CompositeType:
	//        'Composite' name=ID
	//        'base' baseType=CompositeTypeEntry ';';
	public CompositeTypeElements getCompositeTypeAccess() {
		return pCompositeType;
	}
	
	public ParserRule getCompositeTypeRule() {
		return getCompositeTypeAccess().getRule();
	}
	
	//CompositeTypeEntry:
	//        dataType=[Type|TypeId];
	public CompositeTypeEntryElements getCompositeTypeEntryAccess() {
		return pCompositeTypeEntry;
	}
	
	public ParserRule getCompositeTypeEntryRule() {
		return getCompositeTypeEntryAccess().getRule();
	}
	
	//TypeId: ID ('<' TypeId (',' TypeId)* '>')?;
	public TypeIdElements getTypeIdAccess() {
		return pTypeId;
	}
	
	public ParserRule getTypeIdRule() {
		return getTypeIdAccess().getRule();
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
