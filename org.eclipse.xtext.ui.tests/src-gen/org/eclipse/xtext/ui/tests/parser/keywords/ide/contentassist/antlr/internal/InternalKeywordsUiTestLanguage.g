/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalKeywordsUiTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.parser.keywords.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.parser.keywords.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.parser.keywords.services.KeywordsUiTestLanguageGrammarAccess;

}
@parser::members {
	private KeywordsUiTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(KeywordsUiTestLanguageGrammarAccess grammarAccess) {
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

rule__Model__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFirstAssignment_0()); }
		(rule__Model__FirstAssignment_0)
		{ after(grammarAccess.getModelAccess().getFirstAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getSecondAssignment_1()); }
		(rule__Model__SecondAssignment_1)
		{ after(grammarAccess.getModelAccess().getSecondAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getThirdAssignment_2()); }
		(rule__Model__ThirdAssignment_2)
		{ after(grammarAccess.getModelAccess().getThirdAssignment_2()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getForthAssignment_3()); }
		(rule__Model__ForthAssignment_3)
		{ after(grammarAccess.getModelAccess().getForthAssignment_3()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getFifthAssignment_4()); }
		(rule__Model__FifthAssignment_4)
		{ after(grammarAccess.getModelAccess().getFifthAssignment_4()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getSixthAssignment_5()); }
		(rule__Model__SixthAssignment_5)
		{ after(grammarAccess.getModelAccess().getSixthAssignment_5()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getSeventhAssignment_6()); }
		(rule__Model__SeventhAssignment_6)
		{ after(grammarAccess.getModelAccess().getSeventhAssignment_6()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getEighthAssignment_7()); }
		(rule__Model__EighthAssignment_7)
		{ after(grammarAccess.getModelAccess().getEighthAssignment_7()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__FirstAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFirstFooBarKeyword_0_0()); }
		(
			{ before(grammarAccess.getModelAccess().getFirstFooBarKeyword_0_0()); }
			'foo\\bar'
			{ after(grammarAccess.getModelAccess().getFirstFooBarKeyword_0_0()); }
		)
		{ after(grammarAccess.getModelAccess().getFirstFooBarKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__SecondAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getSecondFooKeyword_1_0()); }
		(
			{ before(grammarAccess.getModelAccess().getSecondFooKeyword_1_0()); }
			'foo\\'
			{ after(grammarAccess.getModelAccess().getSecondFooKeyword_1_0()); }
		)
		{ after(grammarAccess.getModelAccess().getSecondFooKeyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ThirdAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getThirdBarKeyword_2_0()); }
		(
			{ before(grammarAccess.getModelAccess().getThirdBarKeyword_2_0()); }
			'\\bar'
			{ after(grammarAccess.getModelAccess().getThirdBarKeyword_2_0()); }
		)
		{ after(grammarAccess.getModelAccess().getThirdBarKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ForthAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getForthBackslashKeyword_3_0()); }
		(
			{ before(grammarAccess.getModelAccess().getForthBackslashKeyword_3_0()); }
			'\\'
			{ after(grammarAccess.getModelAccess().getForthBackslashKeyword_3_0()); }
		)
		{ after(grammarAccess.getModelAccess().getForthBackslashKeyword_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__FifthAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFifthAKeyword_4_0()); }
		(
			{ before(grammarAccess.getModelAccess().getFifthAKeyword_4_0()); }
			'"a"'
			{ after(grammarAccess.getModelAccess().getFifthAKeyword_4_0()); }
		)
		{ after(grammarAccess.getModelAccess().getFifthAKeyword_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__SixthAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getSixthBKeyword_5_0()); }
		(
			{ before(grammarAccess.getModelAccess().getSixthBKeyword_5_0()); }
			'\'b\''
			{ after(grammarAccess.getModelAccess().getSixthBKeyword_5_0()); }
		)
		{ after(grammarAccess.getModelAccess().getSixthBKeyword_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__SeventhAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getSeventhCKeyword_6_0()); }
		(
			{ before(grammarAccess.getModelAccess().getSeventhCKeyword_6_0()); }
			'\'c\''
			{ after(grammarAccess.getModelAccess().getSeventhCKeyword_6_0()); }
		)
		{ after(grammarAccess.getModelAccess().getSeventhCKeyword_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__EighthAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getEighthDKeyword_7_0()); }
		(
			{ before(grammarAccess.getModelAccess().getEighthDKeyword_7_0()); }
			'"d"'
			{ after(grammarAccess.getModelAccess().getEighthDKeyword_7_0()); }
		)
		{ after(grammarAccess.getModelAccess().getEighthDKeyword_7_0()); }
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
