/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistContextTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ContentAssistContextTestLanguageGrammarAccess;

}

@parser::members {

 	private ContentAssistContextTestLanguageGrammarAccess grammarAccess;

    public InternalContentAssistContextTestLanguageParser(TokenStream input, ContentAssistContextTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "FirstLevel";
   	}

   	@Override
   	protected ContentAssistContextTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleFirstLevel
entryRuleFirstLevel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFirstLevelRule()); }
	iv_ruleFirstLevel=ruleFirstLevel
	{ $current=$iv_ruleFirstLevel.current; }
	EOF;

// Rule FirstLevel
ruleFirstLevel returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getFirstLevelAccess().getSecondLevelASecondLevelAParserRuleCall_0_0());
				}
				lv_secondLevelA_0_0=ruleSecondLevelA
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFirstLevelRule());
					}
					add(
						$current,
						"secondLevelA",
						lv_secondLevelA_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.SecondLevelA");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getFirstLevelAccess().getSecondLevelBSecondLevelBParserRuleCall_1_0());
				}
				lv_secondLevelB_1_0=ruleSecondLevelB
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFirstLevelRule());
					}
					add(
						$current,
						"secondLevelB",
						lv_secondLevelB_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.SecondLevelB");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleSecondLevelA
entryRuleSecondLevelA returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSecondLevelARule()); }
	iv_ruleSecondLevelA=ruleSecondLevelA
	{ $current=$iv_ruleSecondLevelA.current; }
	EOF;

// Rule SecondLevelA
ruleSecondLevelA returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getSecondLevelAAccess().getThirdLevelA1ThirdLevelA1ParserRuleCall_0_0());
				}
				lv_thirdLevelA1_0_0=ruleThirdLevelA1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSecondLevelARule());
					}
					add(
						$current,
						"thirdLevelA1",
						lv_thirdLevelA1_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.ThirdLevelA1");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		(
			(
				{
					newCompositeNode(grammarAccess.getSecondLevelAAccess().getThirdLevelA2ThirdLevelA2ParserRuleCall_1_0());
				}
				lv_thirdLevelA2_1_0=ruleThirdLevelA2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSecondLevelARule());
					}
					add(
						$current,
						"thirdLevelA2",
						lv_thirdLevelA2_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.ThirdLevelA2");
					afterParserOrEnumRuleCall();
				}
			)
		)+
	)
;

// Entry rule entryRuleSecondLevelB
entryRuleSecondLevelB returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSecondLevelBRule()); }
	iv_ruleSecondLevelB=ruleSecondLevelB
	{ $current=$iv_ruleSecondLevelB.current; }
	EOF;

// Rule SecondLevelB
ruleSecondLevelB returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getSecondLevelBAccess().getThirdLevelB1ThirdLevelB1ParserRuleCall_0_0());
				}
				lv_thirdLevelB1_0_0=ruleThirdLevelB1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSecondLevelBRule());
					}
					add(
						$current,
						"thirdLevelB1",
						lv_thirdLevelB1_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.ThirdLevelB1");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		(
			(
				{
					newCompositeNode(grammarAccess.getSecondLevelBAccess().getThirdLevelB2ThirdLevelB2ParserRuleCall_1_0());
				}
				lv_thirdLevelB2_1_0=ruleThirdLevelB2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSecondLevelBRule());
					}
					add(
						$current,
						"thirdLevelB2",
						lv_thirdLevelB2_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage.ThirdLevelB2");
					afterParserOrEnumRuleCall();
				}
			)
		)+
	)
;

// Entry rule entryRuleThirdLevelA1
entryRuleThirdLevelA1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getThirdLevelA1Rule()); }
	iv_ruleThirdLevelA1=ruleThirdLevelA1
	{ $current=$iv_ruleThirdLevelA1.current; }
	EOF;

// Rule ThirdLevelA1
ruleThirdLevelA1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='A1'
		{
			newLeafNode(otherlv_0, grammarAccess.getThirdLevelA1Access().getA1Keyword_0());
		}
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getThirdLevelA1Access().getThirdLevelA1Action_1(),
					$current);
			}
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getThirdLevelA1Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getThirdLevelA1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)?
	)
;

// Entry rule entryRuleThirdLevelA2
entryRuleThirdLevelA2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getThirdLevelA2Rule()); }
	iv_ruleThirdLevelA2=ruleThirdLevelA2
	{ $current=$iv_ruleThirdLevelA2.current; }
	EOF;

// Rule ThirdLevelA2
ruleThirdLevelA2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='A2'
		{
			newLeafNode(otherlv_0, grammarAccess.getThirdLevelA2Access().getA2Keyword_0());
		}
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getThirdLevelA2Access().getThirdLevelA2Action_1(),
					$current);
			}
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getThirdLevelA2Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getThirdLevelA2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)?
	)
;

// Entry rule entryRuleThirdLevelB1
entryRuleThirdLevelB1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getThirdLevelB1Rule()); }
	iv_ruleThirdLevelB1=ruleThirdLevelB1
	{ $current=$iv_ruleThirdLevelB1.current; }
	EOF;

// Rule ThirdLevelB1
ruleThirdLevelB1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='B1'
		{
			newLeafNode(otherlv_0, grammarAccess.getThirdLevelB1Access().getB1Keyword_0());
		}
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getThirdLevelB1Access().getThirdLevelB1Action_1(),
					$current);
			}
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getThirdLevelB1Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getThirdLevelB1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)?
	)
;

// Entry rule entryRuleThirdLevelB2
entryRuleThirdLevelB2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getThirdLevelB2Rule()); }
	iv_ruleThirdLevelB2=ruleThirdLevelB2
	{ $current=$iv_ruleThirdLevelB2.current; }
	EOF;

// Rule ThirdLevelB2
ruleThirdLevelB2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='B2'
		{
			newLeafNode(otherlv_0, grammarAccess.getThirdLevelB2Access().getB2Keyword_0());
		}
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getThirdLevelB2Access().getThirdLevelB2Action_1(),
					$current);
			}
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getThirdLevelB2Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getThirdLevelB2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
