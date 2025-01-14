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
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug286935TestLanguage.Bug286935TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug286935TestLanguage.State;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug286935TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug286935TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug286935TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug286935TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug286935TestLanguagePackage.STATE:
				sequence_State(context, (State) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     State returns State
	 *
	 * Constraint:
	 *     (
	 *         (
	 *             isInitial?='init' | 
	 *             isFinal?='final' | 
	 *             stateKind=StateType | 
	 *             (isInitial?='init' stateKind=StateType) | 
	 *             (isInitial?='init' stateKind=StateType isFinal?='final')
	 *         )? 
	 *         stateName=ID? 
	 *         label=STRING?
	 *     )
	 * </pre>
	 */
	protected void sequence_State(ISerializationContext context, State semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
