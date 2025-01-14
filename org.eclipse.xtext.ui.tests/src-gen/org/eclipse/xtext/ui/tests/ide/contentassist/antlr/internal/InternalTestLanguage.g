/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.services.TestLanguageGrammarAccess;

}
@parser::members {
	private TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleFile
entryRuleFile
:
{ before(grammarAccess.getFileRule()); }
	 ruleFile
{ after(grammarAccess.getFileRule()); } 
	 EOF 
;

// Rule File
ruleFile 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFileAccess().getStuffAssignment()); }
		(rule__File__StuffAssignment)*
		{ after(grammarAccess.getFileAccess().getStuffAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStuff
entryRuleStuff
:
{ before(grammarAccess.getStuffRule()); }
	 ruleStuff
{ after(grammarAccess.getStuffRule()); } 
	 EOF 
;

// Rule Stuff
ruleStuff 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStuffAccess().getGroup()); }
		(rule__Stuff__Group__0)
		{ after(grammarAccess.getStuffAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Stuff__Group__0__Impl
	rule__Stuff__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStuffAccess().getStuffKeyword_0()); }
	'stuff'
	{ after(grammarAccess.getStuffAccess().getStuffKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Stuff__Group__1__Impl
	rule__Stuff__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStuffAccess().getNameAssignment_1()); }
	(rule__Stuff__NameAssignment_1)
	{ after(grammarAccess.getStuffAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Stuff__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStuffAccess().getGroup_2()); }
	(rule__Stuff__Group_2__0)?
	{ after(grammarAccess.getStuffAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Stuff__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Stuff__Group_2__0__Impl
	rule__Stuff__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStuffAccess().getRefsKeyword_2_0()); }
	'refs'
	{ after(grammarAccess.getStuffAccess().getRefsKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Stuff__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStuffAccess().getRefsAssignment_2_1()); }
	(rule__Stuff__RefsAssignment_2_1)
	{ after(grammarAccess.getStuffAccess().getRefsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__File__StuffAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFileAccess().getStuffStuffParserRuleCall_0()); }
		ruleStuff
		{ after(grammarAccess.getFileAccess().getStuffStuffParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStuffAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getStuffAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Stuff__RefsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStuffAccess().getRefsStuffCrossReference_2_1_0()); }
		(
			{ before(grammarAccess.getStuffAccess().getRefsStuffIDTerminalRuleCall_2_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getStuffAccess().getRefsStuffIDTerminalRuleCall_2_1_0_1()); }
		)
		{ after(grammarAccess.getStuffAccess().getRefsStuffCrossReference_2_1_0()); }
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
