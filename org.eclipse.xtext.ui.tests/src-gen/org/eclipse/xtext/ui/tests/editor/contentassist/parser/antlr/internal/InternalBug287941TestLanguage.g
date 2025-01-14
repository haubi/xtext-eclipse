/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug287941TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug287941TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug287941TestLanguageGrammarAccess grammarAccess;

    public InternalBug287941TestLanguageParser(TokenStream input, Bug287941TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug287941TestLanguageGrammarAccess getGrammarAccess() {
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
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getImportsImportParserRuleCall_0_0());
				}
				lv_imports_0_0=ruleImport
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					add(
						$current,
						"imports",
						lv_imports_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.Import");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getQueryMQLqueryParserRuleCall_1_0());
				}
				lv_query_1_0=ruleMQLquery
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"query",
						lv_query_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.MQLquery");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleImport
entryRuleImport returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImportRule()); }
	iv_ruleImport=ruleImport
	{ $current=$iv_ruleImport.current; }
	EOF;

// Rule Import
ruleImport returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='import'
		{
			newLeafNode(otherlv_0, grammarAccess.getImportAccess().getImportKeyword_0());
		}
		(
			(
				lv_importURI_1_0=RULE_STRING
				{
					newLeafNode(lv_importURI_1_0, grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getImportRule());
					}
					setWithLastConsumed(
						$current,
						"importURI",
						lv_importURI_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleMQLquery
entryRuleMQLquery returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMQLqueryRule()); }
	iv_ruleMQLquery=ruleMQLquery
	{ $current=$iv_ruleMQLquery.current; }
	EOF;

// Rule MQLquery
ruleMQLquery returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='select'
		{
			newLeafNode(otherlv_0, grammarAccess.getMQLqueryAccess().getSelectKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_1_0());
				}
				lv_selectEntries_1_0=ruleSelectEntry
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMQLqueryRule());
					}
					add(
						$current,
						"selectEntries",
						lv_selectEntries_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SelectEntry");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getMQLqueryAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_2_1_0());
					}
					lv_selectEntries_3_0=ruleSelectEntry
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMQLqueryRule());
						}
						add(
							$current,
							"selectEntries",
							lv_selectEntries_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SelectEntry");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_4='from'
		{
			newLeafNode(otherlv_4, grammarAccess.getMQLqueryAccess().getFromKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_4_0());
				}
				lv_fromEntries_5_0=ruleFromEntry
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMQLqueryRule());
					}
					add(
						$current,
						"fromEntries",
						lv_fromEntries_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.FromEntry");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_6=','
			{
				newLeafNode(otherlv_6, grammarAccess.getMQLqueryAccess().getCommaKeyword_5_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_5_1_0());
					}
					lv_fromEntries_7_0=ruleFromEntry
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMQLqueryRule());
						}
						add(
							$current,
							"fromEntries",
							lv_fromEntries_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.FromEntry");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		(
			otherlv_8='where'
			{
				newLeafNode(otherlv_8, grammarAccess.getMQLqueryAccess().getWhereKeyword_6_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getMQLqueryAccess().getWhereEntriesWhereEntryParserRuleCall_6_1_0());
					}
					lv_whereEntries_9_0=ruleWhereEntry
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMQLqueryRule());
						}
						add(
							$current,
							"whereEntries",
							lv_whereEntries_9_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.WhereEntry");
						afterParserOrEnumRuleCall();
					}
				)
			)+
		)?
	)
;

// Entry rule entryRuleSelectEntry
entryRuleSelectEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSelectEntryRule()); }
	iv_ruleSelectEntry=ruleSelectEntry
	{ $current=$iv_ruleSelectEntry.current; }
	EOF;

