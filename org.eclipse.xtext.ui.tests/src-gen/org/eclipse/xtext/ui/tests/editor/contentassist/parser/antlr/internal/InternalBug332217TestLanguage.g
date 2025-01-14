/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug332217TestLanguage;

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
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug332217TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug332217TestLanguageGrammarAccess grammarAccess;

    public InternalBug332217TestLanguageParser(TokenStream input, Bug332217TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug332217TestLanguageGrammarAccess getGrammarAccess() {
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
				newCompositeNode(grammarAccess.getModelAccess().getElementsTableViewParserRuleCall_0());
			}
			lv_elements_0_0=ruleTableView
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"elements",
					lv_elements_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TableView");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleTypeDescription
entryRuleTypeDescription returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeDescriptionRule()); }
	iv_ruleTypeDescription=ruleTypeDescription
	{ $current=$iv_ruleTypeDescription.current; }
	EOF;

// Rule TypeDescription
ruleTypeDescription returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_type_0_0=RULE_ID
				{
					newLeafNode(lv_type_0_0, grammarAccess.getTypeDescriptionAccess().getTypeIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTypeDescriptionRule());
					}
					setWithLastConsumed(
						$current,
						"type",
						lv_type_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_many_1_0='[]'
				{
					newLeafNode(lv_many_1_0, grammarAccess.getTypeDescriptionAccess().getManyLeftSquareBracketRightSquareBracketKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTypeDescriptionRule());
					}
					setWithLastConsumed($current, "many", lv_many_1_0 != null, "[]");
				}
			)
		)?
	)
;

// Entry rule entryRuleParameter
entryRuleParameter returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParameterRule()); }
	iv_ruleParameter=ruleParameter
	{ $current=$iv_ruleParameter.current; }
	EOF;

// Rule Parameter
ruleParameter returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getParameterAccess().getDescriptionTypeDescriptionParserRuleCall_0_0());
				}
				lv_description_0_0=ruleTypeDescription
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getParameterRule());
					}
					set(
						$current,
						"description",
						lv_description_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TypeDescription");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getParameterAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getParameterRule());
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

// Entry rule entryRuleObjectReference
entryRuleObjectReference returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getObjectReferenceRule()); }
	iv_ruleObjectReference=ruleObjectReference
	{ $current=$iv_ruleObjectReference.current; }
	EOF;

// Rule ObjectReference
ruleObjectReference returns [EObject current=null]
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
					if ($current==null) {
						$current = createModelElement(grammarAccess.getObjectReferenceRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getObjectReferenceAccess().getObjectPropertyPathPartCrossReference_0_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getObjectReferenceAccess().getTailNestedObjectReferenceParserRuleCall_1_0());
				}
				lv_tail_1_0=ruleNestedObjectReference
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getObjectReferenceRule());
					}
					set(
						$current,
						"tail",
						lv_tail_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.NestedObjectReference");
					afterParserOrEnumRuleCall();
				}
			)
		)?
	)
;

// Entry rule entryRuleNestedObjectReference
entryRuleNestedObjectReference returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNestedObjectReferenceRule()); }
	iv_ruleNestedObjectReference=ruleNestedObjectReference
	{ $current=$iv_ruleNestedObjectReference.current; }
	EOF;

// Rule NestedObjectReference
ruleNestedObjectReference returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='.'
		{
			newLeafNode(otherlv_0, grammarAccess.getNestedObjectReferenceAccess().getFullStopKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getNestedObjectReferenceRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getNestedObjectReferenceAccess().getObjectPropertyPathPartCrossReference_1_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getNestedObjectReferenceAccess().getTailNestedObjectReferenceParserRuleCall_2_0());
				}
				lv_tail_2_0=ruleNestedObjectReference
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getNestedObjectReferenceRule());
					}
					set(
						$current,
						"tail",
						lv_tail_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.NestedObjectReference");
					afterParserOrEnumRuleCall();
				}
			)
		)?
	)
;

// Entry rule entryRuleImageExpression
entryRuleImageExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImageExpressionRule()); }
	iv_ruleImageExpression=ruleImageExpression
	{ $current=$iv_ruleImageExpression.current; }
	EOF;

