/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug287941TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug287941TestLanguageGrammarAccess;

}
@parser::members {
	private Bug287941TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug287941TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleMQLquery
entryRuleMQLquery
:
{ before(grammarAccess.getMQLqueryRule()); }
	 ruleMQLquery
{ after(grammarAccess.getMQLqueryRule()); } 
	 EOF 
;

// Rule MQLquery
ruleMQLquery 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMQLqueryAccess().getGroup()); }
		(rule__MQLquery__Group__0)
		{ after(grammarAccess.getMQLqueryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSelectEntry
entryRuleSelectEntry
:
{ before(grammarAccess.getSelectEntryRule()); }
	 ruleSelectEntry
{ after(grammarAccess.getSelectEntryRule()); } 
	 EOF 
;

// Rule SelectEntry
ruleSelectEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSelectEntryAccess().getGroup()); }
		(rule__SelectEntry__Group__0)
		{ after(grammarAccess.getSelectEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFromEntry
entryRuleFromEntry
:
{ before(grammarAccess.getFromEntryRule()); }
	 ruleFromEntry
{ after(grammarAccess.getFromEntryRule()); } 
	 EOF 
;

// Rule FromEntry
ruleFromEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFromEntryAccess().getGroup()); }
		(rule__FromEntry__Group__0)
		{ after(grammarAccess.getFromEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScopeClause
entryRuleScopeClause
:
{ before(grammarAccess.getScopeClauseRule()); }
	 ruleScopeClause
{ after(grammarAccess.getScopeClauseRule()); } 
	 EOF 
;

// Rule ScopeClause
ruleScopeClause 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScopeClauseAccess().getGroup()); }
		(rule__ScopeClause__Group__0)
		{ after(grammarAccess.getScopeClauseAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScope
entryRuleScope
:
{ before(grammarAccess.getScopeRule()); }
	 ruleScope
{ after(grammarAccess.getScopeRule()); } 
	 EOF 
;

// Rule Scope
ruleScope 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScopeAccess().getAlternatives()); }
		(rule__Scope__Alternatives)
		{ after(grammarAccess.getScopeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleResourceScope
entryRuleResourceScope
:
{ before(grammarAccess.getResourceScopeRule()); }
	 ruleResourceScope
{ after(grammarAccess.getResourceScopeRule()); } 
	 EOF 
;

// Rule ResourceScope
ruleResourceScope 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getResourceScopeAccess().getGroup()); }
		(rule__ResourceScope__Group__0)
		{ after(grammarAccess.getResourceScopeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElementScope
entryRuleElementScope
:
{ before(grammarAccess.getElementScopeRule()); }
	 ruleElementScope
{ after(grammarAccess.getElementScopeRule()); } 
	 EOF 
;

// Rule ElementScope
ruleElementScope 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElementScopeAccess().getGroup()); }
		(rule__ElementScope__Group__0)
		{ after(grammarAccess.getElementScopeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleWhereEntry
entryRuleWhereEntry
:
{ before(grammarAccess.getWhereEntryRule()); }
	 ruleWhereEntry
{ after(grammarAccess.getWhereEntryRule()); } 
	 EOF 
;

// Rule WhereEntry
ruleWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWhereEntryAccess().getGroup()); }
		(rule__WhereEntry__Group__0)
		{ after(grammarAccess.getWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAndWhereEntry
entryRuleAndWhereEntry
:
{ before(grammarAccess.getAndWhereEntryRule()); }
	 ruleAndWhereEntry
{ after(grammarAccess.getAndWhereEntryRule()); } 
	 EOF 
;

// Rule AndWhereEntry
ruleAndWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAndWhereEntryAccess().getGroup()); }
		(rule__AndWhereEntry__Group__0)
		{ after(grammarAccess.getAndWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConcreteWhereEntry
entryRuleConcreteWhereEntry
:
{ before(grammarAccess.getConcreteWhereEntryRule()); }
	 ruleConcreteWhereEntry
{ after(grammarAccess.getConcreteWhereEntryRule()); } 
	 EOF 
;

// Rule ConcreteWhereEntry
ruleConcreteWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getAlternatives()); }
		(rule__ConcreteWhereEntry__Alternatives)
		{ after(grammarAccess.getConcreteWhereEntryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleParWhereEntry
entryRuleParWhereEntry
:
{ before(grammarAccess.getParWhereEntryRule()); }
	 ruleParWhereEntry
{ after(grammarAccess.getParWhereEntryRule()); } 
	 EOF 
;

// Rule ParWhereEntry
ruleParWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getParWhereEntryAccess().getGroup()); }
		(rule__ParWhereEntry__Group__0)
		{ after(grammarAccess.getParWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttributeWhereEntry
entryRuleAttributeWhereEntry
:
{ before(grammarAccess.getAttributeWhereEntryRule()); }
	 ruleAttributeWhereEntry
{ after(grammarAccess.getAttributeWhereEntryRule()); } 
	 EOF 
;

// Rule AttributeWhereEntry
ruleAttributeWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeWhereEntryAccess().getAlternatives()); }
		(rule__AttributeWhereEntry__Alternatives)
		{ after(grammarAccess.getAttributeWhereEntryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNumericAttributeWhereEntry
entryRuleNumericAttributeWhereEntry
:
{ before(grammarAccess.getNumericAttributeWhereEntryRule()); }
	 ruleNumericAttributeWhereEntry
{ after(grammarAccess.getNumericAttributeWhereEntryRule()); } 
	 EOF 
;

// Rule NumericAttributeWhereEntry
ruleNumericAttributeWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNumericAttributeWhereEntryAccess().getAlternatives()); }
		(rule__NumericAttributeWhereEntry__Alternatives)
		{ after(grammarAccess.getNumericAttributeWhereEntryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDoubleWhereEntry
entryRuleDoubleWhereEntry
:
{ before(grammarAccess.getDoubleWhereEntryRule()); }
	 ruleDoubleWhereEntry
{ after(grammarAccess.getDoubleWhereEntryRule()); } 
	 EOF 
;

// Rule DoubleWhereEntry
ruleDoubleWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDoubleWhereEntryAccess().getGroup()); }
		(rule__DoubleWhereEntry__Group__0)
		{ after(grammarAccess.getDoubleWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLongWhereEntry
entryRuleLongWhereEntry
:
{ before(grammarAccess.getLongWhereEntryRule()); }
	 ruleLongWhereEntry
{ after(grammarAccess.getLongWhereEntryRule()); } 
	 EOF 
;

// Rule LongWhereEntry
ruleLongWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLongWhereEntryAccess().getGroup()); }
		(rule__LongWhereEntry__Group__0)
		{ after(grammarAccess.getLongWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVariableWhereEntry
entryRuleVariableWhereEntry
:
{ before(grammarAccess.getVariableWhereEntryRule()); }
	 ruleVariableWhereEntry
{ after(grammarAccess.getVariableWhereEntryRule()); } 
	 EOF 
;

// Rule VariableWhereEntry
ruleVariableWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getGroup()); }
		(rule__VariableWhereEntry__Group__0)
		{ after(grammarAccess.getVariableWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStringAttributeWhereEntry
entryRuleStringAttributeWhereEntry
:
{ before(grammarAccess.getStringAttributeWhereEntryRule()); }
	 ruleStringAttributeWhereEntry
{ after(grammarAccess.getStringAttributeWhereEntryRule()); } 
	 EOF 
;

// Rule StringAttributeWhereEntry
ruleStringAttributeWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStringAttributeWhereEntryAccess().getGroup()); }
		(rule__StringAttributeWhereEntry__Group__0)
		{ after(grammarAccess.getStringAttributeWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBooleanAttributeWhereEntry
entryRuleBooleanAttributeWhereEntry
:
{ before(grammarAccess.getBooleanAttributeWhereEntryRule()); }
	 ruleBooleanAttributeWhereEntry
{ after(grammarAccess.getBooleanAttributeWhereEntryRule()); } 
	 EOF 
;

// Rule BooleanAttributeWhereEntry
ruleBooleanAttributeWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getGroup()); }
		(rule__BooleanAttributeWhereEntry__Group__0)
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNullWhereEntry
entryRuleNullWhereEntry
:
{ before(grammarAccess.getNullWhereEntryRule()); }
	 ruleNullWhereEntry
{ after(grammarAccess.getNullWhereEntryRule()); } 
	 EOF 
