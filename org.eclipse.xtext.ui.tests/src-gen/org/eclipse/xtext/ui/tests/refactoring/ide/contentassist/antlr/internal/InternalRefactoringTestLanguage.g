/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalRefactoringTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.refactoring.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.refactoring.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.refactoring.services.RefactoringTestLanguageGrammarAccess;

}
@parser::members {
	private RefactoringTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(RefactoringTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleMain
entryRuleMain
:
{ before(grammarAccess.getMainRule()); }
	 ruleMain
{ after(grammarAccess.getMainRule()); } 
	 EOF 
;

// Rule Main
ruleMain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMainAccess().getElementsAssignment()); }
		(rule__Main__ElementsAssignment)*
		{ after(grammarAccess.getMainAccess().getElementsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAbstractElement
entryRuleAbstractElement
:
{ before(grammarAccess.getAbstractElementRule()); }
	 ruleAbstractElement
{ after(grammarAccess.getAbstractElementRule()); } 
	 EOF 
;

// Rule AbstractElement
ruleAbstractElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAbstractElementAccess().getAlternatives()); }
		(rule__AbstractElement__Alternatives)
		{ after(grammarAccess.getAbstractElementAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleImport
entryRuleImport
:
{ before(grammarAccess.getImportRule()); }
	 ruleImport
{ after(grammarAccess.getImportRule()); } 
	 EOF 
;

// Rule Import
ruleImport 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getImportAccess().getGroup()); }
		(rule__Import__Group__0)
		{ after(grammarAccess.getImportAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElement
entryRuleElement
:
{ before(grammarAccess.getElementRule()); }
	 ruleElement
{ after(grammarAccess.getElementRule()); } 
	 EOF 
;

// Rule Element
ruleElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElementAccess().getGroup()); }
		(rule__Element__Group__0)
		{ after(grammarAccess.getElementAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQN
entryRuleFQN
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNAccess().getGroup()); }
		(rule__FQN__Group__0)
		{ after(grammarAccess.getFQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQNWithWC
entryRuleFQNWithWC
:
{ before(grammarAccess.getFQNWithWCRule()); }
	 ruleFQNWithWC
{ after(grammarAccess.getFQNWithWCRule()); } 
	 EOF 
;

// Rule FQNWithWC
ruleFQNWithWC 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNWithWCAccess().getGroup()); }
		(rule__FQNWithWC__Group__0)
		{ after(grammarAccess.getFQNWithWCAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AbstractElement__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAbstractElementAccess().getElementParserRuleCall_0()); }
		ruleElement
		{ after(grammarAccess.getAbstractElementAccess().getElementParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getAbstractElementAccess().getImportParserRuleCall_1()); }
		ruleImport
		{ after(grammarAccess.getAbstractElementAccess().getImportParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Alternatives_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getContainedAssignment_1_1_0()); }
		(rule__Element__ContainedAssignment_1_1_0)
		{ after(grammarAccess.getElementAccess().getContainedAssignment_1_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getElementAccess().getGroup_1_1_1()); }
		(rule__Element__Group_1_1_1__0)
		{ after(grammarAccess.getElementAccess().getGroup_1_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Import__Group__0__Impl
	rule__Import__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportAccess().getImportKeyword_0()); }
	'import'
	{ after(grammarAccess.getImportAccess().getImportKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Import__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
	(rule__Import__ImportedNamespaceAssignment_1)
	{ after(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__0__Impl
	rule__Element__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getNameAssignment_0()); }
	(rule__Element__NameAssignment_0)
	{ after(grammarAccess.getElementAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getGroup_1()); }
	(rule__Element__Group_1__0)?
	{ after(grammarAccess.getElementAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__0__Impl
	rule__Element__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getLeftCurlyBracketKeyword_1_0()); }
	'{'
	{ after(grammarAccess.getElementAccess().getLeftCurlyBracketKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__1__Impl
	rule__Element__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getAlternatives_1_1()); }
	(rule__Element__Alternatives_1_1)*
	{ after(grammarAccess.getElementAccess().getAlternatives_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getRightCurlyBracketKeyword_1_2()); }
	'}'
	{ after(grammarAccess.getElementAccess().getRightCurlyBracketKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_1_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1_1_1__0__Impl
	rule__Element__Group_1_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getRefKeyword_1_1_1_0()); }
	'ref'
	{ after(grammarAccess.getElementAccess().getRefKeyword_1_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getReferencedAssignment_1_1_1_1()); }
	(rule__Element__ReferencedAssignment_1_1_1_1)
	{ after(grammarAccess.getElementAccess().getReferencedAssignment_1_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_1()); }
	(rule__FQN__Group_1__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQNWithWC__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQNWithWC__Group__0__Impl
	rule__FQNWithWC__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQNWithWC__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNWithWCAccess().getFQNParserRuleCall_0()); }
	ruleFQN
	{ after(grammarAccess.getFQNWithWCAccess().getFQNParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQNWithWC__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQNWithWC__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQNWithWC__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNWithWCAccess().getFullStopAsteriskKeyword_1()); }
	('.*')?
	{ after(grammarAccess.getFQNWithWCAccess().getFullStopAsteriskKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Main__ElementsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMainAccess().getElementsAbstractElementParserRuleCall_0()); }
		ruleAbstractElement
		{ after(grammarAccess.getMainAccess().getElementsAbstractElementParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__ImportedNamespaceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImportAccess().getImportedNamespaceFQNWithWCParserRuleCall_1_0()); }
		ruleFQNWithWC
		{ after(grammarAccess.getImportAccess().getImportedNamespaceFQNWithWCParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__ContainedAssignment_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getContainedElementParserRuleCall_1_1_0_0()); }
		ruleElement
		{ after(grammarAccess.getElementAccess().getContainedElementParserRuleCall_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__ReferencedAssignment_1_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getReferencedElementCrossReference_1_1_1_1_0()); }
		(
			{ before(grammarAccess.getElementAccess().getReferencedElementFQNParserRuleCall_1_1_1_1_0_1()); }
			ruleFQN
			{ after(grammarAccess.getElementAccess().getReferencedElementFQNParserRuleCall_1_1_1_1_0_1()); }
		)
		{ after(grammarAccess.getElementAccess().getReferencedElementCrossReference_1_1_1_1_0()); }
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