// Rule ImageExpression
ruleImageExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getImageExpressionAccess().getScalarExpressionParserRuleCall());
	}
	this_ScalarExpression_0=ruleScalarExpression
	{
		$current = $this_ScalarExpression_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleScalarExpression
entryRuleScalarExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScalarExpressionRule()); }
	iv_ruleScalarExpression=ruleScalarExpression
	{ $current=$iv_ruleScalarExpression.current; }
	EOF;

// Rule ScalarExpression
ruleScalarExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getScalarExpressionAccess().getStringLiteralParserRuleCall_0());
		}
		this_StringLiteral_0=ruleStringLiteral
		{
			$current = $this_StringLiteral_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getScalarExpressionAccess().getStringFunctionParserRuleCall_1());
		}
		this_StringFunction_1=ruleStringFunction
		{
			$current = $this_StringFunction_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getScalarExpressionAccess().getObjectReferenceParserRuleCall_2());
		}
		this_ObjectReference_2=ruleObjectReference
		{
			$current = $this_ObjectReference_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleCollectionExpression
entryRuleCollectionExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionExpressionRule()); }
	iv_ruleCollectionExpression=ruleCollectionExpression
	{ $current=$iv_ruleCollectionExpression.current; }
	EOF;

// Rule CollectionExpression
ruleCollectionExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getCollectionExpressionAccess().getCollectionLiteralParserRuleCall_0());
		}
		this_CollectionLiteral_0=ruleCollectionLiteral
		{
			$current = $this_CollectionLiteral_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getCollectionExpressionAccess().getCollectionFunctionParserRuleCall_1());
		}
		this_CollectionFunction_1=ruleCollectionFunction
		{
			$current = $this_CollectionFunction_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getCollectionExpressionAccess().getObjectReferenceParserRuleCall_2());
		}
		this_ObjectReference_2=ruleObjectReference
		{
			$current = $this_ObjectReference_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleStringLiteral
entryRuleStringLiteral returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStringLiteralRule()); }
	iv_ruleStringLiteral=ruleStringLiteral
	{ $current=$iv_ruleStringLiteral.current; }
	EOF;

// Rule StringLiteral
ruleStringLiteral returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_value_0_0=RULE_STRING
			{
				newLeafNode(lv_value_0_0, grammarAccess.getStringLiteralAccess().getValueSTRINGTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getStringLiteralRule());
				}
				setWithLastConsumed(
					$current,
					"value",
					lv_value_0_0,
					"org.eclipse.xtext.common.Terminals.STRING");
			}
		)
	)
;

// Entry rule entryRuleStringFunction
entryRuleStringFunction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStringFunctionRule()); }
	iv_ruleStringFunction=ruleStringFunction
	{ $current=$iv_ruleStringFunction.current; }
	EOF;

// Rule StringFunction
ruleStringFunction returns [EObject current=null]
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
					$current = forceCreateModelElement(
						grammarAccess.getStringFunctionAccess().getStringConcatAction_0_0(),
						$current);
				}
			)
			otherlv_1='('
			{
				newLeafNode(otherlv_1, grammarAccess.getStringFunctionAccess().getLeftParenthesisKeyword_0_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getStringFunctionAccess().getValuesScalarExpressionParserRuleCall_0_2_0());
					}
					lv_values_2_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStringFunctionRule());
						}
						add(
							$current,
							"values",
							lv_values_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)+
			otherlv_3=')'
			{
				newLeafNode(otherlv_3, grammarAccess.getStringFunctionAccess().getRightParenthesisKeyword_0_3());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getStringFunctionAccess().getStringReplaceAction_1_0(),
						$current);
				}
			)
			otherlv_5='replace('
			{
				newLeafNode(otherlv_5, grammarAccess.getStringFunctionAccess().getReplaceKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getStringFunctionAccess().getValueScalarExpressionParserRuleCall_1_2_0());
					}
					lv_value_6_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStringFunctionRule());
						}
						set(
							$current,
							"value",
							lv_value_6_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_7=','
			{
				newLeafNode(otherlv_7, grammarAccess.getStringFunctionAccess().getCommaKeyword_1_3());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getStringFunctionAccess().getMatchScalarExpressionParserRuleCall_1_4_0());
					}
					lv_match_8_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStringFunctionRule());
						}
						set(
							$current,
							"match",
							lv_match_8_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_9=','
			{
				newLeafNode(otherlv_9, grammarAccess.getStringFunctionAccess().getCommaKeyword_1_5());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getStringFunctionAccess().getReplacementScalarExpressionParserRuleCall_1_6_0());
					}
					lv_replacement_10_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStringFunctionRule());
						}
						set(
							$current,
							"replacement",
							lv_replacement_10_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_11=')'
			{
				newLeafNode(otherlv_11, grammarAccess.getStringFunctionAccess().getRightParenthesisKeyword_1_7());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getStringFunctionAccess().getStringUrlConformAction_2_0(),
						$current);
				}
			)
			otherlv_13='urlconform('
			{
				newLeafNode(otherlv_13, grammarAccess.getStringFunctionAccess().getUrlconformKeyword_2_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getStringFunctionAccess().getValueScalarExpressionParserRuleCall_2_2_0());
					}
					lv_value_14_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStringFunctionRule());
						}
						set(
							$current,
							"value",
							lv_value_14_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_15=')'
			{
				newLeafNode(otherlv_15, grammarAccess.getStringFunctionAccess().getRightParenthesisKeyword_2_3());
			}
		)
	)
