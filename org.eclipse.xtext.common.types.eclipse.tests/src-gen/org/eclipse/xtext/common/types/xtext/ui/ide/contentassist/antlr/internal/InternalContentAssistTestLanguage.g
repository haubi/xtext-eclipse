/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.common.types.xtext.ui.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.common.types.xtext.ui.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.common.types.xtext.ui.services.ContentAssistTestLanguageGrammarAccess;

}
@parser::members {
	private ContentAssistTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(ContentAssistTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleReferenceHolder
entryRuleReferenceHolder
:
{ before(grammarAccess.getReferenceHolderRule()); }
	 ruleReferenceHolder
{ after(grammarAccess.getReferenceHolderRule()); } 
	 EOF 
;

// Rule ReferenceHolder
ruleReferenceHolder 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getAlternatives()); }
		(rule__ReferenceHolder__Alternatives)
		{ after(grammarAccess.getReferenceHolderAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleGenerateDirective
entryRuleGenerateDirective
:
{ before(grammarAccess.getGenerateDirectiveRule()); }
	 ruleGenerateDirective
{ after(grammarAccess.getGenerateDirectiveRule()); } 
	 EOF 
;

// Rule GenerateDirective
ruleGenerateDirective 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getGenerateDirectiveAccess().getGroup()); }
		(rule__GenerateDirective__Group__0)
		{ after(grammarAccess.getGenerateDirectiveAccess().getGroup()); }
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

// Entry rule entryRuleImportedFQN
entryRuleImportedFQN
:
{ before(grammarAccess.getImportedFQNRule()); }
	 ruleImportedFQN
{ after(grammarAccess.getImportedFQNRule()); } 
	 EOF 
;

// Rule ImportedFQN
ruleImportedFQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getImportedFQNAccess().getGroup()); }
		(rule__ImportedFQN__Group__0)
		{ after(grammarAccess.getImportedFQNAccess().getGroup()); }
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

// Entry rule entryRuleQN
entryRuleQN
:
{ before(grammarAccess.getQNRule()); }
	 ruleQN
{ after(grammarAccess.getQNRule()); } 
	 EOF 
;

// Rule QN
ruleQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQNAccess().getGroup()); }
		(rule__QN__Group__0)
		{ after(grammarAccess.getQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getGroup_0()); }
		(rule__ReferenceHolder__Group_0__0)
		{ after(grammarAccess.getReferenceHolderAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getReferenceHolderAccess().getGroup_1()); }
		(rule__ReferenceHolder__Group_1__0)
		{ after(grammarAccess.getReferenceHolderAccess().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getReferenceHolderAccess().getGroup_2()); }
		(rule__ReferenceHolder__Group_2__0)
		{ after(grammarAccess.getReferenceHolderAccess().getGroup_2()); }
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
	{ before(grammarAccess.getModelAccess().getImportsAssignment_0()); }
	(rule__Model__ImportsAssignment_0)*
	{ after(grammarAccess.getModelAccess().getImportsAssignment_0()); }
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
	rule__Model__Group__2
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
	{ before(grammarAccess.getModelAccess().getGenerateDirectiveAssignment_1()); }
	(rule__Model__GenerateDirectiveAssignment_1)?
	{ after(grammarAccess.getModelAccess().getGenerateDirectiveAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getReferenceHolderAssignment_2()); }
	(rule__Model__ReferenceHolderAssignment_2)?
	{ after(grammarAccess.getModelAccess().getReferenceHolderAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ReferenceHolder__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_0__0__Impl
	rule__ReferenceHolder__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getDefaultKeyword_0_0()); }
	'default'
	{ after(grammarAccess.getReferenceHolderAccess().getDefaultKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceAssignment_0_1()); }
	(rule__ReferenceHolder__DefaultReferenceAssignment_0_1)
	{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ReferenceHolder__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_1__0__Impl
	rule__ReferenceHolder__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getCustomKeyword_1_0()); }
	'custom'
	{ after(grammarAccess.getReferenceHolderAccess().getCustomKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceAssignment_1_1()); }
	(rule__ReferenceHolder__CustomizedReferenceAssignment_1_1)
	{ after(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ReferenceHolder__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_2__0__Impl
	rule__ReferenceHolder__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getSubtypeKeyword_2_0()); }
	'subtype'
	{ after(grammarAccess.getReferenceHolderAccess().getSubtypeKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceAssignment_2_1()); }
	(rule__ReferenceHolder__SubtypeReferenceAssignment_2_1)
	{ after(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__GenerateDirective__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GenerateDirective__Group__0__Impl
	rule__GenerateDirective__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GenerateDirective__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGenerateDirectiveAccess().getGenerateKeyword_0()); }
	'generate'
	{ after(grammarAccess.getGenerateDirectiveAccess().getGenerateKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__GenerateDirective__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GenerateDirective__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GenerateDirective__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGenerateDirectiveAccess().getTypeNameAssignment_1()); }
	(rule__GenerateDirective__TypeNameAssignment_1)
	{ after(grammarAccess.getGenerateDirectiveAccess().getTypeNameAssignment_1()); }
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