// Rule SelectEntry
ruleSelectEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getSelectEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getSelectEntryAccess().getSelectFromEntryCrossReference_0_0());
				}
			)
		)
		(
			otherlv_1='.'
			{
				newLeafNode(otherlv_1, grammarAccess.getSelectEntryAccess().getFullStopKeyword_1_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getSelectEntryRule());
						}
					}
					otherlv_2=RULE_ID
					{
						newLeafNode(otherlv_2, grammarAccess.getSelectEntryAccess().getAttributeEAttributeCrossReference_1_1_0());
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleFromEntry
entryRuleFromEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFromEntryRule()); }
	iv_ruleFromEntry=ruleFromEntry
	{ $current=$iv_ruleFromEntry.current; }
	EOF;

// Rule FromEntry
ruleFromEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getFromEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getFromEntryAccess().getTypeEClassCrossReference_0_0());
				}
			)
		)
		(
			(
				lv_withoutsubtypes_1_0='withoutsubtypes'
				{
					newLeafNode(lv_withoutsubtypes_1_0, grammarAccess.getFromEntryAccess().getWithoutsubtypesWithoutsubtypesKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFromEntryRule());
					}
					setWithLastConsumed($current, "withoutsubtypes", lv_withoutsubtypes_1_0 != null, "withoutsubtypes");
				}
			)
		)?
		otherlv_2='as'
		{
			newLeafNode(otherlv_2, grammarAccess.getFromEntryAccess().getAsKeyword_2());
		}
		(
			(
				lv_alias_3_0=RULE_ID
				{
					newLeafNode(lv_alias_3_0, grammarAccess.getFromEntryAccess().getAliasIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFromEntryRule());
					}
					setWithLastConsumed(
						$current,
						"alias",
						lv_alias_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getFromEntryAccess().getScopeClauseScopeClauseParserRuleCall_4_0());
				}
				lv_scopeClause_4_0=ruleScopeClause
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFromEntryRule());
					}
					set(
						$current,
						"scopeClause",
						lv_scopeClause_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ScopeClause");
					afterParserOrEnumRuleCall();
				}
			)
		)?
	)
;

// Entry rule entryRuleScopeClause
entryRuleScopeClause returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScopeClauseRule()); }
	iv_ruleScopeClause=ruleScopeClause
	{ $current=$iv_ruleScopeClause.current; }
	EOF;

// Rule ScopeClause
ruleScopeClause returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_notIn_0_0='not'
				{
					newLeafNode(lv_notIn_0_0, grammarAccess.getScopeClauseAccess().getNotInNotKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getScopeClauseRule());
					}
					setWithLastConsumed($current, "notIn", lv_notIn_0_0 != null, "not");
				}
			)
		)?
		otherlv_1='in'
		{
			newLeafNode(otherlv_1, grammarAccess.getScopeClauseAccess().getInKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getScopeClauseAccess().getScopeScopeParserRuleCall_2_0());
				}
				lv_scope_2_0=ruleScope
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScopeClauseRule());
					}
					set(
						$current,
						"scope",
						lv_scope_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.Scope");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleScope
entryRuleScope returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScopeRule()); }
	iv_ruleScope=ruleScope
	{ $current=$iv_ruleScope.current; }
	EOF;

// Rule Scope
ruleScope returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getScopeAccess().getResourceScopeParserRuleCall_0());
		}
		this_ResourceScope_0=ruleResourceScope
		{
			$current = $this_ResourceScope_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getScopeAccess().getElementScopeParserRuleCall_1());
		}
		this_ElementScope_1=ruleElementScope
		{
			$current = $this_ElementScope_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleResourceScope
entryRuleResourceScope returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getResourceScopeRule()); }
	iv_ruleResourceScope=ruleResourceScope
	{ $current=$iv_ruleResourceScope.current; }
	EOF;

