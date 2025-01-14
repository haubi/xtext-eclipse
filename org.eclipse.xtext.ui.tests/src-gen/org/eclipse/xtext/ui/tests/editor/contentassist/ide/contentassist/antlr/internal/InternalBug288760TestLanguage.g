/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug288760TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug288760TestLanguageGrammarAccess;

}
@parser::members {
	private Bug288760TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug288760TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleWorkflowElement
entryRuleWorkflowElement
:
{ before(grammarAccess.getWorkflowElementRule()); }
	 ruleWorkflowElement
{ after(grammarAccess.getWorkflowElementRule()); } 
	 EOF 
;

// Rule WorkflowElement
ruleWorkflowElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getAlternatives()); }
		(rule__WorkflowElement__Alternatives)
		{ after(grammarAccess.getWorkflowElementAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getGroup()); }
		(rule__Attribute__Group__0)
		{ after(grammarAccess.getAttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getGroup_0()); }
		(rule__WorkflowElement__Group_0__0)
		{ after(grammarAccess.getWorkflowElementAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getWorkflowElementAccess().getGroup_1()); }
		(rule__WorkflowElement__Group_1__0)
		{ after(grammarAccess.getWorkflowElementAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_0__0__Impl
	rule__WorkflowElement__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getNameAssignment_0_0()); }
	(rule__WorkflowElement__NameAssignment_0_0)
	{ after(grammarAccess.getWorkflowElementAccess().getNameAssignment_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_0__1__Impl
	rule__WorkflowElement__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getAttributesAssignment_0_1()); }
	(rule__WorkflowElement__AttributesAssignment_0_1)*
	{ after(grammarAccess.getWorkflowElementAccess().getAttributesAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getEND_TAG_SHORTTerminalRuleCall_0_2()); }
	RULE_END_TAG_SHORT
	{ after(grammarAccess.getWorkflowElementAccess().getEND_TAG_SHORTTerminalRuleCall_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WorkflowElement__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_1__0__Impl
	rule__WorkflowElement__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getNameAssignment_1_0()); }
	(rule__WorkflowElement__NameAssignment_1_0)
	{ after(grammarAccess.getWorkflowElementAccess().getNameAssignment_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_1__1__Impl
	rule__WorkflowElement__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getAttributesAssignment_1_1()); }
	(rule__WorkflowElement__AttributesAssignment_1_1)*
	{ after(grammarAccess.getWorkflowElementAccess().getAttributesAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_1__2__Impl
	rule__WorkflowElement__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getGTTerminalRuleCall_1_2()); }
	RULE_GT
	{ after(grammarAccess.getWorkflowElementAccess().getGTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_1__3__Impl
	rule__WorkflowElement__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getChildrenAssignment_1_3()); }
	(rule__WorkflowElement__ChildrenAssignment_1_3)*
	{ after(grammarAccess.getWorkflowElementAccess().getChildrenAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__WorkflowElement__Group_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getWorkflowElementAccess().getEndAssignment_1_4()); }
	(rule__WorkflowElement__EndAssignment_1_4)
	{ after(grammarAccess.getWorkflowElementAccess().getEndAssignment_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
	(rule__Attribute__NameAssignment_0)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getEQTerminalRuleCall_1()); }
	RULE_EQ
	{ after(grammarAccess.getAttributeAccess().getEQTerminalRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getValueAssignment_2()); }
	(rule__Attribute__ValueAssignment_2)
	{ after(grammarAccess.getAttributeAccess().getValueAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__WorkflowElement__NameAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_0_0_0()); }
		RULE_START_TAG
		{ after(grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__AttributesAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_0_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__NameAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_1_0_0()); }
		RULE_START_TAG
		{ after(grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__AttributesAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_1_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__ChildrenAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getChildrenWorkflowElementParserRuleCall_1_3_0()); }
		ruleWorkflowElement
		{ after(grammarAccess.getWorkflowElementAccess().getChildrenWorkflowElementParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__WorkflowElement__EndAssignment_1_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getWorkflowElementAccess().getEndEND_TAGTerminalRuleCall_1_4_0()); }
		RULE_END_TAG
		{ after(grammarAccess.getWorkflowElementAccess().getEndEND_TAGTerminalRuleCall_1_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__ValueAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ML_COMMENT : '<!--' ( options {greedy=false;} : . )*'-->';

RULE_START_TAG : RULE_LT RULE_ID;

fragment RULE_LT : '<';

RULE_GT : '>';

RULE_EQ : '=';

RULE_END_TAG_SHORT : '/>';

fragment RULE_END_TAG_START : '</';

RULE_END_TAG : RULE_END_TAG_START RULE_ID RULE_GT;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
