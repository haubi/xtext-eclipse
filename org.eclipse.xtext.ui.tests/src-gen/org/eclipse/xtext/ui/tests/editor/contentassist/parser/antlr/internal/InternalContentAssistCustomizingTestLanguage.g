/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistCustomizingTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ContentAssistCustomizingTestLanguageGrammarAccess;

}

@parser::members {

 	private ContentAssistCustomizingTestLanguageGrammarAccess grammarAccess;

    public InternalContentAssistCustomizingTestLanguageParser(TokenStream input, ContentAssistCustomizingTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected ContentAssistCustomizingTestLanguageGrammarAccess getGrammarAccess() {
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
				newCompositeNode(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0());
			}
			lv_types_0_0=ruleType
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"types",
					lv_types_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.Type");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleType
entryRuleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeRule()); }
	iv_ruleType=ruleType
	{ $current=$iv_ruleType.current; }
	EOF;

// Rule Type
ruleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getTypeAccess().getNameFQNParserRuleCall_0_0_0());
					}
					lv_name_0_0=ruleFQN
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTypeRule());
						}
						set(
							$current,
							"name",
							lv_name_0_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.FQN");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					lv_name_1_0='FQN'
					{
						newLeafNode(lv_name_1_0, grammarAccess.getTypeAccess().getNameFQNKeyword_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getTypeRule());
						}
						setWithLastConsumed($current, "name", lv_name_1_0, "FQN");
					}
				)
			)
		)
		(
			otherlv_2='extends'
			{
				newLeafNode(otherlv_2, grammarAccess.getTypeAccess().getExtendsKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getTypeAccess().getSuperTypeTypeRefParserRuleCall_1_1_0());
					}
					lv_superType_3_0=ruleTypeRef
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTypeRule());
						}
						set(
							$current,
							"superType",
							lv_superType_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage.TypeRef");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getTypeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRuleTypeRef
entryRuleTypeRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeRefRule()); }
	iv_ruleTypeRef=ruleTypeRef
	{ $current=$iv_ruleTypeRef.current; }
	EOF;

// Rule TypeRef
ruleTypeRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getTypeRefRule());
				}
			}
			{
				newCompositeNode(grammarAccess.getTypeRefAccess().getTypeTypeCrossReference_0());
			}
			ruleFQN
			{
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null]:
	{ newCompositeNode(grammarAccess.getFQNRule()); }
	iv_ruleFQN=ruleFQN
	{ $current=$iv_ruleFQN.current.getText(); }
	EOF;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
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
			newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