// Rule ResourceScope
ruleResourceScope returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='resources'
		{
			newLeafNode(otherlv_0, grammarAccess.getResourceScopeAccess().getResourcesKeyword_0());
		}
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getResourceScopeAccess().getLeftCurlyBracketKeyword_1());
		}
		(
			(
				lv_uris_2_0=RULE_STRING
				{
					newLeafNode(lv_uris_2_0, grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getResourceScopeRule());
					}
					addWithLastConsumed(
						$current,
						"uris",
						lv_uris_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
				}
			)
		)
		(
			otherlv_3=','
			{
				newLeafNode(otherlv_3, grammarAccess.getResourceScopeAccess().getCommaKeyword_3_0());
			}
			(
				(
					lv_uris_4_0=RULE_STRING
					{
						newLeafNode(lv_uris_4_0, grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getResourceScopeRule());
						}
						addWithLastConsumed(
							$current,
							"uris",
							lv_uris_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
					}
				)
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getResourceScopeAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleElementScope
entryRuleElementScope returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElementScopeRule()); }
	iv_ruleElementScope=ruleElementScope
	{ $current=$iv_ruleElementScope.current; }
	EOF;

// Rule ElementScope
ruleElementScope returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='elements'
		{
			newLeafNode(otherlv_0, grammarAccess.getElementScopeAccess().getElementsKeyword_0());
		}
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getElementScopeAccess().getLeftCurlyBracketKeyword_1());
		}
		(
			(
				lv_uris_2_0=RULE_STRING
				{
					newLeafNode(lv_uris_2_0, grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getElementScopeRule());
					}
					addWithLastConsumed(
						$current,
						"uris",
						lv_uris_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
				}
			)
		)
		(
			otherlv_3=','
			{
				newLeafNode(otherlv_3, grammarAccess.getElementScopeAccess().getCommaKeyword_3_0());
			}
			(
				(
					lv_uris_4_0=RULE_STRING
					{
						newLeafNode(lv_uris_4_0, grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getElementScopeRule());
						}
						addWithLastConsumed(
							$current,
							"uris",
							lv_uris_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
					}
				)
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getElementScopeAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleWhereEntry
entryRuleWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getWhereEntryRule()); }
	iv_ruleWhereEntry=ruleWhereEntry
	{ $current=$iv_ruleWhereEntry.current; }
	EOF;

// Rule WhereEntry
ruleWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getWhereEntryAccess().getAndWhereEntryParserRuleCall_0());
		}
		this_AndWhereEntry_0=ruleAndWhereEntry
		{
			$current = $this_AndWhereEntry_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndAdd(
						grammarAccess.getWhereEntryAccess().getOrWhereEntryEntriesAction_1_0(),
						$current);
				}
			)
			(
				otherlv_2='or'
				{
					newLeafNode(otherlv_2, grammarAccess.getWhereEntryAccess().getOrKeyword_1_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getWhereEntryAccess().getEntriesAndWhereEntryParserRuleCall_1_1_1_0());
						}
						lv_entries_3_0=ruleAndWhereEntry
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getWhereEntryRule());
							}
							add(
								$current,
								"entries",
								lv_entries_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.AndWhereEntry");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)+
		)?
	)
;

// Entry rule entryRuleAndWhereEntry
entryRuleAndWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAndWhereEntryRule()); }
	iv_ruleAndWhereEntry=ruleAndWhereEntry
	{ $current=$iv_ruleAndWhereEntry.current; }
	EOF;

// Rule AndWhereEntry
ruleAndWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAndWhereEntryAccess().getConcreteWhereEntryParserRuleCall_0());
		}
		this_ConcreteWhereEntry_0=ruleConcreteWhereEntry
		{
			$current = $this_ConcreteWhereEntry_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndAdd(
						grammarAccess.getAndWhereEntryAccess().getAndWhereEntryEntriesAction_1_0(),
						$current);
				}
			)
			(
				otherlv_2='and'
				{
					newLeafNode(otherlv_2, grammarAccess.getAndWhereEntryAccess().getAndKeyword_1_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getAndWhereEntryAccess().getEntriesConcreteWhereEntryParserRuleCall_1_1_1_0());
						}
						lv_entries_3_0=ruleConcreteWhereEntry
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getAndWhereEntryRule());
							}
							add(
								$current,
								"entries",
								lv_entries_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ConcreteWhereEntry");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)+
		)?
	)
