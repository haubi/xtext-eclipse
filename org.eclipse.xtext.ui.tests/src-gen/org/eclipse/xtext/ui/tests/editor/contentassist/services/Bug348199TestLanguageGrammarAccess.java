/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.UnorderedGroup;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug348199TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class TimeperiodElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.Timeperiod");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cTimeperiodAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDefineKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cTimeperiodKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Alternatives cAlternatives_3 = (Alternatives)cGroup.eContents().get(3);
		private final Group cGroup_3_0 = (Group)cAlternatives_3.eContents().get(0);
		private final Keyword cDigitOneKeyword_3_0_0 = (Keyword)cGroup_3_0.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_0_1 = (Keyword)cGroup_3_0.eContents().get(1);
		private final Group cGroup_3_0_2 = (Group)cGroup_3_0.eContents().get(2);
		private final RuleCall cNLTerminalRuleCall_3_0_2_0 = (RuleCall)cGroup_3_0_2.eContents().get(0);
		private final Assignment cTimeAssignment_3_0_2_1 = (Assignment)cGroup_3_0_2.eContents().get(1);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_0_2_1_0 = (RuleCall)cTimeAssignment_3_0_2_1.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_3_0_3 = (UnorderedGroup)cGroup_3_0.eContents().get(3);
		private final Group cGroup_3_0_3_0 = (Group)cUnorderedGroup_3_0_3.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_0_3_0_0 = (RuleCall)cGroup_3_0_3_0.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_0_3_0_1 = (Keyword)cGroup_3_0_3_0.eContents().get(1);
		private final Assignment cNameAssignment_3_0_3_0_2 = (Assignment)cGroup_3_0_3_0.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_3_0_3_0_2_0 = (RuleCall)cNameAssignment_3_0_3_0_2.eContents().get(0);
		private final Group cGroup_3_0_3_0_3 = (Group)cGroup_3_0_3_0.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_0_3_0_3_0 = (RuleCall)cGroup_3_0_3_0_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_0_3_0_3_1 = (Assignment)cGroup_3_0_3_0_3.eContents().get(1);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_0_3_0_3_1_0 = (RuleCall)cTimeAssignment_3_0_3_0_3_1.eContents().get(0);
		private final Group cGroup_3_0_3_1 = (Group)cUnorderedGroup_3_0_3.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_0_3_1_0 = (RuleCall)cGroup_3_0_3_1.eContents().get(0);
		private final Keyword cOtherelementKeyword_3_0_3_1_1 = (Keyword)cGroup_3_0_3_1.eContents().get(1);
		private final Assignment cAliasAssignment_3_0_3_1_2 = (Assignment)cGroup_3_0_3_1.eContents().get(2);
		private final RuleCall cAliasIDTerminalRuleCall_3_0_3_1_2_0 = (RuleCall)cAliasAssignment_3_0_3_1_2.eContents().get(0);
		private final Group cGroup_3_0_3_1_3 = (Group)cGroup_3_0_3_1.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_0_3_1_3_0 = (RuleCall)cGroup_3_0_3_1_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_0_3_1_3_1 = (Assignment)cGroup_3_0_3_1_3.eContents().get(1);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_0_3_1_3_1_0 = (RuleCall)cTimeAssignment_3_0_3_1_3_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_0_4 = (RuleCall)cGroup_3_0.eContents().get(4);
		private final Keyword cRightCurlyBracketKeyword_3_0_5 = (Keyword)cGroup_3_0.eContents().get(5);
		private final Group cGroup_3_1 = (Group)cAlternatives_3.eContents().get(1);
		private final Keyword cDigitTwoKeyword_3_1_0 = (Keyword)cGroup_3_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_1_1 = (Keyword)cGroup_3_1.eContents().get(1);
		private final Group cGroup_3_1_2 = (Group)cGroup_3_1.eContents().get(2);
		private final RuleCall cNLTerminalRuleCall_3_1_2_0 = (RuleCall)cGroup_3_1_2.eContents().get(0);
		private final Assignment cTimeAssignment_3_1_2_1 = (Assignment)cGroup_3_1_2.eContents().get(1);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_1_2_1_0 = (RuleCall)cTimeAssignment_3_1_2_1.eContents().get(0);
		private final Alternatives cAlternatives_3_1_3 = (Alternatives)cGroup_3_1.eContents().get(3);
		private final Group cGroup_3_1_3_0 = (Group)cAlternatives_3_1_3.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_1_3_0_0 = (RuleCall)cGroup_3_1_3_0.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_1_3_0_1 = (Keyword)cGroup_3_1_3_0.eContents().get(1);
		private final Assignment cNameAssignment_3_1_3_0_2 = (Assignment)cGroup_3_1_3_0.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_3_1_3_0_2_0 = (RuleCall)cNameAssignment_3_1_3_0_2.eContents().get(0);
		private final Group cGroup_3_1_3_0_3 = (Group)cGroup_3_1_3_0.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_1_3_0_3_0 = (RuleCall)cGroup_3_1_3_0_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_1_3_0_3_1 = (Assignment)cGroup_3_1_3_0_3.eContents().get(1);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_1_3_0_3_1_0 = (RuleCall)cTimeAssignment_3_1_3_0_3_1.eContents().get(0);
		private final Group cGroup_3_1_3_1 = (Group)cAlternatives_3_1_3.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_1_3_1_0 = (RuleCall)cGroup_3_1_3_1.eContents().get(0);
		private final Keyword cOtherelementKeyword_3_1_3_1_1 = (Keyword)cGroup_3_1_3_1.eContents().get(1);
		private final Assignment cAliasAssignment_3_1_3_1_2 = (Assignment)cGroup_3_1_3_1.eContents().get(2);
		private final RuleCall cAliasIDTerminalRuleCall_3_1_3_1_2_0 = (RuleCall)cAliasAssignment_3_1_3_1_2.eContents().get(0);
		private final Group cGroup_3_1_3_1_3 = (Group)cGroup_3_1_3_1.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_1_3_1_3_0 = (RuleCall)cGroup_3_1_3_1_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_1_3_1_3_1 = (Assignment)cGroup_3_1_3_1_3.eContents().get(1);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_1_3_1_3_1_0 = (RuleCall)cTimeAssignment_3_1_3_1_3_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_1_4 = (RuleCall)cGroup_3_1.eContents().get(4);
		private final Keyword cRightCurlyBracketKeyword_3_1_5 = (Keyword)cGroup_3_1.eContents().get(5);
		private final Group cGroup_3_2 = (Group)cAlternatives_3.eContents().get(2);
		private final Keyword cDigitThreeKeyword_3_2_0 = (Keyword)cGroup_3_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_2_1 = (Keyword)cGroup_3_2.eContents().get(1);
		private final Group cGroup_3_2_2 = (Group)cGroup_3_2.eContents().get(2);
		private final RuleCall cNLTerminalRuleCall_3_2_2_0 = (RuleCall)cGroup_3_2_2.eContents().get(0);
		private final Assignment cTimeAssignment_3_2_2_1 = (Assignment)cGroup_3_2_2.eContents().get(1);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_2_2_1_0 = (RuleCall)cTimeAssignment_3_2_2_1.eContents().get(0);
		private final Alternatives cAlternatives_3_2_3 = (Alternatives)cGroup_3_2.eContents().get(3);
		private final Group cGroup_3_2_3_0 = (Group)cAlternatives_3_2_3.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_2_3_0_0 = (RuleCall)cGroup_3_2_3_0.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_2_3_0_1 = (Keyword)cGroup_3_2_3_0.eContents().get(1);
		private final Assignment cNameAssignment_3_2_3_0_2 = (Assignment)cGroup_3_2_3_0.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_3_2_3_0_2_0 = (RuleCall)cNameAssignment_3_2_3_0_2.eContents().get(0);
		private final Group cGroup_3_2_3_0_3 = (Group)cGroup_3_2_3_0.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_2_3_0_3_0 = (RuleCall)cGroup_3_2_3_0_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_2_3_0_3_1 = (Assignment)cGroup_3_2_3_0_3.eContents().get(1);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_2_3_0_3_1_0 = (RuleCall)cTimeAssignment_3_2_3_0_3_1.eContents().get(0);
		private final Group cGroup_3_2_3_1 = (Group)cAlternatives_3_2_3.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_2_3_1_0 = (RuleCall)cGroup_3_2_3_1.eContents().get(0);
		private final Keyword cOtherelementKeyword_3_2_3_1_1 = (Keyword)cGroup_3_2_3_1.eContents().get(1);
		private final Assignment cAliasAssignment_3_2_3_1_2 = (Assignment)cGroup_3_2_3_1.eContents().get(2);
		private final RuleCall cAliasIDTerminalRuleCall_3_2_3_1_2_0 = (RuleCall)cAliasAssignment_3_2_3_1_2.eContents().get(0);
		private final Group cGroup_3_2_3_1_3 = (Group)cGroup_3_2_3_1.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_2_3_1_3_0 = (RuleCall)cGroup_3_2_3_1_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_2_3_1_3_1 = (Assignment)cGroup_3_2_3_1_3.eContents().get(1);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_2_3_1_3_1_0 = (RuleCall)cTimeAssignment_3_2_3_1_3_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_2_4 = (RuleCall)cGroup_3_2.eContents().get(4);
		private final Keyword cRightCurlyBracketKeyword_3_2_5 = (Keyword)cGroup_3_2.eContents().get(5);
		private final Group cGroup_3_3 = (Group)cAlternatives_3.eContents().get(3);
		private final Keyword cDigitFourKeyword_3_3_0 = (Keyword)cGroup_3_3.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_3_1 = (Keyword)cGroup_3_3.eContents().get(1);
		private final Group cGroup_3_3_2 = (Group)cGroup_3_3.eContents().get(2);
		private final RuleCall cNLTerminalRuleCall_3_3_2_0 = (RuleCall)cGroup_3_3_2.eContents().get(0);
		private final Assignment cTimeAssignment_3_3_2_1 = (Assignment)cGroup_3_3_2.eContents().get(1);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_3_2_1_0 = (RuleCall)cTimeAssignment_3_3_2_1.eContents().get(0);
		private final Alternatives cAlternatives_3_3_3 = (Alternatives)cGroup_3_3.eContents().get(3);
		private final Group cGroup_3_3_3_0 = (Group)cAlternatives_3_3_3.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_3_3_0_0 = (RuleCall)cGroup_3_3_3_0.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_3_3_0_1 = (Keyword)cGroup_3_3_3_0.eContents().get(1);
		private final Assignment cNameAssignment_3_3_3_0_2 = (Assignment)cGroup_3_3_3_0.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_3_3_3_0_2_0 = (RuleCall)cNameAssignment_3_3_3_0_2.eContents().get(0);
		private final Group cGroup_3_3_3_0_3 = (Group)cGroup_3_3_3_0.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_3_3_0_3_0 = (RuleCall)cGroup_3_3_3_0_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_3_3_0_3_1 = (Assignment)cGroup_3_3_3_0_3.eContents().get(1);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_3_3_0_3_1_0 = (RuleCall)cTimeAssignment_3_3_3_0_3_1.eContents().get(0);
		private final Group cGroup_3_3_3_1 = (Group)cAlternatives_3_3_3.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_3_3_1_0 = (RuleCall)cGroup_3_3_3_1.eContents().get(0);
		private final Keyword cOtherelementKeyword_3_3_3_1_1 = (Keyword)cGroup_3_3_3_1.eContents().get(1);
		private final Assignment cAliasAssignment_3_3_3_1_2 = (Assignment)cGroup_3_3_3_1.eContents().get(2);
		private final RuleCall cAliasIDTerminalRuleCall_3_3_3_1_2_0 = (RuleCall)cAliasAssignment_3_3_3_1_2.eContents().get(0);
		private final Group cGroup_3_3_3_1_3 = (Group)cGroup_3_3_3_1.eContents().get(3);
		private final RuleCall cNLTerminalRuleCall_3_3_3_1_3_0 = (RuleCall)cGroup_3_3_3_1_3.eContents().get(0);
		private final Assignment cTimeAssignment_3_3_3_1_3_1 = (Assignment)cGroup_3_3_3_1_3.eContents().get(1);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_3_3_1_3_1_0 = (RuleCall)cTimeAssignment_3_3_3_1_3_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_3_4 = (RuleCall)cGroup_3_3.eContents().get(4);
		private final Keyword cRightCurlyBracketKeyword_3_3_5 = (Keyword)cGroup_3_3.eContents().get(5);
		private final Group cGroup_3_4 = (Group)cAlternatives_3.eContents().get(4);
		private final Keyword cDigitFiveKeyword_3_4_0 = (Keyword)cGroup_3_4.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_4_1 = (Keyword)cGroup_3_4.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_4_2 = (RuleCall)cGroup_3_4.eContents().get(2);
		private final Group cGroup_3_4_3 = (Group)cGroup_3_4.eContents().get(3);
		private final Assignment cTimeAssignment_3_4_3_0 = (Assignment)cGroup_3_4_3.eContents().get(0);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_4_3_0_0 = (RuleCall)cTimeAssignment_3_4_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_4_3_1 = (RuleCall)cGroup_3_4_3.eContents().get(1);
		private final UnorderedGroup cUnorderedGroup_3_4_4 = (UnorderedGroup)cGroup_3_4.eContents().get(4);
		private final Group cGroup_3_4_4_0 = (Group)cUnorderedGroup_3_4_4.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_4_4_0_0 = (Keyword)cGroup_3_4_4_0.eContents().get(0);
		private final Assignment cNameAssignment_3_4_4_0_1 = (Assignment)cGroup_3_4_4_0.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_3_4_4_0_1_0 = (RuleCall)cNameAssignment_3_4_4_0_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_4_4_0_2 = (RuleCall)cGroup_3_4_4_0.eContents().get(2);
		private final Group cGroup_3_4_4_0_3 = (Group)cGroup_3_4_4_0.eContents().get(3);
		private final Assignment cTimeAssignment_3_4_4_0_3_0 = (Assignment)cGroup_3_4_4_0_3.eContents().get(0);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_4_4_0_3_0_0 = (RuleCall)cTimeAssignment_3_4_4_0_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_4_4_0_3_1 = (RuleCall)cGroup_3_4_4_0_3.eContents().get(1);
		private final Group cGroup_3_4_4_1 = (Group)cUnorderedGroup_3_4_4.eContents().get(1);
		private final Keyword cOtherelementKeyword_3_4_4_1_0 = (Keyword)cGroup_3_4_4_1.eContents().get(0);
		private final Assignment cAliasAssignment_3_4_4_1_1 = (Assignment)cGroup_3_4_4_1.eContents().get(1);
		private final RuleCall cAliasIDTerminalRuleCall_3_4_4_1_1_0 = (RuleCall)cAliasAssignment_3_4_4_1_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_4_4_1_2 = (RuleCall)cGroup_3_4_4_1.eContents().get(2);
		private final Group cGroup_3_4_4_1_3 = (Group)cGroup_3_4_4_1.eContents().get(3);
		private final Assignment cTimeAssignment_3_4_4_1_3_0 = (Assignment)cGroup_3_4_4_1_3.eContents().get(0);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_4_4_1_3_0_0 = (RuleCall)cTimeAssignment_3_4_4_1_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_4_4_1_3_1 = (RuleCall)cGroup_3_4_4_1_3.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_3_4_5 = (Keyword)cGroup_3_4.eContents().get(5);
		private final Group cGroup_3_5 = (Group)cAlternatives_3.eContents().get(5);
		private final Keyword cDigitSixKeyword_3_5_0 = (Keyword)cGroup_3_5.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_5_1 = (Keyword)cGroup_3_5.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_5_2 = (RuleCall)cGroup_3_5.eContents().get(2);
		private final Group cGroup_3_5_3 = (Group)cGroup_3_5.eContents().get(3);
		private final Assignment cTimeAssignment_3_5_3_0 = (Assignment)cGroup_3_5_3.eContents().get(0);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_5_3_0_0 = (RuleCall)cTimeAssignment_3_5_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_5_3_1 = (RuleCall)cGroup_3_5_3.eContents().get(1);
		private final Alternatives cAlternatives_3_5_4 = (Alternatives)cGroup_3_5.eContents().get(4);
		private final Group cGroup_3_5_4_0 = (Group)cAlternatives_3_5_4.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_5_4_0_0 = (Keyword)cGroup_3_5_4_0.eContents().get(0);
		private final Assignment cNameAssignment_3_5_4_0_1 = (Assignment)cGroup_3_5_4_0.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_3_5_4_0_1_0 = (RuleCall)cNameAssignment_3_5_4_0_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_5_4_0_2 = (RuleCall)cGroup_3_5_4_0.eContents().get(2);
		private final Group cGroup_3_5_4_0_3 = (Group)cGroup_3_5_4_0.eContents().get(3);
		private final Assignment cTimeAssignment_3_5_4_0_3_0 = (Assignment)cGroup_3_5_4_0_3.eContents().get(0);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_5_4_0_3_0_0 = (RuleCall)cTimeAssignment_3_5_4_0_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_5_4_0_3_1 = (RuleCall)cGroup_3_5_4_0_3.eContents().get(1);
		private final Group cGroup_3_5_4_1 = (Group)cAlternatives_3_5_4.eContents().get(1);
		private final Keyword cOtherelementKeyword_3_5_4_1_0 = (Keyword)cGroup_3_5_4_1.eContents().get(0);
		private final Assignment cAliasAssignment_3_5_4_1_1 = (Assignment)cGroup_3_5_4_1.eContents().get(1);
		private final RuleCall cAliasIDTerminalRuleCall_3_5_4_1_1_0 = (RuleCall)cAliasAssignment_3_5_4_1_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_5_4_1_2 = (RuleCall)cGroup_3_5_4_1.eContents().get(2);
		private final Group cGroup_3_5_4_1_3 = (Group)cGroup_3_5_4_1.eContents().get(3);
		private final Assignment cTimeAssignment_3_5_4_1_3_0 = (Assignment)cGroup_3_5_4_1_3.eContents().get(0);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_5_4_1_3_0_0 = (RuleCall)cTimeAssignment_3_5_4_1_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_5_4_1_3_1 = (RuleCall)cGroup_3_5_4_1_3.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_3_5_5 = (Keyword)cGroup_3_5.eContents().get(5);
		private final Group cGroup_3_6 = (Group)cAlternatives_3.eContents().get(6);
		private final Keyword cDigitSevenKeyword_3_6_0 = (Keyword)cGroup_3_6.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_6_1 = (Keyword)cGroup_3_6.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_6_2 = (RuleCall)cGroup_3_6.eContents().get(2);
		private final Group cGroup_3_6_3 = (Group)cGroup_3_6.eContents().get(3);
		private final Assignment cTimeAssignment_3_6_3_0 = (Assignment)cGroup_3_6_3.eContents().get(0);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_6_3_0_0 = (RuleCall)cTimeAssignment_3_6_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_6_3_1 = (RuleCall)cGroup_3_6_3.eContents().get(1);
		private final Alternatives cAlternatives_3_6_4 = (Alternatives)cGroup_3_6.eContents().get(4);
		private final Group cGroup_3_6_4_0 = (Group)cAlternatives_3_6_4.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_6_4_0_0 = (Keyword)cGroup_3_6_4_0.eContents().get(0);
		private final Assignment cNameAssignment_3_6_4_0_1 = (Assignment)cGroup_3_6_4_0.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_3_6_4_0_1_0 = (RuleCall)cNameAssignment_3_6_4_0_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_6_4_0_2 = (RuleCall)cGroup_3_6_4_0.eContents().get(2);
		private final Group cGroup_3_6_4_0_3 = (Group)cGroup_3_6_4_0.eContents().get(3);
		private final Assignment cTimeAssignment_3_6_4_0_3_0 = (Assignment)cGroup_3_6_4_0_3.eContents().get(0);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_6_4_0_3_0_0 = (RuleCall)cTimeAssignment_3_6_4_0_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_6_4_0_3_1 = (RuleCall)cGroup_3_6_4_0_3.eContents().get(1);
		private final Group cGroup_3_6_4_1 = (Group)cAlternatives_3_6_4.eContents().get(1);
		private final Keyword cOtherelementKeyword_3_6_4_1_0 = (Keyword)cGroup_3_6_4_1.eContents().get(0);
		private final Assignment cAliasAssignment_3_6_4_1_1 = (Assignment)cGroup_3_6_4_1.eContents().get(1);
		private final RuleCall cAliasIDTerminalRuleCall_3_6_4_1_1_0 = (RuleCall)cAliasAssignment_3_6_4_1_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_6_4_1_2 = (RuleCall)cGroup_3_6_4_1.eContents().get(2);
		private final Group cGroup_3_6_4_1_3 = (Group)cGroup_3_6_4_1.eContents().get(3);
		private final Assignment cTimeAssignment_3_6_4_1_3_0 = (Assignment)cGroup_3_6_4_1_3.eContents().get(0);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_6_4_1_3_0_0 = (RuleCall)cTimeAssignment_3_6_4_1_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_6_4_1_3_1 = (RuleCall)cGroup_3_6_4_1_3.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_3_6_5 = (Keyword)cGroup_3_6.eContents().get(5);
		private final Group cGroup_3_7 = (Group)cAlternatives_3.eContents().get(7);
		private final Keyword cDigitEightKeyword_3_7_0 = (Keyword)cGroup_3_7.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_7_1 = (Keyword)cGroup_3_7.eContents().get(1);
		private final RuleCall cNLTerminalRuleCall_3_7_2 = (RuleCall)cGroup_3_7.eContents().get(2);
		private final Group cGroup_3_7_3 = (Group)cGroup_3_7.eContents().get(3);
		private final Assignment cTimeAssignment_3_7_3_0 = (Assignment)cGroup_3_7_3.eContents().get(0);
		private final RuleCall cTimeTimeDef1ParserRuleCall_3_7_3_0_0 = (RuleCall)cTimeAssignment_3_7_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_7_3_1 = (RuleCall)cGroup_3_7_3.eContents().get(1);
		private final Alternatives cAlternatives_3_7_4 = (Alternatives)cGroup_3_7.eContents().get(4);
		private final Group cGroup_3_7_4_0 = (Group)cAlternatives_3_7_4.eContents().get(0);
		private final Keyword cTimeperiod_nameKeyword_3_7_4_0_0 = (Keyword)cGroup_3_7_4_0.eContents().get(0);
		private final Assignment cNameAssignment_3_7_4_0_1 = (Assignment)cGroup_3_7_4_0.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_3_7_4_0_1_0 = (RuleCall)cNameAssignment_3_7_4_0_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_7_4_0_2 = (RuleCall)cGroup_3_7_4_0.eContents().get(2);
		private final Group cGroup_3_7_4_0_3 = (Group)cGroup_3_7_4_0.eContents().get(3);
		private final Assignment cTimeAssignment_3_7_4_0_3_0 = (Assignment)cGroup_3_7_4_0_3.eContents().get(0);
		private final RuleCall cTimeTimeDef2ParserRuleCall_3_7_4_0_3_0_0 = (RuleCall)cTimeAssignment_3_7_4_0_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_7_4_0_3_1 = (RuleCall)cGroup_3_7_4_0_3.eContents().get(1);
		private final Group cGroup_3_7_4_1 = (Group)cAlternatives_3_7_4.eContents().get(1);
		private final Keyword cOtherelementKeyword_3_7_4_1_0 = (Keyword)cGroup_3_7_4_1.eContents().get(0);
		private final Assignment cAliasAssignment_3_7_4_1_1 = (Assignment)cGroup_3_7_4_1.eContents().get(1);
		private final RuleCall cAliasIDTerminalRuleCall_3_7_4_1_1_0 = (RuleCall)cAliasAssignment_3_7_4_1_1.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_7_4_1_2 = (RuleCall)cGroup_3_7_4_1.eContents().get(2);
		private final Group cGroup_3_7_4_1_3 = (Group)cGroup_3_7_4_1.eContents().get(3);
		private final Assignment cTimeAssignment_3_7_4_1_3_0 = (Assignment)cGroup_3_7_4_1_3.eContents().get(0);
		private final RuleCall cTimeTimeDef3ParserRuleCall_3_7_4_1_3_0_0 = (RuleCall)cTimeAssignment_3_7_4_1_3_0.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_3_7_4_1_3_1 = (RuleCall)cGroup_3_7_4_1_3.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_3_7_5 = (Keyword)cGroup_3_7.eContents().get(5);
		
		//Timeperiod:
		//    {Timeperiod}
		//    'define' 'timeperiod'
		//    (
		//        '1'
		//        '{'
		//            (NL+ time+=TimeDef1)*
		//            (
		//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
		//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//            )
		//            NL+
		//        '}'
		//    |
		//        '2'
		//        '{'
		//            (NL+ time+=TimeDef1)*
		//            (
		//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//            )
		//            NL+
		//        '}'
		//    |
		//        '3'
		//        '{'
		//            (NL+ time+=TimeDef1)*
		//            (
		//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//            )+
		//            NL+
		//        '}'
		//    |
		//        '4'
		//        '{'
		//            (NL+ time+=TimeDef1)*
		//            (
		//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//            )*
		//            NL+
		//        '}'
		//    |
		//        '5'
		//        '{'
		//            NL+
		//            (time+=TimeDef1 NL+)*
		//            (
		//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
		//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//            )
		//        '}'
		//    |
		//        '6'
		//        '{'
		//            NL+
		//            (time+=TimeDef1 NL+)*
		//            (
		//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//            )
		//        '}'
		//    |
		//        '7'
		//        '{'
		//            NL+
		//            (time+=TimeDef1 NL+)*
		//            (
		//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//            )+
		//        '}'
		//    |
		//        '8'
		//        '{'
		//            NL+
		//            (time+=TimeDef1 NL+)*
		//            (
		//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//            )*
		//        '}'
		//    );
		@Override public ParserRule getRule() { return rule; }
		
		//{Timeperiod}
		//'define' 'timeperiod'
		//(
		//    '1'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//        )
		//        NL+
		//    '}'
		//|
		//    '2'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//        )
		//        NL+
		//    '}'
		//|
		//    '3'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//        )+
		//        NL+
		//    '}'
		//|
		//    '4'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//        )*
		//        NL+
		//    '}'
		//|
		//    '5'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//        )
		//    '}'
		//|
		//    '6'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//        )
		//    '}'
		//|
		//    '7'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//        )+
		//    '}'
		//|
		//    '8'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//        )*
		//    '}'
		//)
		public Group getGroup() { return cGroup; }
		
		//{Timeperiod}
		public Action getTimeperiodAction_0() { return cTimeperiodAction_0; }
		
		//'define'
		public Keyword getDefineKeyword_1() { return cDefineKeyword_1; }
		
		//'timeperiod'
		public Keyword getTimeperiodKeyword_2() { return cTimeperiodKeyword_2; }
		
		//(
		//    '1'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//        )
		//        NL+
		//    '}'
		//|
		//    '2'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//        )
		//        NL+
		//    '}'
		//|
		//    '3'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//        )+
		//        NL+
		//    '}'
		//|
		//    '4'
		//    '{'
		//        (NL+ time+=TimeDef1)*
		//        (
		//        (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//        (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//        )*
		//        NL+
		//    '}'
		//|
		//    '5'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//        )
		//    '}'
		//|
		//    '6'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//        )
		//    '}'
		//|
		//    '7'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//        )+
		//    '}'
		//|
		//    '8'
		//    '{'
		//        NL+
		//        (time+=TimeDef1 NL+)*
		//        (
		//        ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//        ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//        )*
		//    '}'
		//)
		public Alternatives getAlternatives_3() { return cAlternatives_3; }
		
		//'1'
		//'{'
		//    (NL+ time+=TimeDef1)*
		//    (
		//    (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
		//    (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//    )
		//    NL+
		//'}'
		public Group getGroup_3_0() { return cGroup_3_0; }
		
		//'1'
		public Keyword getDigitOneKeyword_3_0_0() { return cDigitOneKeyword_3_0_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_0_1() { return cLeftCurlyBracketKeyword_3_0_1; }
		
		//(NL+ time+=TimeDef1)*
		public Group getGroup_3_0_2() { return cGroup_3_0_2; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_2_0() { return cNLTerminalRuleCall_3_0_2_0; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_0_2_1() { return cTimeAssignment_3_0_2_1; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_0_2_1_0() { return cTimeTimeDef1ParserRuleCall_3_0_2_1_0; }
		
		//(
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//)
		public UnorderedGroup getUnorderedGroup_3_0_3() { return cUnorderedGroup_3_0_3; }
		
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* )
		public Group getGroup_3_0_3_0() { return cGroup_3_0_3_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_3_0_0() { return cNLTerminalRuleCall_3_0_3_0_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_0_3_0_1() { return cTimeperiod_nameKeyword_3_0_3_0_1; }
		
		//name+=ID
		public Assignment getNameAssignment_3_0_3_0_2() { return cNameAssignment_3_0_3_0_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0_3_0_2_0() { return cNameIDTerminalRuleCall_3_0_3_0_2_0; }
		
		//(NL+ time+=TimeDef2)*
		public Group getGroup_3_0_3_0_3() { return cGroup_3_0_3_0_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_3_0_3_0() { return cNLTerminalRuleCall_3_0_3_0_3_0; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_0_3_0_3_1() { return cTimeAssignment_3_0_3_0_3_1; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_0_3_0_3_1_0() { return cTimeTimeDef2ParserRuleCall_3_0_3_0_3_1_0; }
		
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		public Group getGroup_3_0_3_1() { return cGroup_3_0_3_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_3_1_0() { return cNLTerminalRuleCall_3_0_3_1_0; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_0_3_1_1() { return cOtherelementKeyword_3_0_3_1_1; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_0_3_1_2() { return cAliasAssignment_3_0_3_1_2; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_0_3_1_2_0() { return cAliasIDTerminalRuleCall_3_0_3_1_2_0; }
		
		//(NL+ time+=TimeDef3)*
		public Group getGroup_3_0_3_1_3() { return cGroup_3_0_3_1_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_3_1_3_0() { return cNLTerminalRuleCall_3_0_3_1_3_0; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_0_3_1_3_1() { return cTimeAssignment_3_0_3_1_3_1; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_0_3_1_3_1_0() { return cTimeTimeDef3ParserRuleCall_3_0_3_1_3_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_0_4() { return cNLTerminalRuleCall_3_0_4; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_0_5() { return cRightCurlyBracketKeyword_3_0_5; }
		
		//'2'
		//'{'
		//    (NL+ time+=TimeDef1)*
		//    (
		//    (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//    (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//    )
		//    NL+
		//'}'
		public Group getGroup_3_1() { return cGroup_3_1; }
		
		//'2'
		public Keyword getDigitTwoKeyword_3_1_0() { return cDigitTwoKeyword_3_1_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_1_1() { return cLeftCurlyBracketKeyword_3_1_1; }
		
		//(NL+ time+=TimeDef1)*
		public Group getGroup_3_1_2() { return cGroup_3_1_2; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_2_0() { return cNLTerminalRuleCall_3_1_2_0; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_1_2_1() { return cTimeAssignment_3_1_2_1; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_1_2_1_0() { return cTimeTimeDef1ParserRuleCall_3_1_2_1_0; }
		
		//(
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		//)
		public Alternatives getAlternatives_3_1_3() { return cAlternatives_3_1_3; }
		
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* )
		public Group getGroup_3_1_3_0() { return cGroup_3_1_3_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_3_0_0() { return cNLTerminalRuleCall_3_1_3_0_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_1_3_0_1() { return cTimeperiod_nameKeyword_3_1_3_0_1; }
		
		//name+=ID
		public Assignment getNameAssignment_3_1_3_0_2() { return cNameAssignment_3_1_3_0_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_1_3_0_2_0() { return cNameIDTerminalRuleCall_3_1_3_0_2_0; }
		
		//(NL+ time+=TimeDef2)*
		public Group getGroup_3_1_3_0_3() { return cGroup_3_1_3_0_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_3_0_3_0() { return cNLTerminalRuleCall_3_1_3_0_3_0; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_1_3_0_3_1() { return cTimeAssignment_3_1_3_0_3_1; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_1_3_0_3_1_0() { return cTimeTimeDef2ParserRuleCall_3_1_3_0_3_1_0; }
		
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
		public Group getGroup_3_1_3_1() { return cGroup_3_1_3_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_3_1_0() { return cNLTerminalRuleCall_3_1_3_1_0; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_1_3_1_1() { return cOtherelementKeyword_3_1_3_1_1; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_1_3_1_2() { return cAliasAssignment_3_1_3_1_2; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_1_3_1_2_0() { return cAliasIDTerminalRuleCall_3_1_3_1_2_0; }
		
		//(NL+ time+=TimeDef3)*
		public Group getGroup_3_1_3_1_3() { return cGroup_3_1_3_1_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_3_1_3_0() { return cNLTerminalRuleCall_3_1_3_1_3_0; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_1_3_1_3_1() { return cTimeAssignment_3_1_3_1_3_1; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_1_3_1_3_1_0() { return cTimeTimeDef3ParserRuleCall_3_1_3_1_3_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_1_4() { return cNLTerminalRuleCall_3_1_4; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_1_5() { return cRightCurlyBracketKeyword_3_1_5; }
		
		//'3'
		//'{'
		//    (NL+ time+=TimeDef1)*
		//    (
		//    (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//    (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//    )+
		//    NL+
		//'}'
		public Group getGroup_3_2() { return cGroup_3_2; }
		
		//'3'
		public Keyword getDigitThreeKeyword_3_2_0() { return cDigitThreeKeyword_3_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_2_1() { return cLeftCurlyBracketKeyword_3_2_1; }
		
		//(NL+ time+=TimeDef1)*
		public Group getGroup_3_2_2() { return cGroup_3_2_2; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_2_0() { return cNLTerminalRuleCall_3_2_2_0; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_2_2_1() { return cTimeAssignment_3_2_2_1; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_2_2_1_0() { return cTimeTimeDef1ParserRuleCall_3_2_2_1_0; }
		
		//(
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//)+
		public Alternatives getAlternatives_3_2_3() { return cAlternatives_3_2_3; }
		
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* )
		public Group getGroup_3_2_3_0() { return cGroup_3_2_3_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_3_0_0() { return cNLTerminalRuleCall_3_2_3_0_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_2_3_0_1() { return cTimeperiod_nameKeyword_3_2_3_0_1; }
		
		//name+=ID
		public Assignment getNameAssignment_3_2_3_0_2() { return cNameAssignment_3_2_3_0_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_2_3_0_2_0() { return cNameIDTerminalRuleCall_3_2_3_0_2_0; }
		
		//(NL+ time+=TimeDef2)*
		public Group getGroup_3_2_3_0_3() { return cGroup_3_2_3_0_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_3_0_3_0() { return cNLTerminalRuleCall_3_2_3_0_3_0; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_2_3_0_3_1() { return cTimeAssignment_3_2_3_0_3_1; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_2_3_0_3_1_0() { return cTimeTimeDef2ParserRuleCall_3_2_3_0_3_1_0; }
		
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		public Group getGroup_3_2_3_1() { return cGroup_3_2_3_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_3_1_0() { return cNLTerminalRuleCall_3_2_3_1_0; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_2_3_1_1() { return cOtherelementKeyword_3_2_3_1_1; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_2_3_1_2() { return cAliasAssignment_3_2_3_1_2; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_2_3_1_2_0() { return cAliasIDTerminalRuleCall_3_2_3_1_2_0; }
		
		//(NL+ time+=TimeDef3)*
		public Group getGroup_3_2_3_1_3() { return cGroup_3_2_3_1_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_3_1_3_0() { return cNLTerminalRuleCall_3_2_3_1_3_0; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_2_3_1_3_1() { return cTimeAssignment_3_2_3_1_3_1; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_2_3_1_3_1_0() { return cTimeTimeDef3ParserRuleCall_3_2_3_1_3_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_2_4() { return cNLTerminalRuleCall_3_2_4; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_2_5() { return cRightCurlyBracketKeyword_3_2_5; }
		
		//'4'
		//'{'
		//    (NL+ time+=TimeDef1)*
		//    (
		//    (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//    (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//    )*
		//    NL+
		//'}'
		public Group getGroup_3_3() { return cGroup_3_3; }
		
		//'4'
		public Keyword getDigitFourKeyword_3_3_0() { return cDigitFourKeyword_3_3_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_3_1() { return cLeftCurlyBracketKeyword_3_3_1; }
		
		//(NL+ time+=TimeDef1)*
		public Group getGroup_3_3_2() { return cGroup_3_3_2; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_2_0() { return cNLTerminalRuleCall_3_3_2_0; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_3_2_1() { return cTimeAssignment_3_3_2_1; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_3_2_1_0() { return cTimeTimeDef1ParserRuleCall_3_3_2_1_0; }
		
		//(
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		//)*
		public Alternatives getAlternatives_3_3_3() { return cAlternatives_3_3_3; }
		
		//(NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* )
		public Group getGroup_3_3_3_0() { return cGroup_3_3_3_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_3_0_0() { return cNLTerminalRuleCall_3_3_3_0_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_3_3_0_1() { return cTimeperiod_nameKeyword_3_3_3_0_1; }
		
		//name+=ID
		public Assignment getNameAssignment_3_3_3_0_2() { return cNameAssignment_3_3_3_0_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_3_3_0_2_0() { return cNameIDTerminalRuleCall_3_3_3_0_2_0; }
		
		//(NL+ time+=TimeDef2)*
		public Group getGroup_3_3_3_0_3() { return cGroup_3_3_3_0_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_3_0_3_0() { return cNLTerminalRuleCall_3_3_3_0_3_0; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_3_3_0_3_1() { return cTimeAssignment_3_3_3_0_3_1; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_3_3_0_3_1_0() { return cTimeTimeDef2ParserRuleCall_3_3_3_0_3_1_0; }
		
		//(NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
		public Group getGroup_3_3_3_1() { return cGroup_3_3_3_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_3_1_0() { return cNLTerminalRuleCall_3_3_3_1_0; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_3_3_1_1() { return cOtherelementKeyword_3_3_3_1_1; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_3_3_1_2() { return cAliasAssignment_3_3_3_1_2; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_3_3_1_2_0() { return cAliasIDTerminalRuleCall_3_3_3_1_2_0; }
		
		//(NL+ time+=TimeDef3)*
		public Group getGroup_3_3_3_1_3() { return cGroup_3_3_3_1_3; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_3_1_3_0() { return cNLTerminalRuleCall_3_3_3_1_3_0; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_3_3_1_3_1() { return cTimeAssignment_3_3_3_1_3_1; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_3_3_1_3_1_0() { return cTimeTimeDef3ParserRuleCall_3_3_3_1_3_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_3_4() { return cNLTerminalRuleCall_3_3_4; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_3_5() { return cRightCurlyBracketKeyword_3_3_5; }
		
		//'5'
		//'{'
		//    NL+
		//    (time+=TimeDef1 NL+)*
		//    (
		//    ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
		//    ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//    )
		//'}'
		public Group getGroup_3_4() { return cGroup_3_4; }
		
		//'5'
		public Keyword getDigitFiveKeyword_3_4_0() { return cDigitFiveKeyword_3_4_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_4_1() { return cLeftCurlyBracketKeyword_3_4_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_2() { return cNLTerminalRuleCall_3_4_2; }
		
		//(time+=TimeDef1 NL+)*
		public Group getGroup_3_4_3() { return cGroup_3_4_3; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_4_3_0() { return cTimeAssignment_3_4_3_0; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_4_3_0_0() { return cTimeTimeDef1ParserRuleCall_3_4_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_3_1() { return cNLTerminalRuleCall_3_4_3_1; }
		
		//(
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//)
		public UnorderedGroup getUnorderedGroup_3_4_4() { return cUnorderedGroup_3_4_4; }
		
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* )
		public Group getGroup_3_4_4_0() { return cGroup_3_4_4_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_4_4_0_0() { return cTimeperiod_nameKeyword_3_4_4_0_0; }
		
		//name+=ID
		public Assignment getNameAssignment_3_4_4_0_1() { return cNameAssignment_3_4_4_0_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_4_4_0_1_0() { return cNameIDTerminalRuleCall_3_4_4_0_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_4_0_2() { return cNLTerminalRuleCall_3_4_4_0_2; }
		
		//(time+=TimeDef2 NL+)*
		public Group getGroup_3_4_4_0_3() { return cGroup_3_4_4_0_3; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_4_4_0_3_0() { return cTimeAssignment_3_4_4_0_3_0; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_4_4_0_3_0_0() { return cTimeTimeDef2ParserRuleCall_3_4_4_0_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_4_0_3_1() { return cNLTerminalRuleCall_3_4_4_0_3_1; }
		
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		public Group getGroup_3_4_4_1() { return cGroup_3_4_4_1; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_4_4_1_0() { return cOtherelementKeyword_3_4_4_1_0; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_4_4_1_1() { return cAliasAssignment_3_4_4_1_1; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_4_4_1_1_0() { return cAliasIDTerminalRuleCall_3_4_4_1_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_4_1_2() { return cNLTerminalRuleCall_3_4_4_1_2; }
		
		//(time+=TimeDef3 NL+ )*
		public Group getGroup_3_4_4_1_3() { return cGroup_3_4_4_1_3; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_4_4_1_3_0() { return cTimeAssignment_3_4_4_1_3_0; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_4_4_1_3_0_0() { return cTimeTimeDef3ParserRuleCall_3_4_4_1_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_4_4_1_3_1() { return cNLTerminalRuleCall_3_4_4_1_3_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_4_5() { return cRightCurlyBracketKeyword_3_4_5; }
		
		//'6'
		//'{'
		//    NL+
		//    (time+=TimeDef1 NL+)*
		//    (
		//    ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//    ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//    )
		//'}'
		public Group getGroup_3_5() { return cGroup_3_5; }
		
		//'6'
		public Keyword getDigitSixKeyword_3_5_0() { return cDigitSixKeyword_3_5_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_5_1() { return cLeftCurlyBracketKeyword_3_5_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_2() { return cNLTerminalRuleCall_3_5_2; }
		
		//(time+=TimeDef1 NL+)*
		public Group getGroup_3_5_3() { return cGroup_3_5_3; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_5_3_0() { return cTimeAssignment_3_5_3_0; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_5_3_0_0() { return cTimeTimeDef1ParserRuleCall_3_5_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_3_1() { return cNLTerminalRuleCall_3_5_3_1; }
		
		//(
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		//)
		public Alternatives getAlternatives_3_5_4() { return cAlternatives_3_5_4; }
		
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* )
		public Group getGroup_3_5_4_0() { return cGroup_3_5_4_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_5_4_0_0() { return cTimeperiod_nameKeyword_3_5_4_0_0; }
		
		//name+=ID
		public Assignment getNameAssignment_3_5_4_0_1() { return cNameAssignment_3_5_4_0_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_5_4_0_1_0() { return cNameIDTerminalRuleCall_3_5_4_0_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_4_0_2() { return cNLTerminalRuleCall_3_5_4_0_2; }
		
		//(time+=TimeDef2 NL+)*
		public Group getGroup_3_5_4_0_3() { return cGroup_3_5_4_0_3; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_5_4_0_3_0() { return cTimeAssignment_3_5_4_0_3_0; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_5_4_0_3_0_0() { return cTimeTimeDef2ParserRuleCall_3_5_4_0_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_4_0_3_1() { return cNLTerminalRuleCall_3_5_4_0_3_1; }
		
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
		public Group getGroup_3_5_4_1() { return cGroup_3_5_4_1; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_5_4_1_0() { return cOtherelementKeyword_3_5_4_1_0; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_5_4_1_1() { return cAliasAssignment_3_5_4_1_1; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_5_4_1_1_0() { return cAliasIDTerminalRuleCall_3_5_4_1_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_4_1_2() { return cNLTerminalRuleCall_3_5_4_1_2; }
		
		//(time+=TimeDef3 NL+ )*
		public Group getGroup_3_5_4_1_3() { return cGroup_3_5_4_1_3; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_5_4_1_3_0() { return cTimeAssignment_3_5_4_1_3_0; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_5_4_1_3_0_0() { return cTimeTimeDef3ParserRuleCall_3_5_4_1_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_5_4_1_3_1() { return cNLTerminalRuleCall_3_5_4_1_3_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_5_5() { return cRightCurlyBracketKeyword_3_5_5; }
		
		//'7'
		//'{'
		//    NL+
		//    (time+=TimeDef1 NL+)*
		//    (
		//    ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//    ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//    )+
		//'}'
		public Group getGroup_3_6() { return cGroup_3_6; }
		
		//'7'
		public Keyword getDigitSevenKeyword_3_6_0() { return cDigitSevenKeyword_3_6_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_6_1() { return cLeftCurlyBracketKeyword_3_6_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_2() { return cNLTerminalRuleCall_3_6_2; }
		
		//(time+=TimeDef1 NL+)*
		public Group getGroup_3_6_3() { return cGroup_3_6_3; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_6_3_0() { return cTimeAssignment_3_6_3_0; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_6_3_0_0() { return cTimeTimeDef1ParserRuleCall_3_6_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_3_1() { return cNLTerminalRuleCall_3_6_3_1; }
		
		//(
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//)+
		public Alternatives getAlternatives_3_6_4() { return cAlternatives_3_6_4; }
		
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* )
		public Group getGroup_3_6_4_0() { return cGroup_3_6_4_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_6_4_0_0() { return cTimeperiod_nameKeyword_3_6_4_0_0; }
		
		//name+=ID
		public Assignment getNameAssignment_3_6_4_0_1() { return cNameAssignment_3_6_4_0_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_6_4_0_1_0() { return cNameIDTerminalRuleCall_3_6_4_0_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_4_0_2() { return cNLTerminalRuleCall_3_6_4_0_2; }
		
		//(time+=TimeDef2 NL+)*
		public Group getGroup_3_6_4_0_3() { return cGroup_3_6_4_0_3; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_6_4_0_3_0() { return cTimeAssignment_3_6_4_0_3_0; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_6_4_0_3_0_0() { return cTimeTimeDef2ParserRuleCall_3_6_4_0_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_4_0_3_1() { return cNLTerminalRuleCall_3_6_4_0_3_1; }
		
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		public Group getGroup_3_6_4_1() { return cGroup_3_6_4_1; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_6_4_1_0() { return cOtherelementKeyword_3_6_4_1_0; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_6_4_1_1() { return cAliasAssignment_3_6_4_1_1; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_6_4_1_1_0() { return cAliasIDTerminalRuleCall_3_6_4_1_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_4_1_2() { return cNLTerminalRuleCall_3_6_4_1_2; }
		
		//(time+=TimeDef3 NL+ )*
		public Group getGroup_3_6_4_1_3() { return cGroup_3_6_4_1_3; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_6_4_1_3_0() { return cTimeAssignment_3_6_4_1_3_0; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_6_4_1_3_0_0() { return cTimeTimeDef3ParserRuleCall_3_6_4_1_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_6_4_1_3_1() { return cNLTerminalRuleCall_3_6_4_1_3_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_6_5() { return cRightCurlyBracketKeyword_3_6_5; }
		
		//'8'
		//'{'
		//    NL+
		//    (time+=TimeDef1 NL+)*
		//    (
		//    ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//    ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//    )*
		//'}'
		public Group getGroup_3_7() { return cGroup_3_7; }
		
		//'8'
		public Keyword getDigitEightKeyword_3_7_0() { return cDigitEightKeyword_3_7_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3_7_1() { return cLeftCurlyBracketKeyword_3_7_1; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_2() { return cNLTerminalRuleCall_3_7_2; }
		
		//(time+=TimeDef1 NL+)*
		public Group getGroup_3_7_3() { return cGroup_3_7_3; }
		
		//time+=TimeDef1
		public Assignment getTimeAssignment_3_7_3_0() { return cTimeAssignment_3_7_3_0; }
		
		//TimeDef1
		public RuleCall getTimeTimeDef1ParserRuleCall_3_7_3_0_0() { return cTimeTimeDef1ParserRuleCall_3_7_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_3_1() { return cNLTerminalRuleCall_3_7_3_1; }
		
		//(
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		//)*
		public Alternatives getAlternatives_3_7_4() { return cAlternatives_3_7_4; }
		
		//('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* )
		public Group getGroup_3_7_4_0() { return cGroup_3_7_4_0; }
		
		//'timeperiod_name'
		public Keyword getTimeperiod_nameKeyword_3_7_4_0_0() { return cTimeperiod_nameKeyword_3_7_4_0_0; }
		
		//name+=ID
		public Assignment getNameAssignment_3_7_4_0_1() { return cNameAssignment_3_7_4_0_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_7_4_0_1_0() { return cNameIDTerminalRuleCall_3_7_4_0_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_4_0_2() { return cNLTerminalRuleCall_3_7_4_0_2; }
		
		//(time+=TimeDef2 NL+)*
		public Group getGroup_3_7_4_0_3() { return cGroup_3_7_4_0_3; }
		
		//time+=TimeDef2
		public Assignment getTimeAssignment_3_7_4_0_3_0() { return cTimeAssignment_3_7_4_0_3_0; }
		
		//TimeDef2
		public RuleCall getTimeTimeDef2ParserRuleCall_3_7_4_0_3_0_0() { return cTimeTimeDef2ParserRuleCall_3_7_4_0_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_4_0_3_1() { return cNLTerminalRuleCall_3_7_4_0_3_1; }
		
		//('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
		public Group getGroup_3_7_4_1() { return cGroup_3_7_4_1; }
		
		//'otherelement'
		public Keyword getOtherelementKeyword_3_7_4_1_0() { return cOtherelementKeyword_3_7_4_1_0; }
		
		//alias+=ID
		public Assignment getAliasAssignment_3_7_4_1_1() { return cAliasAssignment_3_7_4_1_1; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_7_4_1_1_0() { return cAliasIDTerminalRuleCall_3_7_4_1_1_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_4_1_2() { return cNLTerminalRuleCall_3_7_4_1_2; }
		
		//(time+=TimeDef3 NL+ )*
		public Group getGroup_3_7_4_1_3() { return cGroup_3_7_4_1_3; }
		
		//time+=TimeDef3
		public Assignment getTimeAssignment_3_7_4_1_3_0() { return cTimeAssignment_3_7_4_1_3_0; }
		
		//TimeDef3
		public RuleCall getTimeTimeDef3ParserRuleCall_3_7_4_1_3_0_0() { return cTimeTimeDef3ParserRuleCall_3_7_4_1_3_0_0; }
		
		//NL+
		public RuleCall getNLTerminalRuleCall_3_7_4_1_3_1() { return cNLTerminalRuleCall_3_7_4_1_3_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_3_7_5() { return cRightCurlyBracketKeyword_3_7_5; }
	}
	public class TimeDef1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cJulyKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDayAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDayINTTerminalRuleCall_1_0 = (RuleCall)cDayAssignment_1.eContents().get(0);
		
		//TimeDef1 returns TimeDef:
		//    'july' day=INT
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'july' day=INT
		public Group getGroup() { return cGroup; }
		
		//'july'
		public Keyword getJulyKeyword_0() { return cJulyKeyword_0; }
		
		//day=INT
		public Assignment getDayAssignment_1() { return cDayAssignment_1; }
		
		//INT
		public RuleCall getDayINTTerminalRuleCall_1_0() { return cDayINTTerminalRuleCall_1_0; }
	}
	public class TimeDef2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cAugustKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDayAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDayINTTerminalRuleCall_1_0 = (RuleCall)cDayAssignment_1.eContents().get(0);
		
		//TimeDef2 returns TimeDef:
		//    'august' day=INT
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'august' day=INT
		public Group getGroup() { return cGroup; }
		
		//'august'
		public Keyword getAugustKeyword_0() { return cAugustKeyword_0; }
		
		//day=INT
		public Assignment getDayAssignment_1() { return cDayAssignment_1; }
		
		//INT
		public RuleCall getDayINTTerminalRuleCall_1_0() { return cDayINTTerminalRuleCall_1_0; }
	}
	public class TimeDef3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cSeptemberKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDayAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDayINTTerminalRuleCall_1_0 = (RuleCall)cDayAssignment_1.eContents().get(0);
		
		//TimeDef3 returns TimeDef:
		//    'september' day=INT
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'september' day=INT
		public Group getGroup() { return cGroup; }
		
		//'september'
		public Keyword getSeptemberKeyword_0() { return cSeptemberKeyword_0; }
		
		//day=INT
		public Assignment getDayAssignment_1() { return cDayAssignment_1; }
		
		//INT
		public RuleCall getDayINTTerminalRuleCall_1_0() { return cDayINTTerminalRuleCall_1_0; }
	}
	
	
	private final TimeperiodElements pTimeperiod;
	private final TimeDef1Elements pTimeDef1;
	private final TimeDef2Elements pTimeDef2;
	private final TimeDef3Elements pTimeDef3;
	private final TerminalRule tNL;
	private final TerminalRule tWS;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug348199TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pTimeperiod = new TimeperiodElements();
		this.pTimeDef1 = new TimeDef1Elements();
		this.pTimeDef2 = new TimeDef2Elements();
		this.pTimeDef3 = new TimeDef3Elements();
		this.tNL = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.NL");
		this.tWS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.WS");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Timeperiod:
	//    {Timeperiod}
	//    'define' 'timeperiod'
	//    (
	//        '1'
	//        '{'
	//            (NL+ time+=TimeDef1)*
	//            (
	//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) &
	//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
	//            )
	//            NL+
	//        '}'
	//    |
	//        '2'
	//        '{'
	//            (NL+ time+=TimeDef1)*
	//            (
	//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
	//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)?
	//            )
	//            NL+
	//        '}'
	//    |
	//        '3'
	//        '{'
	//            (NL+ time+=TimeDef1)*
	//            (
	//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
	//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
	//            )+
	//            NL+
	//        '}'
	//    |
	//        '4'
	//        '{'
	//            (NL+ time+=TimeDef1)*
	//            (
	//            (NL+ 'timeperiod_name' name+=ID (NL+ time+=TimeDef2)* ) |
	//            (NL+ 'otherelement' alias+=ID (NL+ time+=TimeDef3)*)
	//            )*
	//            NL+
	//        '}'
	//    |
	//        '5'
	//        '{'
	//            NL+
	//            (time+=TimeDef1 NL+)*
	//            (
	//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) &
	//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
	//            )
	//        '}'
	//    |
	//        '6'
	//        '{'
	//            NL+
	//            (time+=TimeDef1 NL+)*
	//            (
	//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
	//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)?
	//            )
	//        '}'
	//    |
	//        '7'
	//        '{'
	//            NL+
	//            (time+=TimeDef1 NL+)*
	//            (
	//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
	//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
	//            )+
	//        '}'
	//    |
	//        '8'
	//        '{'
	//            NL+
	//            (time+=TimeDef1 NL+)*
	//            (
	//            ('timeperiod_name' name+=ID NL+ (time+=TimeDef2 NL+)* ) |
	//            ('otherelement' alias+=ID NL+ (time+=TimeDef3 NL+ )*)
	//            )*
	//        '}'
	//    );
	public TimeperiodElements getTimeperiodAccess() {
		return pTimeperiod;
	}
	
	public ParserRule getTimeperiodRule() {
		return getTimeperiodAccess().getRule();
	}
	
	//TimeDef1 returns TimeDef:
	//    'july' day=INT
	//;
	public TimeDef1Elements getTimeDef1Access() {
		return pTimeDef1;
	}
	
	public ParserRule getTimeDef1Rule() {
		return getTimeDef1Access().getRule();
	}
	
	//TimeDef2 returns TimeDef:
	//    'august' day=INT
	//;
	public TimeDef2Elements getTimeDef2Access() {
		return pTimeDef2;
	}
	
	public ParserRule getTimeDef2Rule() {
		return getTimeDef2Access().getRule();
	}
	
	//TimeDef3 returns TimeDef:
	//    'september' day=INT
	//;
	public TimeDef3Elements getTimeDef3Access() {
		return pTimeDef3;
	}
	
	public ParserRule getTimeDef3Rule() {
		return getTimeDef3Access().getRule();
	}
	
	//terminal NL:
	//    '\r'? '\n'
	//;
	public TerminalRule getNLRule() {
		return tNL;
	}
	
	//@Override
	//terminal WS:
	//    ' ' | '\t'
	//;
	public TerminalRule getWSRule() {
		return tWS;
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}
