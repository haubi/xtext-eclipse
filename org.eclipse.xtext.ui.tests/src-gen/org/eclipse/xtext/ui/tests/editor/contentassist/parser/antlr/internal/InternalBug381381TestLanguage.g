/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug381381TestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug381381TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug381381TestLanguageGrammarAccess grammarAccess;

    public InternalBug381381TestLanguageParser(TokenStream input, Bug381381TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug381381TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getStmtCopyFieldNameToVariableStmtParserRuleCall_0());
			}
			lv_stmt_0_0=ruleCopyFieldNameToVariableStmt
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				set(
					$current,
					"stmt",
					lv_stmt_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguage.CopyFieldNameToVariableStmt");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleCopyFieldNameToVariableStmt
entryRuleCopyFieldNameToVariableStmt returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCopyFieldNameToVariableStmtRule()); }
	iv_ruleCopyFieldNameToVariableStmt=ruleCopyFieldNameToVariableStmt
	{ $current=$iv_ruleCopyFieldNameToVariableStmt.current; }
	EOF;

// Rule CopyFieldNameToVariableStmt
ruleCopyFieldNameToVariableStmt returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='FIELD-NAME-TO-VARIABLE'
		{
			newLeafNode(otherlv_0, grammarAccess.getCopyFieldNameToVariableStmtAccess().getFIELDNAMETOVARIABLEKeyword_0());
		}
		(
			(
				{ 
				  getUnorderedGroupHelper().enter(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 0);
					}
								({true}?=>(otherlv_2=','
								{
									newLeafNode(otherlv_2, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_0());
								}
								otherlv_3='SCREEN'
								{
									newLeafNode(otherlv_3, grammarAccess.getCopyFieldNameToVariableStmtAccess().getSCREENKeyword_1_0_1());
								}
								otherlv_4='='
								{
									newLeafNode(otherlv_4, grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_0_2());
								}
								otherlv_5='('
								{
									newLeafNode(otherlv_5, grammarAccess.getCopyFieldNameToVariableStmtAccess().getLeftParenthesisKeyword_1_0_3());
								}
								(
									(
										lv_line_6_0=RULE_INT
										{
											newLeafNode(lv_line_6_0, grammarAccess.getCopyFieldNameToVariableStmtAccess().getLineINTTerminalRuleCall_1_0_4_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getCopyFieldNameToVariableStmtRule());
											}
											setWithLastConsumed(
												$current,
												"line",
												lv_line_6_0,
												"org.eclipse.xtext.common.Terminals.INT");
										}
									)
								)
								otherlv_7=','
								{
									newLeafNode(otherlv_7, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_5());
								}
								(
									(
										lv_column_8_0=RULE_INT
										{
											newLeafNode(lv_column_8_0, grammarAccess.getCopyFieldNameToVariableStmtAccess().getColumnINTTerminalRuleCall_1_0_6_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getCopyFieldNameToVariableStmtRule());
											}
											setWithLastConsumed(
												$current,
												"column",
												lv_column_8_0,
												"org.eclipse.xtext.common.Terminals.INT");
										}
									)
								)
								otherlv_9=')'
								{
									newLeafNode(otherlv_9, grammarAccess.getCopyFieldNameToVariableStmtAccess().getRightParenthesisKeyword_1_0_7());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 1);
					}
								({true}?=>(otherlv_10=','
								{
									newLeafNode(otherlv_10, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_1_0());
								}
								otherlv_11='VAR'
								{
									newLeafNode(otherlv_11, grammarAccess.getCopyFieldNameToVariableStmtAccess().getVARKeyword_1_1_1());
								}
								otherlv_12='='
								{
									newLeafNode(otherlv_12, grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_1_2());
								}
								(
									(
										lv_name_13_0=RULE_ID
										{
											newLeafNode(lv_name_13_0, grammarAccess.getCopyFieldNameToVariableStmtAccess().getNameIDTerminalRuleCall_1_1_3_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getCopyFieldNameToVariableStmtRule());
											}
											setWithLastConsumed(
												$current,
												"name",
												lv_name_13_0,
												"org.eclipse.xtext.common.Terminals.ID");
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 2);
					}
								({true}?=>(otherlv_14=','
								{
									newLeafNode(otherlv_14, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_2_0());
								}
								otherlv_15='TYPE'
								{
									newLeafNode(otherlv_15, grammarAccess.getCopyFieldNameToVariableStmtAccess().getTYPEKeyword_1_2_1());
								}
								otherlv_16='='
								{
									newLeafNode(otherlv_16, grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_2_2());
								}
								otherlv_17='REPLACE'
								{
									newLeafNode(otherlv_17, grammarAccess.getCopyFieldNameToVariableStmtAccess().getREPLACEKeyword_1_2_3());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
					}
				)
			)
					)+
					{getUnorderedGroupHelper().canLeave(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1())}?
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
				}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