;

// Entry rule entryRuleCollectionLiteral
entryRuleCollectionLiteral returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionLiteralRule()); }
	iv_ruleCollectionLiteral=ruleCollectionLiteral
	{ $current=$iv_ruleCollectionLiteral.current; }
	EOF;

// Rule CollectionLiteral
ruleCollectionLiteral returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='['
		{
			newLeafNode(otherlv_0, grammarAccess.getCollectionLiteralAccess().getLeftSquareBracketKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionLiteralAccess().getItemsScalarExpressionParserRuleCall_1_0());
				}
				lv_items_1_0=ruleScalarExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionLiteralRule());
					}
					add(
						$current,
						"items",
						lv_items_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getCollectionLiteralAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getCollectionLiteralAccess().getItemsScalarExpressionParserRuleCall_2_1_0());
					}
					lv_items_3_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getCollectionLiteralRule());
						}
						add(
							$current,
							"items",
							lv_items_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_4=']'
		{
			newLeafNode(otherlv_4, grammarAccess.getCollectionLiteralAccess().getRightSquareBracketKeyword_3());
		}
	)
;

// Entry rule entryRuleCollectionFunction
entryRuleCollectionFunction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionFunctionRule()); }
	iv_ruleCollectionFunction=ruleCollectionFunction
	{ $current=$iv_ruleCollectionFunction.current; }
	EOF;

// Rule CollectionFunction
ruleCollectionFunction returns [EObject current=null]
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
					grammarAccess.getCollectionFunctionAccess().getStringSplitAction_0(),
					$current);
			}
		)
		otherlv_1='split('
		{
			newLeafNode(otherlv_1, grammarAccess.getCollectionFunctionAccess().getSplitKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionFunctionAccess().getValueScalarExpressionParserRuleCall_2_0());
				}
				lv_value_2_0=ruleScalarExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionFunctionRule());
					}
					set(
						$current,
						"value",
						lv_value_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=','
		{
			newLeafNode(otherlv_3, grammarAccess.getCollectionFunctionAccess().getCommaKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionFunctionAccess().getDelimiterScalarExpressionParserRuleCall_4_0());
				}
				lv_delimiter_4_0=ruleScalarExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionFunctionRule());
					}
					set(
						$current,
						"delimiter",
						lv_delimiter_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5=')'
		{
			newLeafNode(otherlv_5, grammarAccess.getCollectionFunctionAccess().getRightParenthesisKeyword_5());
		}
	)
;

// Entry rule entryRuleTableView
entryRuleTableView returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTableViewRule()); }
	iv_ruleTableView=ruleTableView
	{ $current=$iv_ruleTableView.current; }
	EOF;

