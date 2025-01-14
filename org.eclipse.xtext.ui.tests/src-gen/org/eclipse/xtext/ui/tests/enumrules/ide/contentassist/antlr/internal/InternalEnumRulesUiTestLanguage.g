/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalEnumRulesUiTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.enumrules.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.enumrules.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.enumrules.services.EnumRulesUiTestLanguageGrammarAccess;

}
@parser::members {
	private EnumRulesUiTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(EnumRulesUiTestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getAlternatives()); }
		(rule__Model__Alternatives)
		{ after(grammarAccess.getModelAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule ExistingEnum
ruleExistingEnum
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExistingEnumAccess().getAlternatives()); }
		(rule__ExistingEnum__Alternatives)
		{ after(grammarAccess.getExistingEnumAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule GeneratedEnum
ruleGeneratedEnum
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGeneratedEnumAccess().getAlternatives()); }
		(rule__GeneratedEnum__Alternatives)
		{ after(grammarAccess.getGeneratedEnumAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGroup_0()); }
		(rule__Model__Group_0__0)
		{ after(grammarAccess.getModelAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1()); }
		(rule__Model__Group_1__0)
		{ after(grammarAccess.getModelAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExistingEnum__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExistingEnumAccess().getSameNameEnumLiteralDeclaration_0()); }
		('SameName')
		{ after(grammarAccess.getExistingEnumAccess().getSameNameEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getExistingEnumAccess().getOverriddenLiteralEnumLiteralDeclaration_1()); }
		('overridden')
		{ after(grammarAccess.getExistingEnumAccess().getOverriddenLiteralEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getExistingEnumAccess().getDifferentNameEnumLiteralDeclaration_2()); }
		('DifferentLiteral')
		{ after(grammarAccess.getExistingEnumAccess().getDifferentNameEnumLiteralDeclaration_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GeneratedEnum__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGeneratedEnumAccess().getSameNameEnumLiteralDeclaration_0()); }
		('SameName')
		{ after(grammarAccess.getGeneratedEnumAccess().getSameNameEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getGeneratedEnumAccess().getDifferentNameEnumLiteralDeclaration_1()); }
		('DifferentLiteral')
		{ after(grammarAccess.getGeneratedEnumAccess().getDifferentNameEnumLiteralDeclaration_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__0__Impl
	rule__Model__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getExistingKeyword_0_0()); }
	'existing'
	{ after(grammarAccess.getModelAccess().getExistingKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__1__Impl
	rule__Model__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getExistingAssignment_0_1()); }
	(rule__Model__ExistingAssignment_0_1)
	{ after(grammarAccess.getModelAccess().getExistingAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGroup_0_2()); }
	(rule__Model__Group_0_2__0)?
	{ after(grammarAccess.getModelAccess().getGroup_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_0_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0_2__0__Impl
	rule__Model__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGeneratedKeyword_0_2_0()); }
	'generated'
	{ after(grammarAccess.getModelAccess().getGeneratedKeyword_0_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGeneratedAssignment_0_2_1()); }
	(rule__Model__GeneratedAssignment_0_2_1)
	{ after(grammarAccess.getModelAccess().getGeneratedAssignment_0_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__0__Impl
	rule__Model__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGeneratedKeyword_1_0()); }
	'generated'
	{ after(grammarAccess.getModelAccess().getGeneratedKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getGeneratedAssignment_1_1()); }
	(rule__Model__GeneratedAssignment_1_1)
	{ after(grammarAccess.getModelAccess().getGeneratedAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ExistingAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getExistingExistingEnumEnumRuleCall_0_1_0()); }
		ruleExistingEnum
		{ after(grammarAccess.getModelAccess().getExistingExistingEnumEnumRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__GeneratedAssignment_0_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGeneratedGeneratedEnumEnumRuleCall_0_2_1_0()); }
		ruleGeneratedEnum
		{ after(grammarAccess.getModelAccess().getGeneratedGeneratedEnumEnumRuleCall_0_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__GeneratedAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGeneratedGeneratedEnumEnumRuleCall_1_1_0()); }
		ruleGeneratedEnum
		{ after(grammarAccess.getModelAccess().getGeneratedGeneratedEnumEnumRuleCall_1_1_0()); }
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
