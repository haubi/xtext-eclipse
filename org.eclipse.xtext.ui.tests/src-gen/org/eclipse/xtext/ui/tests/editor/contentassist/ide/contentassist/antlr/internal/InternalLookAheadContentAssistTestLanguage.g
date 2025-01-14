/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalLookAheadContentAssistTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.LookAheadContentAssistTestLanguageGrammarAccess;

}
@parser::members {
	private LookAheadContentAssistTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(LookAheadContentAssistTestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getGroup()); }
		(rule__Model__Group__0)
		{ after(grammarAccess.getModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getValueAssignment()); }
		(rule__Attribute__ValueAssignment)
		{ after(grammarAccess.getAttributeAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePair
entryRulePair
:
{ before(grammarAccess.getPairRule()); }
	 rulePair
{ after(grammarAccess.getPairRule()); } 
	 EOF 
;

// Rule Pair
rulePair 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPairAccess().getGroup()); }
		(rule__Pair__Group__0)
		{ after(grammarAccess.getPairAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_0()); }
		(rule__Model__Group_1_0__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_1()); }
		(rule__Model__Group_1_1__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_1()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_2()); }
		(rule__Model__Group_1_2__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_2()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_3()); }
		(rule__Model__Group_1_3__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getModelAction_0()); }
	()
	{ after(grammarAccess.getModelAccess().getModelAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAlternatives_1()); }
	(rule__Model__Alternatives_1)
	{ after(grammarAccess.getModelAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_0__0__Impl
	rule__Model__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftParenthesisKeyword_1_0_0()); }
	'('
	{ after(grammarAccess.getModelAccess().getLeftParenthesisKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_0__1__Impl
	rule__Model__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_0_1()); }
	(rule__Model__AttributeAssignment_1_0_1)*
	{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_0__2__Impl
	rule__Model__Group_1_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_0_2()); }
	(rule__Model__AttributeAssignment_1_0_2)*
	{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_0__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightParenthesisKeyword_1_0_3()); }
	')'
	{ after(grammarAccess.getModelAccess().getRightParenthesisKeyword_1_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_1__0__Impl
	rule__Model__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftSquareBracketKeyword_1_1_0()); }
	'['
	{ after(grammarAccess.getModelAccess().getLeftSquareBracketKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_1__1__Impl
	rule__Model__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_1_1()); }
		(rule__Model__AttributeAssignment_1_1_1)
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_1_1()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_1_1()); }
		(rule__Model__AttributeAssignment_1_1_1)*
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_1_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_1__2__Impl
	rule__Model__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_1_2()); }
	(rule__Model__AttributeAssignment_1_1_2)*
	{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightSquareBracketKeyword_1_1_3()); }
	']'
	{ after(grammarAccess.getModelAccess().getRightSquareBracketKeyword_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_2__0__Impl
	rule__Model__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLessThanSignKeyword_1_2_0()); }
	'<'
	{ after(grammarAccess.getModelAccess().getLessThanSignKeyword_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_2__1__Impl
	rule__Model__Group_1_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_2_1()); }
	(rule__Model__AttributeAssignment_1_2_1)*
	{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_2__2__Impl
	rule__Model__Group_1_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_2_2()); }
		(rule__Model__AttributeAssignment_1_2_2)
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_2_2()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_2_2()); }
		(rule__Model__AttributeAssignment_1_2_2)*
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_2_2()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGreaterThanSignKeyword_1_2_3()); }
	'>'
	{ after(grammarAccess.getModelAccess().getGreaterThanSignKeyword_1_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__0__Impl
	rule__Model__Group_1_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_0()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__1__Impl
	rule__Model__Group_1_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_3_1()); }
		(rule__Model__AttributeAssignment_1_3_1)
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_3_1()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_3_1()); }
		(rule__Model__AttributeAssignment_1_3_1)*
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_3_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__2__Impl
	rule__Model__Group_1_3__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_3_2()); }
		(rule__Model__AttributeAssignment_1_3_2)
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_3_2()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getAttributeAssignment_1_3_2()); }
		(rule__Model__AttributeAssignment_1_3_2)*
		{ after(grammarAccess.getModelAccess().getAttributeAssignment_1_3_2()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_3()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Pair__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pair__Group__0__Impl
	rule__Pair__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPairAccess().getNameAssignment_0()); }
	(rule__Pair__NameAssignment_0)
	{ after(grammarAccess.getPairAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pair__Group__1__Impl
	rule__Pair__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPairAccess().getEqualsSignKeyword_1()); }
	'='
	{ after(grammarAccess.getPairAccess().getEqualsSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pair__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPairAccess().getValueAssignment_2()); }
	(rule__Pair__ValueAssignment_2)
	{ after(grammarAccess.getPairAccess().getValueAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__AttributeAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_0_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_0_2_0()); }
		rulePair
		{ after(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_1_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_1_2_0()); }
		rulePair
		{ after(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_2_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_2_2_0()); }
		rulePair
		{ after(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_3_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__AttributeAssignment_1_3_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_3_2_0()); }
		rulePair
		{ after(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_3_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getValueIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getValueIDTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPairAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getPairAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pair__ValueAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPairAccess().getValueIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getPairAccess().getValueIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