;

// Rule NullWhereEntry
ruleNullWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNullWhereEntryAccess().getGroup()); }
		(rule__NullWhereEntry__Group__0)
		{ after(grammarAccess.getNullWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleReferenceAliasWhereEntry
entryRuleReferenceAliasWhereEntry
:
{ before(grammarAccess.getReferenceAliasWhereEntryRule()); }
	 ruleReferenceAliasWhereEntry
{ after(grammarAccess.getReferenceAliasWhereEntryRule()); } 
	 EOF 
;

// Rule ReferenceAliasWhereEntry
ruleReferenceAliasWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getGroup()); }
		(rule__ReferenceAliasWhereEntry__Group__0)
		{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSubselectWhereEntry
entryRuleSubselectWhereEntry
:
{ before(grammarAccess.getSubselectWhereEntryRule()); }
	 ruleSubselectWhereEntry
{ after(grammarAccess.getSubselectWhereEntryRule()); } 
	 EOF 
;

// Rule SubselectWhereEntry
ruleSubselectWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSubselectWhereEntryAccess().getGroup()); }
		(rule__SubselectWhereEntry__Group__0)
		{ after(grammarAccess.getSubselectWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAliasWhereEntry
entryRuleAliasWhereEntry
:
{ before(grammarAccess.getAliasWhereEntryRule()); }
	 ruleAliasWhereEntry
{ after(grammarAccess.getAliasWhereEntryRule()); } 
	 EOF 
;

// Rule AliasWhereEntry
ruleAliasWhereEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAliasWhereEntryAccess().getGroup()); }
		(rule__AliasWhereEntry__Group__0)
		{ after(grammarAccess.getAliasWhereEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule NumericOperator
ruleNumericOperator
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNumericOperatorAccess().getAlternatives()); }
		(rule__NumericOperator__Alternatives)
		{ after(grammarAccess.getNumericOperatorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule StringOperator
ruleStringOperator
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringOperatorAccess().getAlternatives()); }
		(rule__StringOperator__Alternatives)
		{ after(grammarAccess.getStringOperatorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule BooleanOperator
ruleBooleanOperator
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanOperatorAccess().getAlternatives()); }
		(rule__BooleanOperator__Alternatives)
		{ after(grammarAccess.getBooleanOperatorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scope__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScopeAccess().getResourceScopeParserRuleCall_0()); }
		ruleResourceScope
		{ after(grammarAccess.getScopeAccess().getResourceScopeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getScopeAccess().getElementScopeParserRuleCall_1()); }
		ruleElementScope
		{ after(grammarAccess.getScopeAccess().getElementScopeParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConcreteWhereEntry__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getParWhereEntryParserRuleCall_0()); }
		ruleParWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getParWhereEntryParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getAttributeWhereEntryParserRuleCall_1()); }
		ruleAttributeWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getAttributeWhereEntryParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getNullWhereEntryParserRuleCall_2()); }
		ruleNullWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getNullWhereEntryParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getReferenceAliasWhereEntryParserRuleCall_3()); }
		ruleReferenceAliasWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getReferenceAliasWhereEntryParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getAliasWhereEntryParserRuleCall_4()); }
		ruleAliasWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getAliasWhereEntryParserRuleCall_4()); }
	)
	|
	(
		{ before(grammarAccess.getConcreteWhereEntryAccess().getSubselectWhereEntryParserRuleCall_5()); }
		ruleSubselectWhereEntry
		{ after(grammarAccess.getConcreteWhereEntryAccess().getSubselectWhereEntryParserRuleCall_5()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AttributeWhereEntry__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeWhereEntryAccess().getNumericAttributeWhereEntryParserRuleCall_0()); }
		ruleNumericAttributeWhereEntry
		{ after(grammarAccess.getAttributeWhereEntryAccess().getNumericAttributeWhereEntryParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getAttributeWhereEntryAccess().getStringAttributeWhereEntryParserRuleCall_1()); }
		ruleStringAttributeWhereEntry
		{ after(grammarAccess.getAttributeWhereEntryAccess().getStringAttributeWhereEntryParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getAttributeWhereEntryAccess().getBooleanAttributeWhereEntryParserRuleCall_2()); }
		ruleBooleanAttributeWhereEntry
		{ after(grammarAccess.getAttributeWhereEntryAccess().getBooleanAttributeWhereEntryParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getAttributeWhereEntryAccess().getVariableWhereEntryParserRuleCall_3()); }
		ruleVariableWhereEntry
		{ after(grammarAccess.getAttributeWhereEntryAccess().getVariableWhereEntryParserRuleCall_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NumericAttributeWhereEntry__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNumericAttributeWhereEntryAccess().getDoubleWhereEntryParserRuleCall_0()); }
		ruleDoubleWhereEntry
		{ after(grammarAccess.getNumericAttributeWhereEntryAccess().getDoubleWhereEntryParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getNumericAttributeWhereEntryAccess().getLongWhereEntryParserRuleCall_1()); }
		ruleLongWhereEntry
		{ after(grammarAccess.getNumericAttributeWhereEntryAccess().getLongWhereEntryParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueAssignment_4_0()); }
		(rule__BooleanAttributeWhereEntry__IsTrueAssignment_4_0)
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueAssignment_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getFalseKeyword_4_1()); }
		'false'
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getFalseKeyword_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NumericOperator__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNumericOperatorAccess().getLessThenEnumLiteralDeclaration_0()); }
		('<')
		{ after(grammarAccess.getNumericOperatorAccess().getLessThenEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getNumericOperatorAccess().getGreaterThenEnumLiteralDeclaration_1()); }
		('>')
		{ after(grammarAccess.getNumericOperatorAccess().getGreaterThenEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getNumericOperatorAccess().getLessEqualEnumLiteralDeclaration_2()); }
		('<=')
		{ after(grammarAccess.getNumericOperatorAccess().getLessEqualEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getNumericOperatorAccess().getGreaterEqualEnumLiteralDeclaration_3()); }
		('>=')
		{ after(grammarAccess.getNumericOperatorAccess().getGreaterEqualEnumLiteralDeclaration_3()); }
	)
	|
	(
		{ before(grammarAccess.getNumericOperatorAccess().getEqualEnumLiteralDeclaration_4()); }
		('=')
		{ after(grammarAccess.getNumericOperatorAccess().getEqualEnumLiteralDeclaration_4()); }
	)
	|
	(
		{ before(grammarAccess.getNumericOperatorAccess().getNotEqualEnumLiteralDeclaration_5()); }
		('!=')
		{ after(grammarAccess.getNumericOperatorAccess().getNotEqualEnumLiteralDeclaration_5()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringOperator__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringOperatorAccess().getEqualEnumLiteralDeclaration_0()); }
		('=')
		{ after(grammarAccess.getStringOperatorAccess().getEqualEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getStringOperatorAccess().getNotEqualEnumLiteralDeclaration_1()); }
		('!=')
		{ after(grammarAccess.getStringOperatorAccess().getNotEqualEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getStringOperatorAccess().getLikeEnumLiteralDeclaration_2()); }
		('like')
		{ after(grammarAccess.getStringOperatorAccess().getLikeEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getStringOperatorAccess().getNotLikeEnumLiteralDeclaration_3()); }
		('notlike')
		{ after(grammarAccess.getStringOperatorAccess().getNotLikeEnumLiteralDeclaration_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanOperator__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanOperatorAccess().getEqualEnumLiteralDeclaration_0()); }
		('=')
		{ after(grammarAccess.getBooleanOperatorAccess().getEqualEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getBooleanOperatorAccess().getNotEqualEnumLiteralDeclaration_1()); }
		('!=')
		{ after(grammarAccess.getBooleanOperatorAccess().getNotEqualEnumLiteralDeclaration_1()); }
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
	{ before(grammarAccess.getModelAccess().getQueryAssignment_1()); }
	(rule__Model__QueryAssignment_1)
	{ after(grammarAccess.getModelAccess().getQueryAssignment_1()); }
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
	{ before(grammarAccess.getImportAccess().getImportURIAssignment_1()); }
	(rule__Import__ImportURIAssignment_1)
	{ after(grammarAccess.getImportAccess().getImportURIAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MQLquery__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__0__Impl
	rule__MQLquery__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getSelectKeyword_0()); }
	'select'
	{ after(grammarAccess.getMQLqueryAccess().getSelectKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__1__Impl
	rule__MQLquery__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getSelectEntriesAssignment_1()); }
	(rule__MQLquery__SelectEntriesAssignment_1)
	{ after(grammarAccess.getMQLqueryAccess().getSelectEntriesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__2__Impl
	rule__MQLquery__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getGroup_2()); }
	(rule__MQLquery__Group_2__0)*
	{ after(grammarAccess.getMQLqueryAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__3__Impl
	rule__MQLquery__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getFromKeyword_3()); }
	'from'
	{ after(grammarAccess.getMQLqueryAccess().getFromKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__4__Impl
	rule__MQLquery__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getFromEntriesAssignment_4()); }
	(rule__MQLquery__FromEntriesAssignment_4)
	{ after(grammarAccess.getMQLqueryAccess().getFromEntriesAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__5__Impl
	rule__MQLquery__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getGroup_5()); }
	(rule__MQLquery__Group_5__0)*
	{ after(grammarAccess.getMQLqueryAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getGroup_6()); }
	(rule__MQLquery__Group_6__0)?
	{ after(grammarAccess.getMQLqueryAccess().getGroup_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MQLquery__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_2__0__Impl
	rule__MQLquery__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getMQLqueryAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getSelectEntriesAssignment_2_1()); }
	(rule__MQLquery__SelectEntriesAssignment_2_1)
	{ after(grammarAccess.getMQLqueryAccess().getSelectEntriesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MQLquery__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_5__0__Impl
	rule__MQLquery__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getCommaKeyword_5_0()); }
	','
	{ after(grammarAccess.getMQLqueryAccess().getCommaKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getFromEntriesAssignment_5_1()); }
	(rule__MQLquery__FromEntriesAssignment_5_1)
	{ after(grammarAccess.getMQLqueryAccess().getFromEntriesAssignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MQLquery__Group_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_6__0__Impl
	rule__MQLquery__Group_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMQLqueryAccess().getWhereKeyword_6_0()); }
	'where'
	{ after(grammarAccess.getMQLqueryAccess().getWhereKeyword_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MQLquery__Group_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__Group_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getMQLqueryAccess().getWhereEntriesAssignment_6_1()); }
		(rule__MQLquery__WhereEntriesAssignment_6_1)
		{ after(grammarAccess.getMQLqueryAccess().getWhereEntriesAssignment_6_1()); }
	)
	(
		{ before(grammarAccess.getMQLqueryAccess().getWhereEntriesAssignment_6_1()); }
		(rule__MQLquery__WhereEntriesAssignment_6_1)*
		{ after(grammarAccess.getMQLqueryAccess().getWhereEntriesAssignment_6_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SelectEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelectEntry__Group__0__Impl
	rule__SelectEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelectEntryAccess().getSelectAssignment_0()); }
	(rule__SelectEntry__SelectAssignment_0)
	{ after(grammarAccess.getSelectEntryAccess().getSelectAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelectEntry__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelectEntryAccess().getGroup_1()); }
	(rule__SelectEntry__Group_1__0)?
	{ after(grammarAccess.getSelectEntryAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SelectEntry__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelectEntry__Group_1__0__Impl
	rule__SelectEntry__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelectEntryAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getSelectEntryAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelectEntry__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelectEntryAccess().getAttributeAssignment_1_1()); }
	(rule__SelectEntry__AttributeAssignment_1_1)
	{ after(grammarAccess.getSelectEntryAccess().getAttributeAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FromEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FromEntry__Group__0__Impl
	rule__FromEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFromEntryAccess().getTypeAssignment_0()); }
	(rule__FromEntry__TypeAssignment_0)
	{ after(grammarAccess.getFromEntryAccess().getTypeAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FromEntry__Group__1__Impl
	rule__FromEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFromEntryAccess().getWithoutsubtypesAssignment_1()); }
	(rule__FromEntry__WithoutsubtypesAssignment_1)?
	{ after(grammarAccess.getFromEntryAccess().getWithoutsubtypesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FromEntry__Group__2__Impl
	rule__FromEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFromEntryAccess().getAsKeyword_2()); }
	'as'
	{ after(grammarAccess.getFromEntryAccess().getAsKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FromEntry__Group__3__Impl
	rule__FromEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFromEntryAccess().getAliasAssignment_3()); }
	(rule__FromEntry__AliasAssignment_3)
	{ after(grammarAccess.getFromEntryAccess().getAliasAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FromEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFromEntryAccess().getScopeClauseAssignment_4()); }
	(rule__FromEntry__ScopeClauseAssignment_4)?
	{ after(grammarAccess.getFromEntryAccess().getScopeClauseAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScopeClause__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScopeClause__Group__0__Impl
	rule__ScopeClause__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScopeClauseAccess().getNotInAssignment_0()); }
	(rule__ScopeClause__NotInAssignment_0)?
	{ after(grammarAccess.getScopeClauseAccess().getNotInAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScopeClause__Group__1__Impl
	rule__ScopeClause__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScopeClauseAccess().getInKeyword_1()); }
	'in'
	{ after(grammarAccess.getScopeClauseAccess().getInKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScopeClause__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScopeClauseAccess().getScopeAssignment_2()); }
	(rule__ScopeClause__ScopeAssignment_2)
	{ after(grammarAccess.getScopeClauseAccess().getScopeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ResourceScope__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group__0__Impl
	rule__ResourceScope__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getResourcesKeyword_0()); }
	'resources'
	{ after(grammarAccess.getResourceScopeAccess().getResourcesKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group__1__Impl
	rule__ResourceScope__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getLeftCurlyBracketKeyword_1()); }
	'{'
	{ after(grammarAccess.getResourceScopeAccess().getLeftCurlyBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group__2__Impl
	rule__ResourceScope__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getUrisAssignment_2()); }
	(rule__ResourceScope__UrisAssignment_2)
	{ after(grammarAccess.getResourceScopeAccess().getUrisAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group__3__Impl
	rule__ResourceScope__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getGroup_3()); }
	(rule__ResourceScope__Group_3__0)*
	{ after(grammarAccess.getResourceScopeAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getResourceScopeAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ResourceScope__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group_3__0__Impl
	rule__ResourceScope__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getCommaKeyword_3_0()); }
	','
	{ after(grammarAccess.getResourceScopeAccess().getCommaKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ResourceScope__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getResourceScopeAccess().getUrisAssignment_3_1()); }
	(rule__ResourceScope__UrisAssignment_3_1)
	{ after(grammarAccess.getResourceScopeAccess().getUrisAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ElementScope__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group__0__Impl
	rule__ElementScope__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getElementsKeyword_0()); }
	'elements'
	{ after(grammarAccess.getElementScopeAccess().getElementsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group__1__Impl
	rule__ElementScope__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getLeftCurlyBracketKeyword_1()); }
	'{'
	{ after(grammarAccess.getElementScopeAccess().getLeftCurlyBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group__2__Impl
	rule__ElementScope__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getUrisAssignment_2()); }
	(rule__ElementScope__UrisAssignment_2)
	{ after(grammarAccess.getElementScopeAccess().getUrisAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group__3__Impl
	rule__ElementScope__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getGroup_3()); }
	(rule__ElementScope__Group_3__0)*
	{ after(grammarAccess.getElementScopeAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getElementScopeAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ElementScope__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group_3__0__Impl
	rule__ElementScope__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getCommaKeyword_3_0()); }
	','
	{ after(grammarAccess.getElementScopeAccess().getCommaKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ElementScope__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementScopeAccess().getUrisAssignment_3_1()); }
	(rule__ElementScope__UrisAssignment_3_1)
	{ after(grammarAccess.getElementScopeAccess().getUrisAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group__0__Impl
	rule__WhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWhereEntryAccess().getAndWhereEntryParserRuleCall_0()); }
	ruleAndWhereEntry
	{ after(grammarAccess.getWhereEntryAccess().getAndWhereEntryParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWhereEntryAccess().getGroup_1()); }
	(rule__WhereEntry__Group_1__0)?
	{ after(grammarAccess.getWhereEntryAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WhereEntry__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group_1__0__Impl
	rule__WhereEntry__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWhereEntryAccess().getOrWhereEntryEntriesAction_1_0()); }
	()
	{ after(grammarAccess.getWhereEntryAccess().getOrWhereEntryEntriesAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getWhereEntryAccess().getGroup_1_1()); }
		(rule__WhereEntry__Group_1_1__0)
		{ after(grammarAccess.getWhereEntryAccess().getGroup_1_1()); }
	)
	(
		{ before(grammarAccess.getWhereEntryAccess().getGroup_1_1()); }
		(rule__WhereEntry__Group_1_1__0)*
		{ after(grammarAccess.getWhereEntryAccess().getGroup_1_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WhereEntry__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group_1_1__0__Impl
	rule__WhereEntry__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWhereEntryAccess().getOrKeyword_1_1_0()); }
	'or'
	{ after(grammarAccess.getWhereEntryAccess().getOrKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WhereEntry__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWhereEntryAccess().getEntriesAssignment_1_1_1()); }
	(rule__WhereEntry__EntriesAssignment_1_1_1)
	{ after(grammarAccess.getWhereEntryAccess().getEntriesAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AndWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group__0__Impl
	rule__AndWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndWhereEntryAccess().getConcreteWhereEntryParserRuleCall_0()); }
	ruleConcreteWhereEntry
	{ after(grammarAccess.getAndWhereEntryAccess().getConcreteWhereEntryParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndWhereEntryAccess().getGroup_1()); }
	(rule__AndWhereEntry__Group_1__0)?
	{ after(grammarAccess.getAndWhereEntryAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AndWhereEntry__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group_1__0__Impl
	rule__AndWhereEntry__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndWhereEntryAccess().getAndWhereEntryEntriesAction_1_0()); }
	()
	{ after(grammarAccess.getAndWhereEntryAccess().getAndWhereEntryEntriesAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getAndWhereEntryAccess().getGroup_1_1()); }
		(rule__AndWhereEntry__Group_1_1__0)
		{ after(grammarAccess.getAndWhereEntryAccess().getGroup_1_1()); }
	)
	(
		{ before(grammarAccess.getAndWhereEntryAccess().getGroup_1_1()); }
		(rule__AndWhereEntry__Group_1_1__0)*
		{ after(grammarAccess.getAndWhereEntryAccess().getGroup_1_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AndWhereEntry__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group_1_1__0__Impl
	rule__AndWhereEntry__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndWhereEntryAccess().getAndKeyword_1_1_0()); }
	'and'
	{ after(grammarAccess.getAndWhereEntryAccess().getAndKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AndWhereEntry__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndWhereEntryAccess().getEntriesAssignment_1_1_1()); }
	(rule__AndWhereEntry__EntriesAssignment_1_1_1)
	{ after(grammarAccess.getAndWhereEntryAccess().getEntriesAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParWhereEntry__Group__0__Impl
	rule__ParWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParWhereEntryAccess().getLeftParenthesisKeyword_0()); }
	'('
	{ after(grammarAccess.getParWhereEntryAccess().getLeftParenthesisKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParWhereEntry__Group__1__Impl
	rule__ParWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ParWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParWhereEntryAccess().getWhereEntryParserRuleCall_1()); }
	ruleWhereEntry
	{ after(grammarAccess.getParWhereEntryAccess().getWhereEntryParserRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParWhereEntry__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParWhereEntryAccess().getRightParenthesisKeyword_2()); }
	')'
	{ after(grammarAccess.getParWhereEntryAccess().getRightParenthesisKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DoubleWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DoubleWhereEntry__Group__0__Impl
	rule__DoubleWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDoubleWhereEntryAccess().getAliasAssignment_0()); }
	(rule__DoubleWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getDoubleWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DoubleWhereEntry__Group__1__Impl
	rule__DoubleWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDoubleWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getDoubleWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DoubleWhereEntry__Group__2__Impl
	rule__DoubleWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDoubleWhereEntryAccess().getAttributeAssignment_2()); }
	(rule__DoubleWhereEntry__AttributeAssignment_2)
	{ after(grammarAccess.getDoubleWhereEntryAccess().getAttributeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DoubleWhereEntry__Group__3__Impl
	rule__DoubleWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDoubleWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__DoubleWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getDoubleWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DoubleWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDoubleWhereEntryAccess().getValueAssignment_4()); }
	(rule__DoubleWhereEntry__ValueAssignment_4)
	{ after(grammarAccess.getDoubleWhereEntryAccess().getValueAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LongWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LongWhereEntry__Group__0__Impl
	rule__LongWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLongWhereEntryAccess().getAliasAssignment_0()); }
	(rule__LongWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getLongWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LongWhereEntry__Group__1__Impl
	rule__LongWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLongWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getLongWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LongWhereEntry__Group__2__Impl
	rule__LongWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLongWhereEntryAccess().getAttributeAssignment_2()); }
	(rule__LongWhereEntry__AttributeAssignment_2)
	{ after(grammarAccess.getLongWhereEntryAccess().getAttributeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LongWhereEntry__Group__3__Impl
	rule__LongWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLongWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__LongWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getLongWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LongWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLongWhereEntryAccess().getValueAssignment_4()); }
	(rule__LongWhereEntry__ValueAssignment_4)
	{ after(grammarAccess.getLongWhereEntryAccess().getValueAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VariableWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__0__Impl
	rule__VariableWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getAliasAssignment_0()); }
	(rule__VariableWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getVariableWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__1__Impl
	rule__VariableWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__2__Impl
	rule__VariableWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getAttributeAssignment_2()); }
	(rule__VariableWhereEntry__AttributeAssignment_2)
	{ after(grammarAccess.getVariableWhereEntryAccess().getAttributeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__3__Impl
	rule__VariableWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__VariableWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getVariableWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__4__Impl
	rule__VariableWhereEntry__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getRightAliasAssignment_4()); }
	(rule__VariableWhereEntry__RightAliasAssignment_4)
	{ after(grammarAccess.getVariableWhereEntryAccess().getRightAliasAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__5__Impl
	rule__VariableWhereEntry__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_5()); }
	'.'
	{ after(grammarAccess.getVariableWhereEntryAccess().getFullStopKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VariableWhereEntry__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableWhereEntryAccess().getRightAttributeAssignment_6()); }
	(rule__VariableWhereEntry__RightAttributeAssignment_6)
	{ after(grammarAccess.getVariableWhereEntryAccess().getRightAttributeAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StringAttributeWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringAttributeWhereEntry__Group__0__Impl
	rule__StringAttributeWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAliasAssignment_0()); }
	(rule__StringAttributeWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringAttributeWhereEntry__Group__1__Impl
	rule__StringAttributeWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringAttributeWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getStringAttributeWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringAttributeWhereEntry__Group__2__Impl
	rule__StringAttributeWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeAssignment_2()); }
	(rule__StringAttributeWhereEntry__AttributeAssignment_2)
	{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringAttributeWhereEntry__Group__3__Impl
	rule__StringAttributeWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__StringAttributeWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringAttributeWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringAttributeWhereEntryAccess().getPatternAssignment_4()); }
	(rule__StringAttributeWhereEntry__PatternAssignment_4)
	{ after(grammarAccess.getStringAttributeWhereEntryAccess().getPatternAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BooleanAttributeWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanAttributeWhereEntry__Group__0__Impl
	rule__BooleanAttributeWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasAssignment_0()); }
	(rule__BooleanAttributeWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanAttributeWhereEntry__Group__1__Impl
	rule__BooleanAttributeWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanAttributeWhereEntry__Group__2__Impl
	rule__BooleanAttributeWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeAssignment_2()); }
	(rule__BooleanAttributeWhereEntry__AttributeAssignment_2)
	{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanAttributeWhereEntry__Group__3__Impl
	rule__BooleanAttributeWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__BooleanAttributeWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanAttributeWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAlternatives_4()); }
	(rule__BooleanAttributeWhereEntry__Alternatives_4)
	{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NullWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullWhereEntry__Group__0__Impl
	rule__NullWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullWhereEntryAccess().getAliasAssignment_0()); }
	(rule__NullWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getNullWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullWhereEntry__Group__1__Impl
	rule__NullWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getNullWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullWhereEntry__Group__2__Impl
	rule__NullWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullWhereEntryAccess().getFeatureAssignment_2()); }
	(rule__NullWhereEntry__FeatureAssignment_2)
	{ after(grammarAccess.getNullWhereEntryAccess().getFeatureAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullWhereEntry__Group__3__Impl
	rule__NullWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullWhereEntryAccess().getOperatorAssignment_3()); }
	(rule__NullWhereEntry__OperatorAssignment_3)
	{ after(grammarAccess.getNullWhereEntryAccess().getOperatorAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullWhereEntryAccess().getNullKeyword_4()); }
	'null'
	{ after(grammarAccess.getNullWhereEntryAccess().getNullKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ReferenceAliasWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceAliasWhereEntry__Group__0__Impl
	rule__ReferenceAliasWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasAssignment_0()); }
	(rule__ReferenceAliasWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceAliasWhereEntry__Group__1__Impl
	rule__ReferenceAliasWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceAliasWhereEntry__Group__2__Impl
	rule__ReferenceAliasWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceAssignment_2()); }
	(rule__ReferenceAliasWhereEntry__ReferenceAssignment_2)
	{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceAliasWhereEntry__Group__3__Impl
	rule__ReferenceAliasWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceAliasWhereEntry__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasAssignment_4()); }
	(rule__ReferenceAliasWhereEntry__RightAliasAssignment_4)
	{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SubselectWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__0__Impl
	rule__SubselectWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getAliasAssignment_0()); }
	(rule__SubselectWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getSubselectWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__1__Impl
	rule__SubselectWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getFullStopKeyword_1()); }
	'.'
	{ after(grammarAccess.getSubselectWhereEntryAccess().getFullStopKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__2__Impl
	rule__SubselectWhereEntry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getReferenceAssignment_2()); }
	(rule__SubselectWhereEntry__ReferenceAssignment_2)
	{ after(grammarAccess.getSubselectWhereEntryAccess().getReferenceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__3__Impl
	rule__SubselectWhereEntry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getNotInAssignment_3()); }
	(rule__SubselectWhereEntry__NotInAssignment_3)?
	{ after(grammarAccess.getSubselectWhereEntryAccess().getNotInAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__4__Impl
	rule__SubselectWhereEntry__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getInKeyword_4()); }
	'in'
	{ after(grammarAccess.getSubselectWhereEntryAccess().getInKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__5__Impl
	rule__SubselectWhereEntry__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getLeftParenthesisKeyword_5()); }
	'('
	{ after(grammarAccess.getSubselectWhereEntryAccess().getLeftParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__6__Impl
	rule__SubselectWhereEntry__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getSubQueryAssignment_6()); }
	(rule__SubselectWhereEntry__SubQueryAssignment_6)
	{ after(grammarAccess.getSubselectWhereEntryAccess().getSubQueryAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubselectWhereEntry__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubselectWhereEntryAccess().getRightParenthesisKeyword_7()); }
	')'
	{ after(grammarAccess.getSubselectWhereEntryAccess().getRightParenthesisKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AliasWhereEntry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AliasWhereEntry__Group__0__Impl
	rule__AliasWhereEntry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAliasWhereEntryAccess().getAliasAssignment_0()); }
	(rule__AliasWhereEntry__AliasAssignment_0)
	{ after(grammarAccess.getAliasWhereEntryAccess().getAliasAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AliasWhereEntry__Group__1__Impl
	rule__AliasWhereEntry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAliasWhereEntryAccess().getEqualsSignKeyword_1()); }
	'='
	{ after(grammarAccess.getAliasWhereEntryAccess().getEqualsSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AliasWhereEntry__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAliasWhereEntryAccess().getRightAliasAssignment_2()); }
	(rule__AliasWhereEntry__RightAliasAssignment_2)
	{ after(grammarAccess.getAliasWhereEntryAccess().getRightAliasAssignment_2()); }
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

