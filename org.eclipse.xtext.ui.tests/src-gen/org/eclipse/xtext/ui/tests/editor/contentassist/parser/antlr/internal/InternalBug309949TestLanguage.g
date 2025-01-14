/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug309949TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug309949TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug309949TestLanguageGrammarAccess grammarAccess;

    public InternalBug309949TestLanguageParser(TokenStream input, Bug309949TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug309949TestLanguageGrammarAccess getGrammarAccess() {
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
				$current = forceCreateModelElement(
					grammarAccess.getModelAccess().getModelAction_0(),
					$current);
			}
		)
		(
			(
				otherlv_1='#1*'
				{
					newLeafNode(otherlv_1, grammarAccess.getModelAccess().getNumberSignDigitOneAsteriskKeyword_1_0_0());
				}
				otherlv_2='{'
				{
					newLeafNode(otherlv_2, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_0_1());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_0_2_0());
						}
						lv_errors_3_0=ruleError_1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_1");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_0_3_0());
						}
						lv_operations_4_0=ruleOperation_1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_4_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_1");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_5='}'
				{
					newLeafNode(otherlv_5, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_0_4());
				}
			)
			    |
			(
				otherlv_6='#1+'
				{
					newLeafNode(otherlv_6, grammarAccess.getModelAccess().getNumberSignDigitOnePlusSignKeyword_1_1_0());
				}
				otherlv_7='{'
				{
					newLeafNode(otherlv_7, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_1_1());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_1_2_0());
						}
						lv_errors_8_0=ruleError_1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_8_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_1");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_1_3_0());
						}
						lv_operations_9_0=ruleOperation_1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_9_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_1");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_10='}'
				{
					newLeafNode(otherlv_10, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_1_4());
				}
			)
			    |
			(
				otherlv_11='#2*'
				{
					newLeafNode(otherlv_11, grammarAccess.getModelAccess().getNumberSignDigitTwoAsteriskKeyword_1_2_0());
				}
				otherlv_12='{'
				{
					newLeafNode(otherlv_12, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_2_1());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_2_2_0());
						}
						lv_errors_13_0=ruleError_2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_13_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_2");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_2_3_0());
						}
						lv_operations_14_0=ruleOperation_2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_14_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_2");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_15='}'
				{
					newLeafNode(otherlv_15, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_2_4());
				}
			)
			    |
			(
				otherlv_16='#2+'
				{
					newLeafNode(otherlv_16, grammarAccess.getModelAccess().getNumberSignDigitTwoPlusSignKeyword_1_3_0());
				}
				(
					(
						lv_name_17_0=RULE_ID
						{
							newLeafNode(lv_name_17_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_3_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_17_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_18='{'
				{
					newLeafNode(otherlv_18, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_3_3_0());
						}
						lv_errors_19_0=ruleError_2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_19_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_2");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_3_4_0());
						}
						lv_operations_20_0=ruleOperation_2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_20_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_2");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_21='}'
				{
					newLeafNode(otherlv_21, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_5());
				}
			)
			    |
			(
				otherlv_22='#3*'
				{
					newLeafNode(otherlv_22, grammarAccess.getModelAccess().getNumberSignDigitThreeAsteriskKeyword_1_4_0());
				}
				(
					(
						lv_name_23_0=RULE_ID
						{
							newLeafNode(lv_name_23_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_4_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_23_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_24='{'
				{
					newLeafNode(otherlv_24, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_4_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_4_3_0());
						}
						lv_errors_25_0=ruleError_3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_25_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_3");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_4_4_0());
						}
						lv_operations_26_0=ruleOperation_3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_26_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_3");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_27='}'
				{
					newLeafNode(otherlv_27, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_4_5());
				}
			)
			    |
			(
				otherlv_28='#3+'
				{
					newLeafNode(otherlv_28, grammarAccess.getModelAccess().getNumberSignDigitThreePlusSignKeyword_1_5_0());
				}
				(
					(
						lv_name_29_0=RULE_ID
						{
							newLeafNode(lv_name_29_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_5_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_29_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_30='{'
				{
					newLeafNode(otherlv_30, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_5_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_5_3_0());
						}
						lv_errors_31_0=ruleError_3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_31_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_3");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_5_4_0());
						}
						lv_operations_32_0=ruleOperation_3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_32_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_3");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_33='}'
				{
					newLeafNode(otherlv_33, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_5_5());
				}
			)
			    |
			(
				otherlv_34='#4*'
				{
					newLeafNode(otherlv_34, grammarAccess.getModelAccess().getNumberSignDigitFourAsteriskKeyword_1_6_0());
				}
				(
					(
						lv_name_35_0=RULE_ID
						{
							newLeafNode(lv_name_35_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_6_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_35_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_36='{'
				{
					newLeafNode(otherlv_36, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_6_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_6_3_0());
						}
						lv_errors_37_0=ruleError_4
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_37_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_4");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_6_4_0());
						}
						lv_operations_38_0=ruleOperation_4
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_38_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_4");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_39='}'
				{
					newLeafNode(otherlv_39, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_6_5());
				}
			)
			    |
			(
				otherlv_40='#4+'
				{
					newLeafNode(otherlv_40, grammarAccess.getModelAccess().getNumberSignDigitFourPlusSignKeyword_1_7_0());
				}
				(
					(
						lv_name_41_0=RULE_ID
						{
							newLeafNode(lv_name_41_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_7_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_41_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_42='{'
				{
					newLeafNode(otherlv_42, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_7_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_7_3_0());
						}
						lv_errors_43_0=ruleError_4
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_43_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_4");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_7_4_0());
						}
						lv_operations_44_0=ruleOperation_4
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_44_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_4");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_45='}'
				{
					newLeafNode(otherlv_45, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_7_5());
				}
			)
			    |
			(
				otherlv_46='#5*'
				{
					newLeafNode(otherlv_46, grammarAccess.getModelAccess().getNumberSignDigitFiveAsteriskKeyword_1_8_0());
				}
				(
					(
						lv_name_47_0=RULE_ID
						{
							newLeafNode(lv_name_47_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_8_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_47_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_48='{'
				{
					newLeafNode(otherlv_48, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_8_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_8_3_0());
						}
						lv_errors_49_0=ruleError_5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_49_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_5");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_8_4_0());
						}
						lv_operations_50_0=ruleOperation_5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_50_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_5");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_51='}'
				{
					newLeafNode(otherlv_51, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_8_5());
				}
			)
			    |
			(
				otherlv_52='#5+'
				{
					newLeafNode(otherlv_52, grammarAccess.getModelAccess().getNumberSignDigitFivePlusSignKeyword_1_9_0());
				}
				(
					(
						lv_name_53_0=RULE_ID
						{
							newLeafNode(lv_name_53_0, grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_9_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModelRule());
							}
							setWithLastConsumed(
								$current,
								"name",
								lv_name_53_0,
								"org.eclipse.xtext.common.Terminals.ID");
						}
					)
				)
				otherlv_54='{'
				{
					newLeafNode(otherlv_54, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_9_2());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_9_3_0());
						}
						lv_errors_55_0=ruleError_5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"errors",
								lv_errors_55_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_5");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_9_4_0());
						}
						lv_operations_56_0=ruleOperation_5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"operations",
								lv_operations_56_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_5");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_57='}'
				{
					newLeafNode(otherlv_57, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_9_5());
				}
			)
		)
	)
;

// Entry rule entryRuleError_1
entryRuleError_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getError_1Rule()); }
	iv_ruleError_1=ruleError_1
	{ $current=$iv_ruleError_1.current; }
	EOF;

// Rule Error_1
ruleError_1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getError_1Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getError_1Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='error'
		{
			newLeafNode(otherlv_1, grammarAccess.getError_1Access().getErrorKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getError_1Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getError_1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleOperation_1
entryRuleOperation_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperation_1Rule()); }
	iv_ruleOperation_1=ruleOperation_1
	{ $current=$iv_ruleOperation_1.current; }
	EOF;

// Rule Operation_1
ruleOperation_1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getOperation_1Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperation_1Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='operation'
		{
			newLeafNode(otherlv_1, grammarAccess.getOperation_1Access().getOperationKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getOperation_1Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getOperation_1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleError_2
entryRuleError_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getError_2Rule()); }
	iv_ruleError_2=ruleError_2
	{ $current=$iv_ruleError_2.current; }
	EOF;

// Rule Error_2
ruleError_2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getError_2Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getError_2Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_1='error'
		{
			newLeafNode(otherlv_1, grammarAccess.getError_2Access().getErrorKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getError_2Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getError_2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleOperation_2
entryRuleOperation_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperation_2Rule()); }
	iv_ruleOperation_2=ruleOperation_2
	{ $current=$iv_ruleOperation_2.current; }
	EOF;

// Rule Operation_2
ruleOperation_2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getOperation_2Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperation_2Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_1='operation'
		{
			newLeafNode(otherlv_1, grammarAccess.getOperation_2Access().getOperationKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getOperation_2Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getOperation_2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleError_3
entryRuleError_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getError_3Rule()); }
	iv_ruleError_3=ruleError_3
	{ $current=$iv_ruleError_3.current; }
	EOF;

// Rule Error_3
ruleError_3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getError_3Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getError_3Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_1='error'
		{
			newLeafNode(otherlv_1, grammarAccess.getError_3Access().getErrorKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getError_3Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getError_3Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleOperation_3
entryRuleOperation_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperation_3Rule()); }
	iv_ruleOperation_3=ruleOperation_3
	{ $current=$iv_ruleOperation_3.current; }
	EOF;

// Rule Operation_3
ruleOperation_3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getOperation_3Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperation_3Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_1='operation'
		{
			newLeafNode(otherlv_1, grammarAccess.getOperation_3Access().getOperationKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getOperation_3Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getOperation_3Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleError_4
entryRuleError_4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getError_4Rule()); }
	iv_ruleError_4=ruleError_4
	{ $current=$iv_ruleError_4.current; }
	EOF;

// Rule Error_4
ruleError_4 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getError_4Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getError_4Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='error'
		{
			newLeafNode(otherlv_1, grammarAccess.getError_4Access().getErrorKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getError_4Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getError_4Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleOperation_4
entryRuleOperation_4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperation_4Rule()); }
	iv_ruleOperation_4=ruleOperation_4
	{ $current=$iv_ruleOperation_4.current; }
	EOF;

// Rule Operation_4
ruleOperation_4 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getOperation_4Access().getAnnotationsAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperation_4Rule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='operation'
		{
			newLeafNode(otherlv_1, grammarAccess.getOperation_4Access().getOperationKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getOperation_4Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getOperation_4Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleError_5
entryRuleError_5 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getError_5Rule()); }
	iv_ruleError_5=ruleError_5
	{ $current=$iv_ruleError_5.current; }
	EOF;

// Rule Error_5
ruleError_5 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='error'
		{
			newLeafNode(otherlv_0, grammarAccess.getError_5Access().getErrorKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getError_5Access().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getError_5Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleOperation_5
entryRuleOperation_5 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperation_5Rule()); }
	iv_ruleOperation_5=ruleOperation_5
	{ $current=$iv_ruleOperation_5.current; }
	EOF;

// Rule Operation_5
ruleOperation_5 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='operation'
		{
			newLeafNode(otherlv_0, grammarAccess.getOperation_5Access().getOperationKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getOperation_5Access().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getOperation_5Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleAnnotation
entryRuleAnnotation returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAnnotationRule()); }
	iv_ruleAnnotation=ruleAnnotation
	{ $current=$iv_ruleAnnotation.current; }
	EOF;

// Rule Annotation
ruleAnnotation returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='@uuid'
		{
			newLeafNode(otherlv_0, grammarAccess.getAnnotationAccess().getUuidKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getAnnotationAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAnnotationRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
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