rule__ImportedFQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ImportedFQN__Group__0__Impl
	rule__ImportedFQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportedFQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportedFQNAccess().getFQNParserRuleCall_0()); }
	ruleFQN
	{ after(grammarAccess.getImportedFQNAccess().getFQNParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportedFQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ImportedFQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportedFQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportedFQNAccess().getFullStopAsteriskKeyword_1()); }
	('.*')?
	{ after(grammarAccess.getImportedFQNAccess().getFullStopAsteriskKeyword_1()); }
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
	{ before(grammarAccess.getFQNAccess().getQNParserRuleCall_0()); }
	ruleQN
	{ after(grammarAccess.getFQNAccess().getQNParserRuleCall_0()); }
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
	{ before(grammarAccess.getFQNAccess().getDollarSignKeyword_1_0()); }
	'$'
	{ after(grammarAccess.getFQNAccess().getDollarSignKeyword_1_0()); }
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


rule__QN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QN__Group__0__Impl
	rule__QN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getQNAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQNAccess().getGroup_1()); }
	(rule__QN__Group_1__0)*
	{ after(grammarAccess.getQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QN__Group_1__0__Impl
	rule__QN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQNAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ImportsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getImportsImportParserRuleCall_0_0()); }
		ruleImport
		{ after(grammarAccess.getModelAccess().getImportsImportParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__GenerateDirectiveAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGenerateDirectiveGenerateDirectiveParserRuleCall_1_0()); }
		ruleGenerateDirective
		{ after(grammarAccess.getModelAccess().getGenerateDirectiveGenerateDirectiveParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ReferenceHolderAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getReferenceHolderReferenceHolderParserRuleCall_2_0()); }
		ruleReferenceHolder
		{ after(grammarAccess.getModelAccess().getReferenceHolderReferenceHolderParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__DefaultReferenceAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeCrossReference_0_1_0()); }
		(
			{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeFQNParserRuleCall_0_1_0_1()); }
			ruleFQN
			{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeFQNParserRuleCall_0_1_0_1()); }
		)
		{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeCrossReference_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__CustomizedReferenceAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceJvmTypeCrossReference_1_1_0()); }
		(
			{ before(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceJvmTypeFQNParserRuleCall_1_1_0_1()); }
			ruleFQN
			{ after(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceJvmTypeFQNParserRuleCall_1_1_0_1()); }
		)
		{ after(grammarAccess.getReferenceHolderAccess().getCustomizedReferenceJvmTypeCrossReference_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__SubtypeReferenceAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceJvmTypeCrossReference_2_1_0()); }
		(
			{ before(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceJvmTypeFQNParserRuleCall_2_1_0_1()); }
			ruleFQN
			{ after(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceJvmTypeFQNParserRuleCall_2_1_0_1()); }
		)
		{ after(grammarAccess.getReferenceHolderAccess().getSubtypeReferenceJvmTypeCrossReference_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GenerateDirective__TypeNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGenerateDirectiveAccess().getTypeNameQNParserRuleCall_1_0()); }
		ruleQN
		{ after(grammarAccess.getGenerateDirectiveAccess().getTypeNameQNParserRuleCall_1_0()); }
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
		{ before(grammarAccess.getImportAccess().getImportedNamespaceImportedFQNParserRuleCall_1_0()); }
		ruleImportedFQN
		{ after(grammarAccess.getImportAccess().getImportedNamespaceImportedFQNParserRuleCall_1_0()); }
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