rule__Model__QueryAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getQueryMQLqueryParserRuleCall_1_0()); }
		ruleMQLquery
		{ after(grammarAccess.getModelAccess().getQueryMQLqueryParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__ImportURIAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__SelectEntriesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_1_0()); }
		ruleSelectEntry
		{ after(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__SelectEntriesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_2_1_0()); }
		ruleSelectEntry
		{ after(grammarAccess.getMQLqueryAccess().getSelectEntriesSelectEntryParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__FromEntriesAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_4_0()); }
		ruleFromEntry
		{ after(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__FromEntriesAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_5_1_0()); }
		ruleFromEntry
		{ after(grammarAccess.getMQLqueryAccess().getFromEntriesFromEntryParserRuleCall_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MQLquery__WhereEntriesAssignment_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMQLqueryAccess().getWhereEntriesWhereEntryParserRuleCall_6_1_0()); }
		ruleWhereEntry
		{ after(grammarAccess.getMQLqueryAccess().getWhereEntriesWhereEntryParserRuleCall_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__SelectAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSelectEntryAccess().getSelectFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getSelectEntryAccess().getSelectFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getSelectEntryAccess().getSelectFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getSelectEntryAccess().getSelectFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SelectEntry__AttributeAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSelectEntryAccess().getAttributeEAttributeCrossReference_1_1_0()); }
		(
			{ before(grammarAccess.getSelectEntryAccess().getAttributeEAttributeIDTerminalRuleCall_1_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getSelectEntryAccess().getAttributeEAttributeIDTerminalRuleCall_1_1_0_1()); }
		)
		{ after(grammarAccess.getSelectEntryAccess().getAttributeEAttributeCrossReference_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__TypeAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFromEntryAccess().getTypeEClassCrossReference_0_0()); }
		(
			{ before(grammarAccess.getFromEntryAccess().getTypeEClassIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getFromEntryAccess().getTypeEClassIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getFromEntryAccess().getTypeEClassCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__WithoutsubtypesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFromEntryAccess().getWithoutsubtypesWithoutsubtypesKeyword_1_0()); }
		(
			{ before(grammarAccess.getFromEntryAccess().getWithoutsubtypesWithoutsubtypesKeyword_1_0()); }
			'withoutsubtypes'
			{ after(grammarAccess.getFromEntryAccess().getWithoutsubtypesWithoutsubtypesKeyword_1_0()); }
		)
		{ after(grammarAccess.getFromEntryAccess().getWithoutsubtypesWithoutsubtypesKeyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__AliasAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFromEntryAccess().getAliasIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getFromEntryAccess().getAliasIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FromEntry__ScopeClauseAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFromEntryAccess().getScopeClauseScopeClauseParserRuleCall_4_0()); }
		ruleScopeClause
		{ after(grammarAccess.getFromEntryAccess().getScopeClauseScopeClauseParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__NotInAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScopeClauseAccess().getNotInNotKeyword_0_0()); }
		(
			{ before(grammarAccess.getScopeClauseAccess().getNotInNotKeyword_0_0()); }
			'not'
			{ after(grammarAccess.getScopeClauseAccess().getNotInNotKeyword_0_0()); }
		)
		{ after(grammarAccess.getScopeClauseAccess().getNotInNotKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeClause__ScopeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScopeClauseAccess().getScopeScopeParserRuleCall_2_0()); }
		ruleScope
		{ after(grammarAccess.getScopeClauseAccess().getScopeScopeParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__UrisAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ResourceScope__UrisAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getResourceScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__UrisAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ElementScope__UrisAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getElementScopeAccess().getUrisSTRINGTerminalRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WhereEntry__EntriesAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWhereEntryAccess().getEntriesAndWhereEntryParserRuleCall_1_1_1_0()); }
		ruleAndWhereEntry
		{ after(grammarAccess.getWhereEntryAccess().getEntriesAndWhereEntryParserRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AndWhereEntry__EntriesAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAndWhereEntryAccess().getEntriesConcreteWhereEntryParserRuleCall_1_1_1_0()); }
		ruleConcreteWhereEntry
		{ after(grammarAccess.getAndWhereEntryAccess().getEntriesConcreteWhereEntryParserRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__AttributeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
		(
			{ before(grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDoubleWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
		ruleNumericOperator
		{ after(grammarAccess.getDoubleWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleWhereEntry__ValueAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDoubleWhereEntryAccess().getValueSIGNED_DOUBLETerminalRuleCall_4_0()); }
		RULE_SIGNED_DOUBLE
		{ after(grammarAccess.getDoubleWhereEntryAccess().getValueSIGNED_DOUBLETerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLongWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getLongWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getLongWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getLongWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__AttributeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
		(
			{ before(grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLongWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
		ruleNumericOperator
		{ after(grammarAccess.getLongWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LongWhereEntry__ValueAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLongWhereEntryAccess().getValueSINGED_LONGTerminalRuleCall_4_0()); }
		RULE_SINGED_LONG
		{ after(grammarAccess.getLongWhereEntryAccess().getValueSINGED_LONGTerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__AttributeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
		(
			{ before(grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
		ruleNumericOperator
		{ after(grammarAccess.getVariableWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__RightAliasAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0()); }
		(
			{ before(grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1()); }
		)
		{ after(grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableWhereEntry__RightAttributeAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeCrossReference_6_0()); }
		(
			{ before(grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeIDTerminalRuleCall_6_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeIDTerminalRuleCall_6_0_1()); }
		)
		{ after(grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeCrossReference_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__AttributeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
		(
			{ before(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorStringOperatorEnumRuleCall_3_0()); }
		ruleStringOperator
		{ after(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorStringOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringAttributeWhereEntry__PatternAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringAttributeWhereEntryAccess().getPatternSTRINGTerminalRuleCall_4_0()); }
		RULE_STRING
		{ after(grammarAccess.getStringAttributeWhereEntryAccess().getPatternSTRINGTerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__AttributeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
		(
			{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getAttributeEAttributeCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0()); }
		ruleBooleanOperator
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanAttributeWhereEntry__IsTrueAssignment_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueTrueKeyword_4_0_0()); }
		(
			{ before(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueTrueKeyword_4_0_0()); }
			'true'
			{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueTrueKeyword_4_0_0()); }
		)
		{ after(grammarAccess.getBooleanAttributeWhereEntryAccess().getIsTrueTrueKeyword_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNullWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getNullWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getNullWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getNullWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__FeatureAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureCrossReference_2_0()); }
		(
			{ before(grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullWhereEntry__OperatorAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNullWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0()); }
		ruleBooleanOperator
		{ after(grammarAccess.getNullWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__ReferenceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceCrossReference_2_0()); }
		(
			{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceAliasWhereEntry__RightAliasAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0()); }
		(
			{ before(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1()); }
			RULE_ID
			{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1()); }
		)
		{ after(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubselectWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getSubselectWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getSubselectWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getSubselectWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__ReferenceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubselectWhereEntryAccess().getReferenceEReferenceCrossReference_2_0()); }
		(
			{ before(grammarAccess.getSubselectWhereEntryAccess().getReferenceEReferenceIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getSubselectWhereEntryAccess().getReferenceEReferenceIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getSubselectWhereEntryAccess().getReferenceEReferenceCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__NotInAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubselectWhereEntryAccess().getNotInNotKeyword_3_0()); }
		(
			{ before(grammarAccess.getSubselectWhereEntryAccess().getNotInNotKeyword_3_0()); }
			'not'
			{ after(grammarAccess.getSubselectWhereEntryAccess().getNotInNotKeyword_3_0()); }
		)
		{ after(grammarAccess.getSubselectWhereEntryAccess().getNotInNotKeyword_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubselectWhereEntry__SubQueryAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubselectWhereEntryAccess().getSubQueryMQLqueryParserRuleCall_6_0()); }
		ruleMQLquery
		{ after(grammarAccess.getSubselectWhereEntryAccess().getSubQueryMQLqueryParserRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__AliasAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
		(
			{ before(grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AliasWhereEntry__RightAliasAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_2_0()); }
		(
			{ before(grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_SINGED_LONG : '-'? ('0'..'9')+;

RULE_SIGNED_DOUBLE : '-'? ('0'..'9')+ ('.' ('0'..'9')+)?;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;
