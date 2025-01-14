/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.DomainModelTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class DomainModelTestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected DomainModelTestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Attribute_SemicolonKeyword_4_q;
	protected AbstractElementAlias match_DataType_SemicolonKeyword_2_q;
	protected AbstractElementAlias match_Reference_SemicolonKeyword_4_q;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (DomainModelTestLanguageGrammarAccess) access;
		match_Attribute_SemicolonKeyword_4_q = new TokenAlias(false, true, grammarAccess.getAttributeAccess().getSemicolonKeyword_4());
		match_DataType_SemicolonKeyword_2_q = new TokenAlias(false, true, grammarAccess.getDataTypeAccess().getSemicolonKeyword_2());
		match_Reference_SemicolonKeyword_4_q = new TokenAlias(false, true, grammarAccess.getReferenceAccess().getSemicolonKeyword_4());
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		return "";
	}
	
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_Attribute_SemicolonKeyword_4_q.equals(syntax))
				emit_Attribute_SemicolonKeyword_4_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_DataType_SemicolonKeyword_2_q.equals(syntax))
				emit_DataType_SemicolonKeyword_2_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Reference_SemicolonKeyword_4_q.equals(syntax))
				emit_Reference_SemicolonKeyword_4_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ';'?
	 *
	 * This ambiguous syntax occurs at:
	 *     type=[DataType|ID] (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_Attribute_SemicolonKeyword_4_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ';'?
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_DataType_SemicolonKeyword_2_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ';'?
	 *
	 * This ambiguous syntax occurs at:
	 *     type=[Class|ID] (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_Reference_SemicolonKeyword_4_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