;

// Entry rule entryRuleConcreteWhereEntry
entryRuleConcreteWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConcreteWhereEntryRule()); }
	iv_ruleConcreteWhereEntry=ruleConcreteWhereEntry
	{ $current=$iv_ruleConcreteWhereEntry.current; }
	EOF;

// Rule ConcreteWhereEntry
ruleConcreteWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getParWhereEntryParserRuleCall_0());
		}
		this_ParWhereEntry_0=ruleParWhereEntry
		{
			$current = $this_ParWhereEntry_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getAttributeWhereEntryParserRuleCall_1());
		}
		this_AttributeWhereEntry_1=ruleAttributeWhereEntry
		{
			$current = $this_AttributeWhereEntry_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getNullWhereEntryParserRuleCall_2());
		}
		this_NullWhereEntry_2=ruleNullWhereEntry
		{
			$current = $this_NullWhereEntry_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getReferenceAliasWhereEntryParserRuleCall_3());
		}
		this_ReferenceAliasWhereEntry_3=ruleReferenceAliasWhereEntry
		{
			$current = $this_ReferenceAliasWhereEntry_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getAliasWhereEntryParserRuleCall_4());
		}
		this_AliasWhereEntry_4=ruleAliasWhereEntry
		{
			$current = $this_AliasWhereEntry_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcreteWhereEntryAccess().getSubselectWhereEntryParserRuleCall_5());
		}
		this_SubselectWhereEntry_5=ruleSubselectWhereEntry
		{
			$current = $this_SubselectWhereEntry_5.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleParWhereEntry
entryRuleParWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParWhereEntryRule()); }
	iv_ruleParWhereEntry=ruleParWhereEntry
	{ $current=$iv_ruleParWhereEntry.current; }
	EOF;

// Rule ParWhereEntry
ruleParWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='('
		{
			newLeafNode(otherlv_0, grammarAccess.getParWhereEntryAccess().getLeftParenthesisKeyword_0());
		}
		{
			newCompositeNode(grammarAccess.getParWhereEntryAccess().getWhereEntryParserRuleCall_1());
		}
		this_WhereEntry_1=ruleWhereEntry
		{
			$current = $this_WhereEntry_1.current;
			afterParserOrEnumRuleCall();
		}
		otherlv_2=')'
		{
			newLeafNode(otherlv_2, grammarAccess.getParWhereEntryAccess().getRightParenthesisKeyword_2());
		}
	)
;

// Entry rule entryRuleAttributeWhereEntry
entryRuleAttributeWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeWhereEntryRule()); }
	iv_ruleAttributeWhereEntry=ruleAttributeWhereEntry
	{ $current=$iv_ruleAttributeWhereEntry.current; }
	EOF;

// Rule AttributeWhereEntry
ruleAttributeWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAttributeWhereEntryAccess().getNumericAttributeWhereEntryParserRuleCall_0());
		}
		this_NumericAttributeWhereEntry_0=ruleNumericAttributeWhereEntry
		{
			$current = $this_NumericAttributeWhereEntry_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeWhereEntryAccess().getStringAttributeWhereEntryParserRuleCall_1());
		}
		this_StringAttributeWhereEntry_1=ruleStringAttributeWhereEntry
		{
			$current = $this_StringAttributeWhereEntry_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeWhereEntryAccess().getBooleanAttributeWhereEntryParserRuleCall_2());
		}
		this_BooleanAttributeWhereEntry_2=ruleBooleanAttributeWhereEntry
		{
			$current = $this_BooleanAttributeWhereEntry_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeWhereEntryAccess().getVariableWhereEntryParserRuleCall_3());
		}
		this_VariableWhereEntry_3=ruleVariableWhereEntry
		{
			$current = $this_VariableWhereEntry_3.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleNumericAttributeWhereEntry
entryRuleNumericAttributeWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNumericAttributeWhereEntryRule()); }
	iv_ruleNumericAttributeWhereEntry=ruleNumericAttributeWhereEntry
	{ $current=$iv_ruleNumericAttributeWhereEntry.current; }
	EOF;

