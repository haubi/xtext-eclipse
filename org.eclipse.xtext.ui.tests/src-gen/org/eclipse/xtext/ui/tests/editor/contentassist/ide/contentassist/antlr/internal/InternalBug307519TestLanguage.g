/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug307519TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug307519TestLanguageGrammarAccess;

}
@parser::members {
	private Bug307519TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug307519TestLanguageGrammarAccess grammarAccess) {
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
		(
			{ before(grammarAccess.getModelAccess().getAlternatives()); }
			(rule__Model__Alternatives)
			{ after(grammarAccess.getModelAccess().getAlternatives()); }
		)
		(
			{ before(grammarAccess.getModelAccess().getAlternatives()); }
			(rule__Model__Alternatives)*
			{ after(grammarAccess.getModelAccess().getAlternatives()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElem1
entryRuleElem1
:
{ before(grammarAccess.getElem1Rule()); }
	 ruleElem1
{ after(grammarAccess.getElem1Rule()); } 
	 EOF 
;

// Rule Elem1
ruleElem1 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElem1Access().getValueAssignment()); }
		(rule__Elem1__ValueAssignment)
		{ after(grammarAccess.getElem1Access().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElem2
entryRuleElem2
:
{ before(grammarAccess.getElem2Rule()); }
	 ruleElem2
{ after(grammarAccess.getElem2Rule()); } 
	 EOF 
;

// Rule Elem2
ruleElem2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElem2Access().getGroup()); }
		(rule__Elem2__Group__0)
		{ after(grammarAccess.getElem2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule EnumT
ruleEnumT
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEnumTAccess().getAlternatives()); }
		(rule__EnumT__Alternatives)
		{ after(grammarAccess.getEnumTAccess().getAlternatives()); }
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
		{ before(grammarAccess.getModelAccess().getE1Assignment_0()); }
		(rule__Model__E1Assignment_0)
		{ after(grammarAccess.getModelAccess().getE1Assignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getE2Assignment_1()); }
		(rule__Model__E2Assignment_1)
		{ after(grammarAccess.getModelAccess().getE2Assignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EnumT__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEnumTAccess().getT1EnumLiteralDeclaration_0()); }
		('T1')
		{ after(grammarAccess.getEnumTAccess().getT1EnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getEnumTAccess().getT2EnumLiteralDeclaration_1()); }
		('T2')
		{ after(grammarAccess.getEnumTAccess().getT2EnumLiteralDeclaration_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Elem2__Group__0__Impl
	rule__Elem2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElem2Access().getValueAssignment_0()); }
	(rule__Elem2__ValueAssignment_0)
	{ after(grammarAccess.getElem2Access().getValueAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Elem2__Group__1__Impl
	rule__Elem2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElem2Access().getFooKeyword_1()); }
	'foo'
	{ after(grammarAccess.getElem2Access().getFooKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Elem2__Group__2__Impl
	rule__Elem2__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElem2Access().getPercentSignKeyword_2()); }
	'%'
	{ after(grammarAccess.getElem2Access().getPercentSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Elem2__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElem2Access().getDollarSignKeyword_3()); }
	'$'
	{ after(grammarAccess.getElem2Access().getDollarSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__E1Assignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getE1Elem1ParserRuleCall_0_0()); }
		ruleElem1
		{ after(grammarAccess.getModelAccess().getE1Elem1ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__E2Assignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getE2Elem2ParserRuleCall_1_0()); }
		ruleElem2
		{ after(grammarAccess.getModelAccess().getE2Elem2ParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem1__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElem1Access().getValueEnumTEnumRuleCall_0()); }
		ruleEnumT
		{ after(grammarAccess.getElem1Access().getValueEnumTEnumRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Elem2__ValueAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElem2Access().getValueEnumTEnumRuleCall_0_0()); }
		ruleEnumT
		{ after(grammarAccess.getElem2Access().getValueEnumTEnumRuleCall_0_0()); }
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