// Rule TableView
ruleTableView returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='tableview'
		{
			newLeafNode(otherlv_0, grammarAccess.getTableViewAccess().getTableviewKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getTableViewAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTableViewRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_2='('
			{
				newLeafNode(otherlv_2, grammarAccess.getTableViewAccess().getLeftParenthesisKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getTableViewAccess().getContentParameterParserRuleCall_2_1_0());
					}
					lv_content_3_0=ruleParameter
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTableViewRule());
						}
						set(
							$current,
							"content",
							lv_content_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Parameter");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_4=')'
			{
				newLeafNode(otherlv_4, grammarAccess.getTableViewAccess().getRightParenthesisKeyword_2_2());
			}
		)?
		otherlv_5='{'
		{
			newLeafNode(otherlv_5, grammarAccess.getTableViewAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{ 
				  getUnorderedGroupHelper().enter(grammarAccess.getTableViewAccess().getUnorderedGroup_4());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 0);
					}
								({true}?=>(otherlv_7='title:'
								{
									newLeafNode(otherlv_7, grammarAccess.getTableViewAccess().getTitleKeyword_4_0_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getTableViewAccess().getTitleScalarExpressionParserRuleCall_4_0_1_0());
										}
										lv_title_8_0=ruleScalarExpression
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getTableViewRule());
											}
											set(
												$current,
												"title",
												lv_title_8_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTableViewAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 1);
					}
								({true}?=>(otherlv_9='titleImage:'
								{
									newLeafNode(otherlv_9, grammarAccess.getTableViewAccess().getTitleImageKeyword_4_1_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getTableViewAccess().getTitleImageImageExpressionParserRuleCall_4_1_1_0());
										}
										lv_titleImage_10_0=ruleImageExpression
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getTableViewRule());
											}
											set(
												$current,
												"titleImage",
												lv_titleImage_10_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ImageExpression");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTableViewAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getTableViewAccess().getUnorderedGroup_4(), 2);
					}
								({true}?=>(otherlv_11='style:'
								{
									newLeafNode(otherlv_11, grammarAccess.getTableViewAccess().getStyleKeyword_4_2_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getTableViewAccess().getStyleTableViewStyleEnumRuleCall_4_2_1_0());
										}
										lv_style_12_0=ruleTableViewStyle
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getTableViewRule());
											}
											set(
												$current,
												"style",
												lv_style_12_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TableViewStyle");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTableViewAccess().getUnorderedGroup_4());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getTableViewAccess().getUnorderedGroup_4());
				}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getTableViewAccess().getSectionsSectionParserRuleCall_5_0());
				}
				lv_sections_13_0=ruleSection
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTableViewRule());
					}
					add(
						$current,
						"sections",
						lv_sections_13_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Section");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_14='}'
		{
			newLeafNode(otherlv_14, grammarAccess.getTableViewAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRuleSection
entryRuleSection returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSectionRule()); }
	iv_ruleSection=ruleSection
	{ $current=$iv_ruleSection.current; }
	EOF;

// Rule Section
ruleSection returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='section'
		{
			newLeafNode(otherlv_0, grammarAccess.getSectionAccess().getSectionKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSectionAccess().getIteratorCollectionIteratorParserRuleCall_1_0());
				}
				lv_iterator_1_0=ruleCollectionIterator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSectionRule());
					}
					set(
						$current,
						"iterator",
						lv_iterator_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionIterator");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2='{'
		{
			newLeafNode(otherlv_2, grammarAccess.getSectionAccess().getLeftCurlyBracketKeyword_2());
		}
		(
			otherlv_3='title:'
			{
				newLeafNode(otherlv_3, grammarAccess.getSectionAccess().getTitleKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getSectionAccess().getTitleScalarExpressionParserRuleCall_3_1_0());
					}
					lv_title_4_0=ruleScalarExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSectionRule());
						}
						set(
							$current,
							"title",
							lv_title_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getSectionAccess().getCellsCellParserRuleCall_4_0());
				}
				lv_cells_5_0=ruleCell
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSectionRule());
					}
					add(
						$current,
						"cells",
						lv_cells_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Cell");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getSectionAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleCell
entryRuleCell returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCellRule()); }
	iv_ruleCell=ruleCell
	{ $current=$iv_ruleCell.current; }
	EOF;