// Rule NumericAttributeWhereEntry
ruleNumericAttributeWhereEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getNumericAttributeWhereEntryAccess().getDoubleWhereEntryParserRuleCall_0());
		}
		this_DoubleWhereEntry_0=ruleDoubleWhereEntry
		{
			$current = $this_DoubleWhereEntry_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getNumericAttributeWhereEntryAccess().getLongWhereEntryParserRuleCall_1());
		}
		this_LongWhereEntry_1=ruleLongWhereEntry
		{
			$current = $this_LongWhereEntry_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleDoubleWhereEntry
entryRuleDoubleWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDoubleWhereEntryRule()); }
	iv_ruleDoubleWhereEntry=ruleDoubleWhereEntry
	{ $current=$iv_ruleDoubleWhereEntry.current; }
	EOF;

// Rule DoubleWhereEntry
ruleDoubleWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getDoubleWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getDoubleWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDoubleWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getDoubleWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleNumericOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDoubleWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NumericOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_value_4_0=RULE_SIGNED_DOUBLE
				{
					newLeafNode(lv_value_4_0, grammarAccess.getDoubleWhereEntryAccess().getValueSIGNED_DOUBLETerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDoubleWhereEntryRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SIGNED_DOUBLE");
				}
			)
		)
	)
;

// Entry rule entryRuleLongWhereEntry
entryRuleLongWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLongWhereEntryRule()); }
	iv_ruleLongWhereEntry=ruleLongWhereEntry
	{ $current=$iv_ruleLongWhereEntry.current; }
	EOF;

// Rule LongWhereEntry
ruleLongWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getLongWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getLongWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getLongWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLongWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getLongWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleNumericOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLongWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NumericOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_value_4_0=RULE_SINGED_LONG
				{
					newLeafNode(lv_value_4_0, grammarAccess.getLongWhereEntryAccess().getValueSINGED_LONGTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLongWhereEntryRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SINGED_LONG");
				}
			)
		)
	)
;

// Entry rule entryRuleVariableWhereEntry
entryRuleVariableWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableWhereEntryRule()); }
	iv_ruleVariableWhereEntry=ruleVariableWhereEntry
	{ $current=$iv_ruleVariableWhereEntry.current; }
	EOF;

// Rule VariableWhereEntry
ruleVariableWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getVariableWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getVariableWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleNumericOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVariableWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NumericOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableWhereEntryRule());
					}
				}
				otherlv_4=RULE_ID
				{
					newLeafNode(otherlv_4, grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0());
				}
			)
		)
		otherlv_5='.'
		{
			newLeafNode(otherlv_5, grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_5());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableWhereEntryRule());
					}
				}
				otherlv_6=RULE_ID
				{
					newLeafNode(otherlv_6, grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeCrossReference_6_0());
				}
			)
		)
	)
;

// Entry rule entryRuleStringAttributeWhereEntry
entryRuleStringAttributeWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStringAttributeWhereEntryRule()); }
	iv_ruleStringAttributeWhereEntry=ruleStringAttributeWhereEntry
	{ $current=$iv_ruleStringAttributeWhereEntry.current; }
	EOF;

