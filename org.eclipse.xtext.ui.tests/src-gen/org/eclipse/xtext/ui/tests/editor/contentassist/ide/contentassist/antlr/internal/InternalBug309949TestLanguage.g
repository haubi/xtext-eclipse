/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug309949TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug309949TestLanguageGrammarAccess;

}
@parser::members {
	private Bug309949TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug309949TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleError_1
entryRuleError_1
:
{ before(grammarAccess.getError_1Rule()); }
	 ruleError_1
{ after(grammarAccess.getError_1Rule()); } 
	 EOF 
;

// Rule Error_1
ruleError_1 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getError_1Access().getGroup()); }
		(rule__Error_1__Group__0)
		{ after(grammarAccess.getError_1Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation_1
entryRuleOperation_1
:
{ before(grammarAccess.getOperation_1Rule()); }
	 ruleOperation_1
{ after(grammarAccess.getOperation_1Rule()); } 
	 EOF 
;

// Rule Operation_1
ruleOperation_1 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperation_1Access().getGroup()); }
		(rule__Operation_1__Group__0)
		{ after(grammarAccess.getOperation_1Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleError_2
entryRuleError_2
:
{ before(grammarAccess.getError_2Rule()); }
	 ruleError_2
{ after(grammarAccess.getError_2Rule()); } 
	 EOF 
;

// Rule Error_2
ruleError_2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getError_2Access().getGroup()); }
		(rule__Error_2__Group__0)
		{ after(grammarAccess.getError_2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation_2
entryRuleOperation_2
:
{ before(grammarAccess.getOperation_2Rule()); }
	 ruleOperation_2
{ after(grammarAccess.getOperation_2Rule()); } 
	 EOF 
;

// Rule Operation_2
ruleOperation_2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperation_2Access().getGroup()); }
		(rule__Operation_2__Group__0)
		{ after(grammarAccess.getOperation_2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleError_3
entryRuleError_3
:
{ before(grammarAccess.getError_3Rule()); }
	 ruleError_3
{ after(grammarAccess.getError_3Rule()); } 
	 EOF 
;

// Rule Error_3
ruleError_3 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getError_3Access().getGroup()); }
		(rule__Error_3__Group__0)
		{ after(grammarAccess.getError_3Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation_3
entryRuleOperation_3
:
{ before(grammarAccess.getOperation_3Rule()); }
	 ruleOperation_3
{ after(grammarAccess.getOperation_3Rule()); } 
	 EOF 
;

// Rule Operation_3
ruleOperation_3 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperation_3Access().getGroup()); }
		(rule__Operation_3__Group__0)
		{ after(grammarAccess.getOperation_3Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleError_4
entryRuleError_4
:
{ before(grammarAccess.getError_4Rule()); }
	 ruleError_4
{ after(grammarAccess.getError_4Rule()); } 
	 EOF 
;

// Rule Error_4
ruleError_4 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getError_4Access().getGroup()); }
		(rule__Error_4__Group__0)
		{ after(grammarAccess.getError_4Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation_4
entryRuleOperation_4
:
{ before(grammarAccess.getOperation_4Rule()); }
	 ruleOperation_4
{ after(grammarAccess.getOperation_4Rule()); } 
	 EOF 
;

// Rule Operation_4
ruleOperation_4 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperation_4Access().getGroup()); }
		(rule__Operation_4__Group__0)
		{ after(grammarAccess.getOperation_4Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleError_5
entryRuleError_5
:
{ before(grammarAccess.getError_5Rule()); }
	 ruleError_5
{ after(grammarAccess.getError_5Rule()); } 
	 EOF 
;

// Rule Error_5
ruleError_5 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getError_5Access().getGroup()); }
		(rule__Error_5__Group__0)
		{ after(grammarAccess.getError_5Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation_5
entryRuleOperation_5
:
{ before(grammarAccess.getOperation_5Rule()); }
	 ruleOperation_5
{ after(grammarAccess.getOperation_5Rule()); } 
	 EOF 
;

// Rule Operation_5
ruleOperation_5 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperation_5Access().getGroup()); }
		(rule__Operation_5__Group__0)
		{ after(grammarAccess.getOperation_5Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnnotation
entryRuleAnnotation
:
{ before(grammarAccess.getAnnotationRule()); }
	 ruleAnnotation
{ after(grammarAccess.getAnnotationRule()); } 
	 EOF 
;

// Rule Annotation
ruleAnnotation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnnotationAccess().getGroup()); }
		(rule__Annotation__Group__0)
		{ after(grammarAccess.getAnnotationAccess().getGroup()); }
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
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_4()); }
		(rule__Model__Group_1_4__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_4()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_5()); }
		(rule__Model__Group_1_5__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_5()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_6()); }
		(rule__Model__Group_1_6__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_6()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_7()); }
		(rule__Model__Group_1_7__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_7()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_8()); }
		(rule__Model__Group_1_8__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_8()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1_9()); }
		(rule__Model__Group_1_9__0)
		{ after(grammarAccess.getModelAccess().getGroup_1_9()); }
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
	{ before(grammarAccess.getModelAccess().getNumberSignDigitOneAsteriskKeyword_1_0_0()); }
	'#1*'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitOneAsteriskKeyword_1_0_0()); }
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
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_0_1()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_0_1()); }
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
	{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_0_2()); }
	(rule__Model__ErrorsAssignment_1_0_2)*
	{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_0_2()); }
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
	rule__Model__Group_1_0__4
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
	{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_0_3()); }
	(rule__Model__OperationsAssignment_1_0_3)*
	{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_0__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_0__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_0_4()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_0_4()); }
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
	{ before(grammarAccess.getModelAccess().getNumberSignDigitOnePlusSignKeyword_1_1_0()); }
	'#1+'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitOnePlusSignKeyword_1_1_0()); }
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
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_1_1()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_1_1()); }
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
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_1_2()); }
		(rule__Model__ErrorsAssignment_1_1_2)
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_1_2()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_1_2()); }
		(rule__Model__ErrorsAssignment_1_1_2)*
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_1_2()); }
	)
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
	rule__Model__Group_1_1__4
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
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_1_3()); }
		(rule__Model__OperationsAssignment_1_1_3)
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_1_3()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_1_3()); }
		(rule__Model__OperationsAssignment_1_1_3)*
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_1_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_1_4()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_1_4()); }
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
	{ before(grammarAccess.getModelAccess().getNumberSignDigitTwoAsteriskKeyword_1_2_0()); }
	'#2*'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitTwoAsteriskKeyword_1_2_0()); }
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
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_2_1()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_2_1()); }
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
	{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_2_2()); }
	(rule__Model__ErrorsAssignment_1_2_2)*
	{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_2_2()); }
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
	rule__Model__Group_1_2__4
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
	{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_2_3()); }
	(rule__Model__OperationsAssignment_1_2_3)*
	{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_2__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_2_4()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_2_4()); }
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
	{ before(grammarAccess.getModelAccess().getNumberSignDigitTwoPlusSignKeyword_1_3_0()); }
	'#2+'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitTwoPlusSignKeyword_1_3_0()); }
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
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_3_1()); }
	(rule__Model__NameAssignment_1_3_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_3_1()); }
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
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_2()); }
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
	rule__Model__Group_1_3__4
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
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_3_3()); }
		(rule__Model__ErrorsAssignment_1_3_3)
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_3_3()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_3_3()); }
		(rule__Model__ErrorsAssignment_1_3_3)*
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_3_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__4__Impl
	rule__Model__Group_1_3__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_3_4()); }
		(rule__Model__OperationsAssignment_1_3_4)
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_3_4()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_3_4()); }
		(rule__Model__OperationsAssignment_1_3_4)*
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_3_4()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_3__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_3__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__0__Impl
	rule__Model__Group_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitThreeAsteriskKeyword_1_4_0()); }
	'#3*'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitThreeAsteriskKeyword_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__1__Impl
	rule__Model__Group_1_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_4_1()); }
	(rule__Model__NameAssignment_1_4_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__2__Impl
	rule__Model__Group_1_4__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_4_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_4_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__3__Impl
	rule__Model__Group_1_4__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_4_3()); }
	(rule__Model__ErrorsAssignment_1_4_3)*
	{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_4_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__4__Impl
	rule__Model__Group_1_4__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_4_4()); }
	(rule__Model__OperationsAssignment_1_4_4)*
	{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_4_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_4__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_4__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_4_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_4_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__0__Impl
	rule__Model__Group_1_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitThreePlusSignKeyword_1_5_0()); }
	'#3+'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitThreePlusSignKeyword_1_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__1__Impl
	rule__Model__Group_1_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_5_1()); }
	(rule__Model__NameAssignment_1_5_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__2__Impl
	rule__Model__Group_1_5__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_5_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_5_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__3__Impl
	rule__Model__Group_1_5__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_5_3()); }
		(rule__Model__ErrorsAssignment_1_5_3)
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_5_3()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_5_3()); }
		(rule__Model__ErrorsAssignment_1_5_3)*
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_5_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__4__Impl
	rule__Model__Group_1_5__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_5_4()); }
		(rule__Model__OperationsAssignment_1_5_4)
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_5_4()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_5_4()); }
		(rule__Model__OperationsAssignment_1_5_4)*
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_5_4()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_5__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_5__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_5_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_5_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__0__Impl
	rule__Model__Group_1_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitFourAsteriskKeyword_1_6_0()); }
	'#4*'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitFourAsteriskKeyword_1_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__1__Impl
	rule__Model__Group_1_6__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_6_1()); }
	(rule__Model__NameAssignment_1_6_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__2__Impl
	rule__Model__Group_1_6__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_6_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_6_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__3__Impl
	rule__Model__Group_1_6__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_6_3()); }
	(rule__Model__ErrorsAssignment_1_6_3)*
	{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_6_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__4__Impl
	rule__Model__Group_1_6__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_6_4()); }
	(rule__Model__OperationsAssignment_1_6_4)*
	{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_6_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_6__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_6__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_6_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_6_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__0__Impl
	rule__Model__Group_1_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitFourPlusSignKeyword_1_7_0()); }
	'#4+'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitFourPlusSignKeyword_1_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__1__Impl
	rule__Model__Group_1_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_7_1()); }
	(rule__Model__NameAssignment_1_7_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__2__Impl
	rule__Model__Group_1_7__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_7_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_7_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__3__Impl
	rule__Model__Group_1_7__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_7_3()); }
		(rule__Model__ErrorsAssignment_1_7_3)
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_7_3()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_7_3()); }
		(rule__Model__ErrorsAssignment_1_7_3)*
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_7_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__4__Impl
	rule__Model__Group_1_7__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_7_4()); }
		(rule__Model__OperationsAssignment_1_7_4)
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_7_4()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_7_4()); }
		(rule__Model__OperationsAssignment_1_7_4)*
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_7_4()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_7__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_7__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_7_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_7_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__0__Impl
	rule__Model__Group_1_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitFiveAsteriskKeyword_1_8_0()); }
	'#5*'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitFiveAsteriskKeyword_1_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__1__Impl
	rule__Model__Group_1_8__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_8_1()); }
	(rule__Model__NameAssignment_1_8_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__2__Impl
	rule__Model__Group_1_8__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_8_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_8_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__3__Impl
	rule__Model__Group_1_8__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_8_3()); }
	(rule__Model__ErrorsAssignment_1_8_3)*
	{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_8_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__4__Impl
	rule__Model__Group_1_8__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_8_4()); }
	(rule__Model__OperationsAssignment_1_8_4)*
	{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_8_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_8__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_8__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_8_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_8_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__0__Impl
	rule__Model__Group_1_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNumberSignDigitFivePlusSignKeyword_1_9_0()); }
	'#5+'
	{ after(grammarAccess.getModelAccess().getNumberSignDigitFivePlusSignKeyword_1_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__1__Impl
	rule__Model__Group_1_9__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getNameAssignment_1_9_1()); }
	(rule__Model__NameAssignment_1_9_1)
	{ after(grammarAccess.getModelAccess().getNameAssignment_1_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__2__Impl
	rule__Model__Group_1_9__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_9_2()); }
	'{'
	{ after(grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_9_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__3__Impl
	rule__Model__Group_1_9__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_9_3()); }
		(rule__Model__ErrorsAssignment_1_9_3)
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_9_3()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getErrorsAssignment_1_9_3()); }
		(rule__Model__ErrorsAssignment_1_9_3)*
		{ after(grammarAccess.getModelAccess().getErrorsAssignment_1_9_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__4__Impl
	rule__Model__Group_1_9__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_9_4()); }
		(rule__Model__OperationsAssignment_1_9_4)
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_9_4()); }
	)
	(
		{ before(grammarAccess.getModelAccess().getOperationsAssignment_1_9_4()); }
		(rule__Model__OperationsAssignment_1_9_4)*
		{ after(grammarAccess.getModelAccess().getOperationsAssignment_1_9_4()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1_9__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1_9__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_9_5()); }
	'}'
	{ after(grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_9_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Error_1__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_1__Group__0__Impl
	rule__Error_1__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_1Access().getAnnotationsAssignment_0()); }
	(rule__Error_1__AnnotationsAssignment_0)*
	{ after(grammarAccess.getError_1Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_1__Group__1__Impl
	rule__Error_1__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_1Access().getErrorKeyword_1()); }
	'error'
	{ after(grammarAccess.getError_1Access().getErrorKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_1__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_1Access().getNameAssignment_2()); }
	(rule__Error_1__NameAssignment_2)
	{ after(grammarAccess.getError_1Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation_1__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_1__Group__0__Impl
	rule__Operation_1__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_1Access().getAnnotationsAssignment_0()); }
	(rule__Operation_1__AnnotationsAssignment_0)*
	{ after(grammarAccess.getOperation_1Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_1__Group__1__Impl
	rule__Operation_1__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_1Access().getOperationKeyword_1()); }
	'operation'
	{ after(grammarAccess.getOperation_1Access().getOperationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_1__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_1Access().getNameAssignment_2()); }
	(rule__Operation_1__NameAssignment_2)
	{ after(grammarAccess.getOperation_1Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Error_2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_2__Group__0__Impl
	rule__Error_2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getError_2Access().getAnnotationsAssignment_0()); }
		(rule__Error_2__AnnotationsAssignment_0)
		{ after(grammarAccess.getError_2Access().getAnnotationsAssignment_0()); }
	)
	(
		{ before(grammarAccess.getError_2Access().getAnnotationsAssignment_0()); }
		(rule__Error_2__AnnotationsAssignment_0)*
		{ after(grammarAccess.getError_2Access().getAnnotationsAssignment_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_2__Group__1__Impl
	rule__Error_2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_2Access().getErrorKeyword_1()); }
	'error'
	{ after(grammarAccess.getError_2Access().getErrorKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_2__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_2Access().getNameAssignment_2()); }
	(rule__Error_2__NameAssignment_2)
	{ after(grammarAccess.getError_2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation_2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_2__Group__0__Impl
	rule__Operation_2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getOperation_2Access().getAnnotationsAssignment_0()); }
		(rule__Operation_2__AnnotationsAssignment_0)
		{ after(grammarAccess.getOperation_2Access().getAnnotationsAssignment_0()); }
	)
	(
		{ before(grammarAccess.getOperation_2Access().getAnnotationsAssignment_0()); }
		(rule__Operation_2__AnnotationsAssignment_0)*
		{ after(grammarAccess.getOperation_2Access().getAnnotationsAssignment_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_2__Group__1__Impl
	rule__Operation_2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_2Access().getOperationKeyword_1()); }
	'operation'
	{ after(grammarAccess.getOperation_2Access().getOperationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_2__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_2Access().getNameAssignment_2()); }
	(rule__Operation_2__NameAssignment_2)
	{ after(grammarAccess.getOperation_2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Error_3__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_3__Group__0__Impl
	rule__Error_3__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_3Access().getAnnotationsAssignment_0()); }
	(rule__Error_3__AnnotationsAssignment_0)?
	{ after(grammarAccess.getError_3Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_3__Group__1__Impl
	rule__Error_3__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_3Access().getErrorKeyword_1()); }
	'error'
	{ after(grammarAccess.getError_3Access().getErrorKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_3__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_3Access().getNameAssignment_2()); }
	(rule__Error_3__NameAssignment_2)
	{ after(grammarAccess.getError_3Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation_3__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_3__Group__0__Impl
	rule__Operation_3__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_3Access().getAnnotationsAssignment_0()); }
	(rule__Operation_3__AnnotationsAssignment_0)?
	{ after(grammarAccess.getOperation_3Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_3__Group__1__Impl
	rule__Operation_3__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_3Access().getOperationKeyword_1()); }
	'operation'
	{ after(grammarAccess.getOperation_3Access().getOperationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_3__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_3Access().getNameAssignment_2()); }
	(rule__Operation_3__NameAssignment_2)
	{ after(grammarAccess.getOperation_3Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Error_4__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_4__Group__0__Impl
	rule__Error_4__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_4Access().getAnnotationsAssignment_0()); }
	(rule__Error_4__AnnotationsAssignment_0)
	{ after(grammarAccess.getError_4Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_4__Group__1__Impl
	rule__Error_4__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_4Access().getErrorKeyword_1()); }
	'error'
	{ after(grammarAccess.getError_4Access().getErrorKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_4__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_4Access().getNameAssignment_2()); }
	(rule__Error_4__NameAssignment_2)
	{ after(grammarAccess.getError_4Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation_4__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_4__Group__0__Impl
	rule__Operation_4__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_4Access().getAnnotationsAssignment_0()); }
	(rule__Operation_4__AnnotationsAssignment_0)
	{ after(grammarAccess.getOperation_4Access().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_4__Group__1__Impl
	rule__Operation_4__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_4Access().getOperationKeyword_1()); }
	'operation'
	{ after(grammarAccess.getOperation_4Access().getOperationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_4__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_4Access().getNameAssignment_2()); }
	(rule__Operation_4__NameAssignment_2)
	{ after(grammarAccess.getOperation_4Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Error_5__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_5__Group__0__Impl
	rule__Error_5__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_5__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_5Access().getErrorKeyword_0()); }
	'error'
	{ after(grammarAccess.getError_5Access().getErrorKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_5__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Error_5__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_5__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getError_5Access().getNameAssignment_1()); }
	(rule__Error_5__NameAssignment_1)
	{ after(grammarAccess.getError_5Access().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation_5__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_5__Group__0__Impl
	rule__Operation_5__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_5__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_5Access().getOperationKeyword_0()); }
	'operation'
	{ after(grammarAccess.getOperation_5Access().getOperationKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_5__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation_5__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_5__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperation_5Access().getNameAssignment_1()); }
	(rule__Operation_5__NameAssignment_1)
	{ after(grammarAccess.getOperation_5Access().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Annotation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__0__Impl
	rule__Annotation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getUuidKeyword_0()); }
	'@uuid'
	{ after(grammarAccess.getAnnotationAccess().getUuidKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getNameAssignment_1()); }
	(rule__Annotation__NameAssignment_1)
	{ after(grammarAccess.getAnnotationAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ErrorsAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_0_2_0()); }
		ruleError_1
		{ after(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_0_3_0()); }
		ruleOperation_1
		{ after(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_0_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_1_2_0()); }
		ruleError_1
		{ after(grammarAccess.getModelAccess().getErrorsError_1ParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_1_3_0()); }
		ruleOperation_1
		{ after(grammarAccess.getModelAccess().getOperationsOperation_1ParserRuleCall_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_2_2_0()); }
		ruleError_2
		{ after(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_2_3_0()); }
		ruleOperation_2
		{ after(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_3_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_3_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_3_3_0()); }
		ruleError_2
		{ after(grammarAccess.getModelAccess().getErrorsError_2ParserRuleCall_1_3_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_3_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_3_4_0()); }
		ruleOperation_2
		{ after(grammarAccess.getModelAccess().getOperationsOperation_2ParserRuleCall_1_3_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_4_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_4_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_4_3_0()); }
		ruleError_3
		{ after(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_4_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_4_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_4_4_0()); }
		ruleOperation_3
		{ after(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_4_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_5_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_5_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_5_3_0()); }
		ruleError_3
		{ after(grammarAccess.getModelAccess().getErrorsError_3ParserRuleCall_1_5_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_5_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_5_4_0()); }
		ruleOperation_3
		{ after(grammarAccess.getModelAccess().getOperationsOperation_3ParserRuleCall_1_5_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_6_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_6_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_6_3_0()); }
		ruleError_4
		{ after(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_6_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_6_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_6_4_0()); }
		ruleOperation_4
		{ after(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_6_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_7_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_7_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_7_3_0()); }
		ruleError_4
		{ after(grammarAccess.getModelAccess().getErrorsError_4ParserRuleCall_1_7_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_7_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_7_4_0()); }
		ruleOperation_4
		{ after(grammarAccess.getModelAccess().getOperationsOperation_4ParserRuleCall_1_7_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_8_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_8_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_8_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_8_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_8_3_0()); }
		ruleError_5
		{ after(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_8_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_8_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_8_4_0()); }
		ruleOperation_5
		{ after(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_8_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__NameAssignment_1_9_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_9_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_9_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ErrorsAssignment_1_9_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_9_3_0()); }
		ruleError_5
		{ after(grammarAccess.getModelAccess().getErrorsError_5ParserRuleCall_1_9_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__OperationsAssignment_1_9_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_9_4_0()); }
		ruleOperation_5
		{ after(grammarAccess.getModelAccess().getOperationsOperation_5ParserRuleCall_1_9_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_1Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getError_1Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_1__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_1Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getError_1Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_1Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getOperation_1Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_1__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_1Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getOperation_1Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_2Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getError_2Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getError_2Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_2Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getOperation_2Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getOperation_2Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_3Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getError_3Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_3__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_3Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getError_3Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_3Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getOperation_3Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_3__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_3Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getOperation_3Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_4Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getError_4Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_4__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_4Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getError_4Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_4Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getOperation_4Access().getAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_4__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_4Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getOperation_4Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Error_5__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getError_5Access().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getError_5Access().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation_5__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperation_5Access().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getOperation_5Access().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getAnnotationAccess().getNameIDTerminalRuleCall_1_0()); }
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