// Rule Cell
ruleCell returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='cell'
		{
			newLeafNode(otherlv_0, grammarAccess.getCellAccess().getCellKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCellAccess().getTypeCellTypeEnumRuleCall_1_0());
				}
				lv_type_1_0=ruleCellType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCellRule());
					}
					set(
						$current,
						"type",
						lv_type_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CellType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getCellAccess().getIteratorCollectionIteratorParserRuleCall_2_0());
				}
				lv_iterator_2_0=ruleCollectionIterator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCellRule());
					}
					set(
						$current,
						"iterator",
						lv_iterator_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionIterator");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getCellAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{ 
				  getUnorderedGroupHelper().enter(grammarAccess.getCellAccess().getUnorderedGroup_4());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCellAccess().getUnorderedGroup_4(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCellAccess().getUnorderedGroup_4(), 0);
					}
								({true}?=>(otherlv_5='text:'
								{
									newLeafNode(otherlv_5, grammarAccess.getCellAccess().getTextKeyword_4_0_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getCellAccess().getTextScalarExpressionParserRuleCall_4_0_1_0());
										}
										lv_text_6_0=ruleScalarExpression
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getCellRule());
											}
											set(
												$current,
												"text",
												lv_text_6_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCellAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCellAccess().getUnorderedGroup_4(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCellAccess().getUnorderedGroup_4(), 1);
					}
								({true}?=>(otherlv_7='details:'
								{
									newLeafNode(otherlv_7, grammarAccess.getCellAccess().getDetailsKeyword_4_1_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getCellAccess().getDetailsScalarExpressionParserRuleCall_4_1_1_0());
										}
										lv_details_8_0=ruleScalarExpression
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getCellRule());
											}
											set(
												$current,
												"details",
												lv_details_8_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCellAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCellAccess().getUnorderedGroup_4(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCellAccess().getUnorderedGroup_4(), 2);
					}
								({true}?=>(otherlv_9='image:'
								{
									newLeafNode(otherlv_9, grammarAccess.getCellAccess().getImageKeyword_4_2_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getCellAccess().getImageScalarExpressionParserRuleCall_4_2_1_0());
										}
										lv_image_10_0=ruleScalarExpression
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getCellRule());
											}
											set(
												$current,
												"image",
												lv_image_10_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCellAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCellAccess().getUnorderedGroup_4(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCellAccess().getUnorderedGroup_4(), 3);
					}
								({true}?=>(otherlv_11='action:'
								{
									newLeafNode(otherlv_11, grammarAccess.getCellAccess().getActionKeyword_4_3_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getCellAccess().getActionViewActionParserRuleCall_4_3_1_0());
										}
										lv_action_12_0=ruleViewAction
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getCellRule());
											}
											set(
												$current,
												"action",
												lv_action_12_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ViewAction");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCellAccess().getUnorderedGroup_4());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getCellAccess().getUnorderedGroup_4(), 4)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getCellAccess().getUnorderedGroup_4(), 4);
					}
								({true}?=>(otherlv_13='accessory:'
								{
									newLeafNode(otherlv_13, grammarAccess.getCellAccess().getAccessoryKeyword_4_4_0());
								}
								(
									(
										{
											newCompositeNode(grammarAccess.getCellAccess().getAccessoryCellAccessoryEnumRuleCall_4_4_1_0());
										}
										lv_accessory_14_0=ruleCellAccessory
										{
											if ($current==null) {
												$current = createModelElementForParent(grammarAccess.getCellRule());
											}
											set(
												$current,
												"accessory",
												lv_accessory_14_0,
												"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CellAccessory");
											afterParserOrEnumRuleCall();
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCellAccess().getUnorderedGroup_4());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getCellAccess().getUnorderedGroup_4());
				}
		)
		otherlv_15='}'
		{
			newLeafNode(otherlv_15, grammarAccess.getCellAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleCollectionIterator
entryRuleCollectionIterator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionIteratorRule()); }
	iv_ruleCollectionIterator=ruleCollectionIterator
	{ $current=$iv_ruleCollectionIterator.current; }
	EOF;

// Rule CollectionIterator
ruleCollectionIterator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='for'
		{
			newLeafNode(otherlv_0, grammarAccess.getCollectionIteratorAccess().getForKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getCollectionIteratorAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCollectionIteratorRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2='in'
		{
			newLeafNode(otherlv_2, grammarAccess.getCollectionIteratorAccess().getInKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionIteratorAccess().getCollectionCollectionExpressionParserRuleCall_3_0());
				}
				lv_collection_3_0=ruleCollectionExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionIteratorRule());
					}
					set(
						$current,
						"collection",
						lv_collection_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionExpression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleViewAction
entryRuleViewAction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getViewActionRule()); }
	iv_ruleViewAction=ruleViewAction
	{ $current=$iv_ruleViewAction.current; }
	EOF;

