/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug286935TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug286935TestLanguageGrammarAccess;

}
@parser::members {
	private Bug286935TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug286935TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleState
entryRuleState
:
{ before(grammarAccess.getStateRule()); }
	 ruleState
{ after(grammarAccess.getStateRule()); } 
	 EOF 
;

// Rule State
ruleState 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStateAccess().getGroup()); }
		(rule__State__Group__0)
		{ after(grammarAccess.getStateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule StateType
ruleStateType
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateTypeAccess().getAlternatives()); }
		(rule__StateType__Alternatives)
		{ after(grammarAccess.getStateTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsInitialAssignment_1_0()); }
		(rule__State__IsInitialAssignment_1_0)
		{ after(grammarAccess.getStateAccess().getIsInitialAssignment_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getStateAccess().getIsFinalAssignment_1_1()); }
		(rule__State__IsFinalAssignment_1_1)
		{ after(grammarAccess.getStateAccess().getIsFinalAssignment_1_1()); }
	)
	|
	(
		{ before(grammarAccess.getStateAccess().getStateKindAssignment_1_2()); }
		(rule__State__StateKindAssignment_1_2)
		{ after(grammarAccess.getStateAccess().getStateKindAssignment_1_2()); }
	)
	|
	(
		{ before(grammarAccess.getStateAccess().getGroup_1_3()); }
		(rule__State__Group_1_3__0)
		{ after(grammarAccess.getStateAccess().getGroup_1_3()); }
	)
	|
	(
		{ before(grammarAccess.getStateAccess().getGroup_1_4()); }
		(rule__State__Group_1_4__0)
		{ after(grammarAccess.getStateAccess().getGroup_1_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StateType__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateTypeAccess().getNORMALEnumLiteralDeclaration_0()); }
		('NORMAL')
		{ after(grammarAccess.getStateTypeAccess().getNORMALEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getStateTypeAccess().getPSEUDOEnumLiteralDeclaration_1()); }
		('cond')
		{ after(grammarAccess.getStateTypeAccess().getPSEUDOEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getStateTypeAccess().getREFERENCEEnumLiteralDeclaration_2()); }
		('reference')
		{ after(grammarAccess.getStateTypeAccess().getREFERENCEEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getStateTypeAccess().getTEXTUALEnumLiteralDeclaration_3()); }
		('textual')
		{ after(grammarAccess.getStateTypeAccess().getTEXTUALEnumLiteralDeclaration_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__0__Impl
	rule__State__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateAction_0()); }
	()
	{ after(grammarAccess.getStateAccess().getStateAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__1__Impl
	rule__State__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getAlternatives_1()); }
	(rule__State__Alternatives_1)?
	{ after(grammarAccess.getStateAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__2__Impl
	rule__State__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateKeyword_2()); }
	('state')?
	{ after(grammarAccess.getStateAccess().getStateKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__3__Impl
	rule__State__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateNameAssignment_3()); }
	(rule__State__StateNameAssignment_3)?
	{ after(grammarAccess.getStateAccess().getStateNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getLabelAssignment_4()); }
	(rule__State__LabelAssignment_4)?
	{ after(grammarAccess.getStateAccess().getLabelAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group_1_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_1_3__0__Impl
	rule__State__Group_1_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getIsInitialAssignment_1_3_0()); }
	(rule__State__IsInitialAssignment_1_3_0)
	{ after(grammarAccess.getStateAccess().getIsInitialAssignment_1_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_1_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateKindAssignment_1_3_1()); }
	(rule__State__StateKindAssignment_1_3_1)
	{ after(grammarAccess.getStateAccess().getStateKindAssignment_1_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__Group_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_1_4__0__Impl
	rule__State__Group_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getIsInitialAssignment_1_4_0()); }
	(rule__State__IsInitialAssignment_1_4_0)
	{ after(grammarAccess.getStateAccess().getIsInitialAssignment_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_1_4__1__Impl
	rule__State__Group_1_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getStateKindAssignment_1_4_1()); }
	(rule__State__StateKindAssignment_1_4_1)
	{ after(grammarAccess.getStateAccess().getStateKindAssignment_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__State__Group_1_4__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__State__Group_1_4__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStateAccess().getIsFinalAssignment_1_4_2()); }
	(rule__State__IsFinalAssignment_1_4_2)
	{ after(grammarAccess.getStateAccess().getIsFinalAssignment_1_4_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__State__IsInitialAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_0_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_0_0()); }
			'init'
			{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_0_0()); }
		)
		{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__IsFinalAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_1_0()); }
			'final'
			{ after(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__StateKindAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_2_0()); }
		ruleStateType
		{ after(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__IsInitialAssignment_1_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_3_0_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_3_0_0()); }
			'init'
			{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_3_0_0()); }
		)
		{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__StateKindAssignment_1_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_3_1_0()); }
		ruleStateType
		{ after(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__IsInitialAssignment_1_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_4_0_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_4_0_0()); }
			'init'
			{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_4_0_0()); }
		)
		{ after(grammarAccess.getStateAccess().getIsInitialInitKeyword_1_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__StateKindAssignment_1_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_4_1_0()); }
		ruleStateType
		{ after(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__IsFinalAssignment_1_4_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_4_2_0()); }
		(
			{ before(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_4_2_0()); }
			'final'
			{ after(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_4_2_0()); }
		)
		{ after(grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_4_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__StateNameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getStateNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getStateAccess().getStateNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__State__LabelAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStateAccess().getLabelSTRINGTerminalRuleCall_4_0()); }
		RULE_STRING
		{ after(grammarAccess.getStateAccess().getLabelSTRINGTerminalRuleCall_4_0()); }
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
