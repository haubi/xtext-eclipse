/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalTwoContextsTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.TwoContextsTestLanguageGrammarAccess;

}
@parser::members {
	private TwoContextsTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(TwoContextsTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleMainModel
entryRuleMainModel
:
{ before(grammarAccess.getMainModelRule()); }
	 ruleMainModel
{ after(grammarAccess.getMainModelRule()); } 
	 EOF 
;

// Rule MainModel
ruleMainModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMainModelAccess().getElementsAssignment()); }
		(rule__MainModel__ElementsAssignment)*
		{ after(grammarAccess.getMainModelAccess().getElementsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnElement
entryRuleAnElement
:
{ before(grammarAccess.getAnElementRule()); }
	 ruleAnElement
{ after(grammarAccess.getAnElementRule()); } 
	 EOF 
;

// Rule AnElement
ruleAnElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnElementAccess().getGroup()); }
		(rule__AnElement__Group__0)
		{ after(grammarAccess.getAnElementAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnElement__Group__0__Impl
	rule__AnElement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnElementAccess().getNameAssignment_0()); }
	(rule__AnElement__NameAssignment_0)
	{ after(grammarAccess.getAnElementAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnElement__Group__1__Impl
	rule__AnElement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnElementAccess().getGroup_1()); }
	(rule__AnElement__Group_1__0)?
	{ after(grammarAccess.getAnElementAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnElement__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnElementAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getAnElementAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnElement__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnElement__Group_1__0__Impl
	rule__AnElement__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnElementAccess().getRefersToKeyword_1_0()); }
	'refersTo'
	{ after(grammarAccess.getAnElementAccess().getRefersToKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnElement__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnElementAccess().getReferredAssignment_1_1()); }
	(rule__AnElement__ReferredAssignment_1_1)
	{ after(grammarAccess.getAnElementAccess().getReferredAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MainModel__ElementsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMainModelAccess().getElementsAnElementParserRuleCall_0()); }
		ruleAnElement
		{ after(grammarAccess.getMainModelAccess().getElementsAnElementParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnElementAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getAnElementAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnElement__ReferredAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnElementAccess().getReferredAnElementCrossReference_1_1_0()); }
		(
			{ before(grammarAccess.getAnElementAccess().getReferredAnElementIDTerminalRuleCall_1_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAnElementAccess().getReferredAnElementIDTerminalRuleCall_1_1_0_1()); }
		)
		{ after(grammarAccess.getAnElementAccess().getReferredAnElementCrossReference_1_1_0()); }
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