// Rule ViewAction
ruleViewAction returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getViewActionAccess().getExternalOpenParserRuleCall_0());
		}
		this_ExternalOpen_0=ruleExternalOpen
		{
			$current = $this_ExternalOpen_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getViewActionAccess().getSelectorParserRuleCall_1());
		}
		this_Selector_1=ruleSelector
		{
			$current = $this_Selector_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleSelectorName
entryRuleSelectorName returns [String current=null]:
	{ newCompositeNode(grammarAccess.getSelectorNameRule()); }
	iv_ruleSelectorName=ruleSelectorName
	{ $current=$iv_ruleSelectorName.current.getText(); }
	EOF;

// Rule SelectorName
ruleSelectorName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getSelectorNameAccess().getIDTerminalRuleCall_0());
		}
		(
			kw=':'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getSelectorNameAccess().getColonKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getSelectorNameAccess().getIDTerminalRuleCall_1_1());
			}
		)*
		(
			kw=':'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getSelectorNameAccess().getColonKeyword_2());
			}
		)?
	)
;

// Entry rule entryRuleSelector
entryRuleSelector returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSelectorRule()); }
	iv_ruleSelector=ruleSelector
	{ $current=$iv_ruleSelector.current; }
	EOF;

// Rule Selector
ruleSelector returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='@selector'
		{
			newLeafNode(otherlv_0, grammarAccess.getSelectorAccess().getSelectorKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getSelectorAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSelectorAccess().getNameSelectorNameParserRuleCall_2_0());
				}
				lv_name_2_0=ruleSelectorName
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSelectorRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.SelectorName");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=')'
		{
			newLeafNode(otherlv_3, grammarAccess.getSelectorAccess().getRightParenthesisKeyword_3());
		}
	)
;

// Entry rule entryRuleExternalOpen
entryRuleExternalOpen returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExternalOpenRule()); }
	iv_ruleExternalOpen=ruleExternalOpen
	{ $current=$iv_ruleExternalOpen.current; }
	EOF;

// Rule ExternalOpen
ruleExternalOpen returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getExternalOpenAccess().getUrlScalarExpressionParserRuleCall_0());
			}
			lv_url_0_0=ruleScalarExpression
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getExternalOpenRule());
				}
				set(
					$current,
					"url",
					lv_url_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Rule TableViewStyle
ruleTableViewStyle returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='Plain'
			{
				$current = grammarAccess.getTableViewStyleAccess().getPlainEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getTableViewStyleAccess().getPlainEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Grouped'
			{
				$current = grammarAccess.getTableViewStyleAccess().getGroupedEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getTableViewStyleAccess().getGroupedEnumLiteralDeclaration_1());
			}
		)
	)
;

// Rule CellType
ruleCellType returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='Default'
			{
				$current = grammarAccess.getCellTypeAccess().getDefaultEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getCellTypeAccess().getDefaultEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Value1'
			{
				$current = grammarAccess.getCellTypeAccess().getValue1EnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getCellTypeAccess().getValue1EnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='Value2'
			{
				$current = grammarAccess.getCellTypeAccess().getValue2EnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getCellTypeAccess().getValue2EnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='Subtitle'
			{
				$current = grammarAccess.getCellTypeAccess().getSubtitleEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getCellTypeAccess().getSubtitleEnumLiteralDeclaration_3());
			}
		)
	)
;

// Rule CellAccessory
ruleCellAccessory returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='None'
			{
				$current = grammarAccess.getCellAccessoryAccess().getNoneEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getCellAccessoryAccess().getNoneEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Link'
			{
				$current = grammarAccess.getCellAccessoryAccess().getLinkEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getCellAccessoryAccess().getLinkEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='Detail'
			{
				$current = grammarAccess.getCellAccessoryAccess().getDetailEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getCellAccessoryAccess().getDetailEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='Check'
			{
				$current = grammarAccess.getCellAccessoryAccess().getCheckEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getCellAccessoryAccess().getCheckEnumLiteralDeclaration_3());
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