// Rule StringAttributeWhereEntry
ruleStringAttributeWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getStringAttributeWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getStringAttributeWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getStringAttributeWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorStringOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleStringOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getStringAttributeWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.StringOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_pattern_4_0=RULE_STRING
				{
					newLeafNode(lv_pattern_4_0, grammarAccess.getStringAttributeWhereEntryAccess().getPatternSTRINGTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getStringAttributeWhereEntryRule());
					}
					setWithLastConsumed(
						$current,
						"pattern",
						lv_pattern_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleBooleanAttributeWhereEntry
entryRuleBooleanAttributeWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBooleanAttributeWhereEntryRule()); }
	iv_ruleBooleanAttributeWhereEntry=ruleBooleanAttributeWhereEntry
	{ $current=$iv_ruleBooleanAttributeWhereEntry.current; }
	EOF;

// Rule BooleanAttributeWhereEntry
ruleBooleanAttributeWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getBooleanAttributeWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getBooleanAttributeWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBooleanAttributeWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getBooleanAttributeWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleBooleanOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBooleanAttributeWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.BooleanOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				(
					lv_isTrue_4_0='true'
					{
						newLeafNode(lv_isTrue_4_0, grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueTrueKeyword_4_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getBooleanAttributeWhereEntryRule());
						}
						setWithLastConsumed($current, "isTrue", lv_isTrue_4_0 != null, "true");
					}
				)
			)
			    |
			otherlv_5='false'
			{
				newLeafNode(otherlv_5, grammarAccess.getBooleanAttributeWhereEntryAccess().getFalseKeyword_4_1());
			}
		)
	)
;

// Entry rule entryRuleNullWhereEntry
entryRuleNullWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNullWhereEntryRule()); }
	iv_ruleNullWhereEntry=ruleNullWhereEntry
	{ $current=$iv_ruleNullWhereEntry.current; }
	EOF;

// Rule NullWhereEntry
ruleNullWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getNullWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getNullWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getNullWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getNullWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureCrossReference_2_0());
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getNullWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0());
				}
				lv_operator_3_0=ruleBooleanOperator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getNullWhereEntryRule());
					}
					set(
						$current,
						"operator",
						lv_operator_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.BooleanOperator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='null'
		{
			newLeafNode(otherlv_4, grammarAccess.getNullWhereEntryAccess().getNullKeyword_4());
		}
	)
;

// Entry rule entryRuleReferenceAliasWhereEntry
entryRuleReferenceAliasWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getReferenceAliasWhereEntryRule()); }
	iv_ruleReferenceAliasWhereEntry=ruleReferenceAliasWhereEntry
	{ $current=$iv_ruleReferenceAliasWhereEntry.current; }
	EOF;

// Rule ReferenceAliasWhereEntry
ruleReferenceAliasWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getReferenceAliasWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getReferenceAliasWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getReferenceAliasWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceCrossReference_2_0());
				}
			)
		)
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getReferenceAliasWhereEntryAccess().getEqualsSignKeyword_3());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getReferenceAliasWhereEntryRule());
					}
				}
				otherlv_4=RULE_ID
				{
					newLeafNode(otherlv_4, grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0());
				}
			)
		)
	)
;

// Entry rule entryRuleSubselectWhereEntry
entryRuleSubselectWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSubselectWhereEntryRule()); }
	iv_ruleSubselectWhereEntry=ruleSubselectWhereEntry
	{ $current=$iv_ruleSubselectWhereEntry.current; }
	EOF;

// Rule SubselectWhereEntry
ruleSubselectWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getSubselectWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getSubselectWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='.'
		{
			newLeafNode(otherlv_1, grammarAccess.getSubselectWhereEntryAccess().getFullStopKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSubselectWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getSubselectWhereEntryAccess().getReferenceEReferenceCrossReference_2_0());
				}
			)
		)
		(
			(
				lv_notIn_3_0='not'
				{
					newLeafNode(lv_notIn_3_0, grammarAccess.getSubselectWhereEntryAccess().getNotInNotKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSubselectWhereEntryRule());
					}
					setWithLastConsumed($current, "notIn", lv_notIn_3_0 != null, "not");
				}
			)
		)?
		otherlv_4='in'
		{
			newLeafNode(otherlv_4, grammarAccess.getSubselectWhereEntryAccess().getInKeyword_4());
		}
		otherlv_5='('
		{
			newLeafNode(otherlv_5, grammarAccess.getSubselectWhereEntryAccess().getLeftParenthesisKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSubselectWhereEntryAccess().getSubQueryMQLqueryParserRuleCall_6_0());
				}
				lv_subQuery_6_0=ruleMQLquery
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSubselectWhereEntryRule());
					}
					set(
						$current,
						"subQuery",
						lv_subQuery_6_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.MQLquery");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_7=')'
		{
			newLeafNode(otherlv_7, grammarAccess.getSubselectWhereEntryAccess().getRightParenthesisKeyword_7());
		}
	)
