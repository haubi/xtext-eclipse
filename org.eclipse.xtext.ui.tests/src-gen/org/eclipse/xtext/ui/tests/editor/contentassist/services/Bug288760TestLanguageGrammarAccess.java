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
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug288760TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class WorkflowElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.WorkflowElement");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Assignment cNameAssignment_0_0 = (Assignment)cGroup_0.eContents().get(0);
		private final RuleCall cNameSTART_TAGTerminalRuleCall_0_0_0 = (RuleCall)cNameAssignment_0_0.eContents().get(0);
		private final Assignment cAttributesAssignment_0_1 = (Assignment)cGroup_0.eContents().get(1);
		private final RuleCall cAttributesAttributeParserRuleCall_0_1_0 = (RuleCall)cAttributesAssignment_0_1.eContents().get(0);
		private final RuleCall cEND_TAG_SHORTTerminalRuleCall_0_2 = (RuleCall)cGroup_0.eContents().get(2);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Assignment cNameAssignment_1_0 = (Assignment)cGroup_1.eContents().get(0);
		private final RuleCall cNameSTART_TAGTerminalRuleCall_1_0_0 = (RuleCall)cNameAssignment_1_0.eContents().get(0);
		private final Assignment cAttributesAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cAttributesAttributeParserRuleCall_1_1_0 = (RuleCall)cAttributesAssignment_1_1.eContents().get(0);
		private final RuleCall cGTTerminalRuleCall_1_2 = (RuleCall)cGroup_1.eContents().get(2);
		private final Assignment cChildrenAssignment_1_3 = (Assignment)cGroup_1.eContents().get(3);
		private final RuleCall cChildrenWorkflowElementParserRuleCall_1_3_0 = (RuleCall)cChildrenAssignment_1_3.eContents().get(0);
		private final Assignment cEndAssignment_1_4 = (Assignment)cGroup_1.eContents().get(4);
		private final RuleCall cEndEND_TAGTerminalRuleCall_1_4_0 = (RuleCall)cEndAssignment_1_4.eContents().get(0);
		
		//WorkflowElement:
		//      name=START_TAG (attributes+=Attribute)* END_TAG_SHORT
		//    | name=START_TAG (attributes+=Attribute)* GT
		//        (children+=WorkflowElement)*
		//      end=END_TAG
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  name=START_TAG (attributes+=Attribute)* END_TAG_SHORT
		//| name=START_TAG (attributes+=Attribute)* GT
		//    (children+=WorkflowElement)*
		//  end=END_TAG
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//name=START_TAG (attributes+=Attribute)* END_TAG_SHORT
		public Group getGroup_0() { return cGroup_0; }
		
		//name=START_TAG
		public Assignment getNameAssignment_0_0() { return cNameAssignment_0_0; }
		
		//START_TAG
		public RuleCall getNameSTART_TAGTerminalRuleCall_0_0_0() { return cNameSTART_TAGTerminalRuleCall_0_0_0; }
		
		//(attributes+=Attribute)*
		public Assignment getAttributesAssignment_0_1() { return cAttributesAssignment_0_1; }
		
		//Attribute
		public RuleCall getAttributesAttributeParserRuleCall_0_1_0() { return cAttributesAttributeParserRuleCall_0_1_0; }
		
		//END_TAG_SHORT
		public RuleCall getEND_TAG_SHORTTerminalRuleCall_0_2() { return cEND_TAG_SHORTTerminalRuleCall_0_2; }
		
		//name=START_TAG (attributes+=Attribute)* GT
		//       (children+=WorkflowElement)*
		//     end=END_TAG
		public Group getGroup_1() { return cGroup_1; }
		
		//name=START_TAG
		public Assignment getNameAssignment_1_0() { return cNameAssignment_1_0; }
		
		//START_TAG
		public RuleCall getNameSTART_TAGTerminalRuleCall_1_0_0() { return cNameSTART_TAGTerminalRuleCall_1_0_0; }
		
		//(attributes+=Attribute)*
		public Assignment getAttributesAssignment_1_1() { return cAttributesAssignment_1_1; }
		
		//Attribute
		public RuleCall getAttributesAttributeParserRuleCall_1_1_0() { return cAttributesAttributeParserRuleCall_1_1_0; }
		
		//GT
		public RuleCall getGTTerminalRuleCall_1_2() { return cGTTerminalRuleCall_1_2; }
		
		//(children+=WorkflowElement)*
		public Assignment getChildrenAssignment_1_3() { return cChildrenAssignment_1_3; }
		
		//WorkflowElement
		public RuleCall getChildrenWorkflowElementParserRuleCall_1_3_0() { return cChildrenWorkflowElementParserRuleCall_1_3_0; }
		
		//end=END_TAG
		public Assignment getEndAssignment_1_4() { return cEndAssignment_1_4; }
		
		//END_TAG
		public RuleCall getEndEND_TAGTerminalRuleCall_1_4_0() { return cEndEND_TAGTerminalRuleCall_1_4_0; }
	}
	public class AttributeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.Attribute");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final RuleCall cEQTerminalRuleCall_1 = (RuleCall)cGroup.eContents().get(1);
		private final Assignment cValueAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cValueSTRINGTerminalRuleCall_2_0 = (RuleCall)cValueAssignment_2.eContents().get(0);
		
		//Attribute:
		//    name=ID EQ value=STRING
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID EQ value=STRING
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//EQ
		public RuleCall getEQTerminalRuleCall_1() { return cEQTerminalRuleCall_1; }
		
		//value=STRING
		public Assignment getValueAssignment_2() { return cValueAssignment_2; }
		
		//STRING
		public RuleCall getValueSTRINGTerminalRuleCall_2_0() { return cValueSTRINGTerminalRuleCall_2_0; }
	}
	
	
	private final WorkflowElementElements pWorkflowElement;
	private final AttributeElements pAttribute;
	private final TerminalRule tML_COMMENT;
	private final TerminalRule tSTART_TAG;
	private final TerminalRule tLT;
	private final TerminalRule tGT;
	private final TerminalRule tEQ;
	private final TerminalRule tEND_TAG_SHORT;
	private final TerminalRule tEND_TAG_START;
	private final TerminalRule tEND_TAG;
	private final TerminalRule tID;
	private final TerminalRule tINT;
	private final TerminalRule tSTRING;
	private final TerminalRule tWS;
	private final TerminalRule tANY_OTHER;
	
	private final Grammar grammar;

	@Inject
	public Bug288760TestLanguageGrammarAccess(GrammarProvider grammarProvider) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.pWorkflowElement = new WorkflowElementElements();
		this.pAttribute = new AttributeElements();
		this.tML_COMMENT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.ML_COMMENT");
		this.tSTART_TAG = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.START_TAG");
		this.tLT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.LT");
		this.tGT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.GT");
		this.tEQ = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.EQ");
		this.tEND_TAG_SHORT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.END_TAG_SHORT");
		this.tEND_TAG_START = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.END_TAG_START");
		this.tEND_TAG = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.END_TAG");
		this.tID = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.ID");
		this.tINT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.INT");
		this.tSTRING = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.STRING");
		this.tWS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.WS");
		this.tANY_OTHER = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.ANY_OTHER");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage".equals(grammar.getName())) {
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
	

	
	//WorkflowElement:
	//      name=START_TAG (attributes+=Attribute)* END_TAG_SHORT
	//    | name=START_TAG (attributes+=Attribute)* GT
	//        (children+=WorkflowElement)*
	//      end=END_TAG
	//;
	public WorkflowElementElements getWorkflowElementAccess() {
		return pWorkflowElement;
	}
	
	public ParserRule getWorkflowElementRule() {
		return getWorkflowElementAccess().getRule();
	}
	
	//Attribute:
	//    name=ID EQ value=STRING
	//;
	public AttributeElements getAttributeAccess() {
		return pAttribute;
	}
	
	public ParserRule getAttributeRule() {
		return getAttributeAccess().getRule();
	}
	
	//terminal ML_COMMENT: '<!--' -> '-->' ;
	public TerminalRule getML_COMMENTRule() {
		return tML_COMMENT;
	}
	
	//terminal START_TAG: LT ID ;
	public TerminalRule getSTART_TAGRule() {
		return tSTART_TAG;
	}
	
	//terminal LT: '<' ;
	public TerminalRule getLTRule() {
		return tLT;
	}
	
	//terminal GT: '>' ;
	public TerminalRule getGTRule() {
		return tGT;
	}
	
	//terminal EQ: '=' ;
	public TerminalRule getEQRule() {
		return tEQ;
	}
	
	//terminal END_TAG_SHORT: '/>' ;
	public TerminalRule getEND_TAG_SHORTRule() {
		return tEND_TAG_SHORT;
	}
	
	//terminal END_TAG_START: '</' ;
	public TerminalRule getEND_TAG_STARTRule() {
		return tEND_TAG_START;
	}
	
	//terminal END_TAG: END_TAG_START ID GT;
	public TerminalRule getEND_TAGRule() {
		return tEND_TAG;
	}
	
	//terminal ID  		: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return tID;
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return tINT;
	}
	
	//terminal STRING    :
	//            '"' ( '\\' ('b'|'t'|'n'|'f'|'r'|'"'|"'"|'\\') | !('\\'|'"') )* '"' |
	//            "'" ( '\\' ('b'|'t'|'n'|'f'|'r'|'"'|"'"|'\\') | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return tSTRING;
	}
	
	//terminal WS			: (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return tWS;
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return tANY_OTHER;
	}
}