;

// Entry rule entryRuleAliasWhereEntry
entryRuleAliasWhereEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAliasWhereEntryRule()); }
	iv_ruleAliasWhereEntry=ruleAliasWhereEntry
	{ $current=$iv_ruleAliasWhereEntry.current; }
	EOF;

// Rule AliasWhereEntry
ruleAliasWhereEntry returns [EObject current=null]
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
						$current = createModelElement(grammarAccess.getAliasWhereEntryRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0());
				}
			)
		)
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getAliasWhereEntryAccess().getEqualsSignKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAliasWhereEntryRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_2_0());
				}
			)
		)
	)
;

// Rule NumericOperator
ruleNumericOperator returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='<'
			{
				$current = grammarAccess.getNumericOperatorAccess().getLessThenEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getNumericOperatorAccess().getLessThenEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='>'
			{
				$current = grammarAccess.getNumericOperatorAccess().getGreaterThenEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getNumericOperatorAccess().getGreaterThenEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='<='
			{
				$current = grammarAccess.getNumericOperatorAccess().getLessEqualEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getNumericOperatorAccess().getLessEqualEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='>='
			{
				$current = grammarAccess.getNumericOperatorAccess().getGreaterEqualEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getNumericOperatorAccess().getGreaterEqualEnumLiteralDeclaration_3());
			}
		)
		    |
		(
			enumLiteral_4='='
			{
				$current = grammarAccess.getNumericOperatorAccess().getEqualEnumLiteralDeclaration_4().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_4, grammarAccess.getNumericOperatorAccess().getEqualEnumLiteralDeclaration_4());
			}
		)
		    |
		(
			enumLiteral_5='!='
			{
				$current = grammarAccess.getNumericOperatorAccess().getNotEqualEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_5, grammarAccess.getNumericOperatorAccess().getNotEqualEnumLiteralDeclaration_5());
			}
		)
	)
;

// Rule StringOperator
ruleStringOperator returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='='
			{
				$current = grammarAccess.getStringOperatorAccess().getEqualEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getStringOperatorAccess().getEqualEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='!='
			{
				$current = grammarAccess.getStringOperatorAccess().getNotEqualEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getStringOperatorAccess().getNotEqualEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='like'
			{
				$current = grammarAccess.getStringOperatorAccess().getLikeEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getStringOperatorAccess().getLikeEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='notlike'
			{
				$current = grammarAccess.getStringOperatorAccess().getNotLikeEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getStringOperatorAccess().getNotLikeEnumLiteralDeclaration_3());
			}
		)
	)
;

// Rule BooleanOperator
ruleBooleanOperator returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='='
			{
				$current = grammarAccess.getBooleanOperatorAccess().getEqualEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getBooleanOperatorAccess().getEqualEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='!='
			{
				$current = grammarAccess.getBooleanOperatorAccess().getNotEqualEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getBooleanOperatorAccess().getNotEqualEnumLiteralDeclaration_1());
			}
		)
	)
;

RULE_SINGED_LONG : '-'? ('0'..'9')+;

RULE_SIGNED_DOUBLE : '-'? ('0'..'9')+ ('.' ('0'..'9')+)?;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;
