/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug348199TestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug348199TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug348199TestLanguageGrammarAccess grammarAccess;

    public InternalBug348199TestLanguageParser(TokenStream input, Bug348199TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Timeperiod";
   	}

   	@Override
   	protected Bug348199TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleTimeperiod
entryRuleTimeperiod returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTimeperiodRule()); }
	iv_ruleTimeperiod=ruleTimeperiod
	{ $current=$iv_ruleTimeperiod.current; }
	EOF;

// Rule Timeperiod
ruleTimeperiod returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTimeperiodAccess().getTimeperiodAction_0(),
					$current);
			}
		)
		otherlv_1='define'
		{
			newLeafNode(otherlv_1, grammarAccess.getTimeperiodAccess().getDefineKeyword_1());
		}
		otherlv_2='timeperiod'
		{
			newLeafNode(otherlv_2, grammarAccess.getTimeperiodAccess().getTimeperiodKeyword_2());
		}
		(
			(
				otherlv_3='1'
				{
					newLeafNode(otherlv_3, grammarAccess.getTimeperiodAccess().getDigitOneKeyword_3_0_0());
				}
				otherlv_4='{'
				{
					newLeafNode(otherlv_4, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_0_1());
				}
				(
					(
						this_NL_5=RULE_NL
						{
							newLeafNode(this_NL_5, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_2_0());
						}
					)+
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_0_2_1_0());
							}
							lv_time_6_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_6_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
				(
					(
						{ 
						  getUnorderedGroupHelper().enter(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3());
						}
						(
							(
					(
						{getUnorderedGroupHelper().canSelect(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3(), 0)}?=>(
							{
								getUnorderedGroupHelper().select(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3(), 0);
							}
										({true}?=>((
											this_NL_8=RULE_NL
											{
												newLeafNode(this_NL_8, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_3_0_0());
											}
										)+
										otherlv_9='timeperiod_name'
										{
											newLeafNode(otherlv_9, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_0_3_0_1());
										}
										(
											(
												lv_name_10_0=RULE_ID
												{
													newLeafNode(lv_name_10_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_0_3_0_2_0());
												}
												{
													if ($current==null) {
														$current = createModelElement(grammarAccess.getTimeperiodRule());
													}
													addWithLastConsumed(
														$current,
														"name",
														lv_name_10_0,
														"org.eclipse.xtext.common.Terminals.ID");
												}
											)
										)
										(
											(
												this_NL_11=RULE_NL
												{
													newLeafNode(this_NL_11, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_3_0_3_0());
												}
											)+
											(
												(
													{
														newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_0_3_0_3_1_0());
													}
													lv_time_12_0=ruleTimeDef2
													{
														if ($current==null) {
															$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
														}
														add(
															$current,
															"time",
															lv_time_12_0,
															"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
														afterParserOrEnumRuleCall();
													}
												)
											)
										)*
										))
							{ 
								getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3());
							}
						)
					)|
					(
						{getUnorderedGroupHelper().canSelect(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3(), 1)}?=>(
							{
								getUnorderedGroupHelper().select(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3(), 1);
							}
										({true}?=>((
											this_NL_13=RULE_NL
											{
												newLeafNode(this_NL_13, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_3_1_0());
											}
										)+
										otherlv_14='otherelement'
										{
											newLeafNode(otherlv_14, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_0_3_1_1());
										}
										(
											(
												lv_alias_15_0=RULE_ID
												{
													newLeafNode(lv_alias_15_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_0_3_1_2_0());
												}
												{
													if ($current==null) {
														$current = createModelElement(grammarAccess.getTimeperiodRule());
													}
													addWithLastConsumed(
														$current,
														"alias",
														lv_alias_15_0,
														"org.eclipse.xtext.common.Terminals.ID");
												}
											)
										)
										(
											(
												this_NL_16=RULE_NL
												{
													newLeafNode(this_NL_16, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_3_1_3_0());
												}
											)+
											(
												(
													{
														newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_0_3_1_3_1_0());
													}
													lv_time_17_0=ruleTimeDef3
													{
														if ($current==null) {
															$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
														}
														add(
															$current,
															"time",
															lv_time_17_0,
															"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
														afterParserOrEnumRuleCall();
													}
												)
											)
										)*
										))
							{ 
								getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3());
							}
						)
					)
							)+
							{getUnorderedGroupHelper().canLeave(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3())}?
						)
					)
						{ 
						  getUnorderedGroupHelper().leave(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_0_3());
						}
				)
				(
					this_NL_18=RULE_NL
					{
						newLeafNode(this_NL_18, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_0_4());
					}
				)+
				otherlv_19='}'
				{
					newLeafNode(otherlv_19, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_0_5());
				}
			)
			    |
			(
				otherlv_20='2'
				{
					newLeafNode(otherlv_20, grammarAccess.getTimeperiodAccess().getDigitTwoKeyword_3_1_0());
				}
				otherlv_21='{'
				{
					newLeafNode(otherlv_21, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_1_1());
				}
				(
					(
						this_NL_22=RULE_NL
						{
							newLeafNode(this_NL_22, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_2_0());
						}
					)+
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_1_2_1_0());
							}
							lv_time_23_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_23_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
				(
					(
						(
							this_NL_24=RULE_NL
							{
								newLeafNode(this_NL_24, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_3_0_0());
							}
						)+
						otherlv_25='timeperiod_name'
						{
							newLeafNode(otherlv_25, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_1_3_0_1());
						}
						(
							(
								lv_name_26_0=RULE_ID
								{
									newLeafNode(lv_name_26_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_1_3_0_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_26_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_27=RULE_NL
								{
									newLeafNode(this_NL_27, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_3_0_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_1_3_0_3_1_0());
									}
									lv_time_28_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_28_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)
					    |
					(
						(
							this_NL_29=RULE_NL
							{
								newLeafNode(this_NL_29, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_3_1_0());
							}
						)+
						otherlv_30='otherelement'
						{
							newLeafNode(otherlv_30, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_1_3_1_1());
						}
						(
							(
								lv_alias_31_0=RULE_ID
								{
									newLeafNode(lv_alias_31_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_1_3_1_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_31_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_32=RULE_NL
								{
									newLeafNode(this_NL_32, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_3_1_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_1_3_1_3_1_0());
									}
									lv_time_33_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_33_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)?
				)
				(
					this_NL_34=RULE_NL
					{
						newLeafNode(this_NL_34, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_1_4());
					}
				)+
				otherlv_35='}'
				{
					newLeafNode(otherlv_35, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_1_5());
				}
			)
			    |
			(
				otherlv_36='3'
				{
					newLeafNode(otherlv_36, grammarAccess.getTimeperiodAccess().getDigitThreeKeyword_3_2_0());
				}
				otherlv_37='{'
				{
					newLeafNode(otherlv_37, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_2_1());
				}
				(
					(
						this_NL_38=RULE_NL
						{
							newLeafNode(this_NL_38, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_2_0());
						}
					)+
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_2_2_1_0());
							}
							lv_time_39_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_39_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
				(
					(
						(
							this_NL_40=RULE_NL
							{
								newLeafNode(this_NL_40, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_3_0_0());
							}
						)+
						otherlv_41='timeperiod_name'
						{
							newLeafNode(otherlv_41, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_2_3_0_1());
						}
						(
							(
								lv_name_42_0=RULE_ID
								{
									newLeafNode(lv_name_42_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_2_3_0_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_42_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_43=RULE_NL
								{
									newLeafNode(this_NL_43, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_3_0_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_2_3_0_3_1_0());
									}
									lv_time_44_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_44_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)
					    |
					(
						(
							this_NL_45=RULE_NL
							{
								newLeafNode(this_NL_45, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_3_1_0());
							}
						)+
						otherlv_46='otherelement'
						{
							newLeafNode(otherlv_46, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_2_3_1_1());
						}
						(
							(
								lv_alias_47_0=RULE_ID
								{
									newLeafNode(lv_alias_47_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_2_3_1_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_47_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_48=RULE_NL
								{
									newLeafNode(this_NL_48, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_3_1_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_2_3_1_3_1_0());
									}
									lv_time_49_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_49_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)
				)+
				(
					this_NL_50=RULE_NL
					{
						newLeafNode(this_NL_50, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_2_4());
					}
				)+
				otherlv_51='}'
				{
					newLeafNode(otherlv_51, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_2_5());
				}
			)
			    |
			(
				otherlv_52='4'
				{
					newLeafNode(otherlv_52, grammarAccess.getTimeperiodAccess().getDigitFourKeyword_3_3_0());
				}
				otherlv_53='{'
				{
					newLeafNode(otherlv_53, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_3_1());
				}
				(
					(
						this_NL_54=RULE_NL
						{
							newLeafNode(this_NL_54, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_2_0());
						}
					)+
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_3_2_1_0());
							}
							lv_time_55_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_55_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
				(
					(
						(
							this_NL_56=RULE_NL
							{
								newLeafNode(this_NL_56, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_3_0_0());
							}
						)+
						otherlv_57='timeperiod_name'
						{
							newLeafNode(otherlv_57, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_3_3_0_1());
						}
						(
							(
								lv_name_58_0=RULE_ID
								{
									newLeafNode(lv_name_58_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_3_3_0_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_58_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_59=RULE_NL
								{
									newLeafNode(this_NL_59, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_3_0_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_3_3_0_3_1_0());
									}
									lv_time_60_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_60_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)
					    |
					(
						(
							this_NL_61=RULE_NL
							{
								newLeafNode(this_NL_61, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_3_1_0());
							}
						)+
						otherlv_62='otherelement'
						{
							newLeafNode(otherlv_62, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_3_3_1_1());
						}
						(
							(
								lv_alias_63_0=RULE_ID
								{
									newLeafNode(lv_alias_63_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_3_3_1_2_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_63_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							(
								this_NL_64=RULE_NL
								{
									newLeafNode(this_NL_64, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_3_1_3_0());
								}
							)+
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_3_3_1_3_1_0());
									}
									lv_time_65_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_65_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
						)*
					)
				)*
				(
					this_NL_66=RULE_NL
					{
						newLeafNode(this_NL_66, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_3_4());
					}
				)+
				otherlv_67='}'
				{
					newLeafNode(otherlv_67, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_3_5());
				}
			)
			    |
			(
				otherlv_68='5'
				{
					newLeafNode(otherlv_68, grammarAccess.getTimeperiodAccess().getDigitFiveKeyword_3_4_0());
				}
				otherlv_69='{'
				{
					newLeafNode(otherlv_69, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_4_1());
				}
				(
					this_NL_70=RULE_NL
					{
						newLeafNode(this_NL_70, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_2());
					}
				)+
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_4_3_0_0());
							}
							lv_time_71_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_71_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						this_NL_72=RULE_NL
						{
							newLeafNode(this_NL_72, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_3_1());
						}
					)+
				)*
				(
					(
						{ 
						  getUnorderedGroupHelper().enter(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4());
						}
						(
							(
					(
						{getUnorderedGroupHelper().canSelect(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4(), 0)}?=>(
							{
								getUnorderedGroupHelper().select(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4(), 0);
							}
										({true}?=>(otherlv_74='timeperiod_name'
										{
											newLeafNode(otherlv_74, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_4_4_0_0());
										}
										(
											(
												lv_name_75_0=RULE_ID
												{
													newLeafNode(lv_name_75_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_4_4_0_1_0());
												}
												{
													if ($current==null) {
														$current = createModelElement(grammarAccess.getTimeperiodRule());
													}
													addWithLastConsumed(
														$current,
														"name",
														lv_name_75_0,
														"org.eclipse.xtext.common.Terminals.ID");
												}
											)
										)
										(
											this_NL_76=RULE_NL
											{
												newLeafNode(this_NL_76, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_4_0_2());
											}
										)+
										(
											(
												(
													{
														newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_4_4_0_3_0_0());
													}
													lv_time_77_0=ruleTimeDef2
													{
														if ($current==null) {
															$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
														}
														add(
															$current,
															"time",
															lv_time_77_0,
															"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
														afterParserOrEnumRuleCall();
													}
												)
											)
											(
												this_NL_78=RULE_NL
												{
													newLeafNode(this_NL_78, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_4_0_3_1());
												}
											)+
										)*
										))
							{ 
								getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4());
							}
						)
					)|
					(
						{getUnorderedGroupHelper().canSelect(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4(), 1)}?=>(
							{
								getUnorderedGroupHelper().select(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4(), 1);
							}
										({true}?=>(otherlv_79='otherelement'
										{
											newLeafNode(otherlv_79, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_4_4_1_0());
										}
										(
											(
												lv_alias_80_0=RULE_ID
												{
													newLeafNode(lv_alias_80_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_4_4_1_1_0());
												}
												{
													if ($current==null) {
														$current = createModelElement(grammarAccess.getTimeperiodRule());
													}
													addWithLastConsumed(
														$current,
														"alias",
														lv_alias_80_0,
														"org.eclipse.xtext.common.Terminals.ID");
												}
											)
										)
										(
											this_NL_81=RULE_NL
											{
												newLeafNode(this_NL_81, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_4_1_2());
											}
										)+
										(
											(
												(
													{
														newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_4_4_1_3_0_0());
													}
													lv_time_82_0=ruleTimeDef3
													{
														if ($current==null) {
															$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
														}
														add(
															$current,
															"time",
															lv_time_82_0,
															"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
														afterParserOrEnumRuleCall();
													}
												)
											)
											(
												this_NL_83=RULE_NL
												{
													newLeafNode(this_NL_83, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_4_4_1_3_1());
												}
											)+
										)*
										))
							{ 
								getUnorderedGroupHelper().returnFromSelection(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4());
							}
						)
					)
							)+
							{getUnorderedGroupHelper().canLeave(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4())}?
						)
					)
						{ 
						  getUnorderedGroupHelper().leave(grammarAccess.getTimeperiodAccess().getUnorderedGroup_3_4_4());
						}
				)
				otherlv_84='}'
				{
					newLeafNode(otherlv_84, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_4_5());
				}
			)
			    |
			(
				otherlv_85='6'
				{
					newLeafNode(otherlv_85, grammarAccess.getTimeperiodAccess().getDigitSixKeyword_3_5_0());
				}
				otherlv_86='{'
				{
					newLeafNode(otherlv_86, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_5_1());
				}
				(
					this_NL_87=RULE_NL
					{
						newLeafNode(this_NL_87, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_2());
					}
				)+
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_5_3_0_0());
							}
							lv_time_88_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_88_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						this_NL_89=RULE_NL
						{
							newLeafNode(this_NL_89, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_3_1());
						}
					)+
				)*
				(
					(
						otherlv_90='timeperiod_name'
						{
							newLeafNode(otherlv_90, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_5_4_0_0());
						}
						(
							(
								lv_name_91_0=RULE_ID
								{
									newLeafNode(lv_name_91_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_5_4_0_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_91_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_92=RULE_NL
							{
								newLeafNode(this_NL_92, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_4_0_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_5_4_0_3_0_0());
									}
									lv_time_93_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_93_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_94=RULE_NL
								{
									newLeafNode(this_NL_94, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_4_0_3_1());
								}
							)+
						)*
					)
					    |
					(
						otherlv_95='otherelement'
						{
							newLeafNode(otherlv_95, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_5_4_1_0());
						}
						(
							(
								lv_alias_96_0=RULE_ID
								{
									newLeafNode(lv_alias_96_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_5_4_1_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_96_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_97=RULE_NL
							{
								newLeafNode(this_NL_97, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_4_1_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_5_4_1_3_0_0());
									}
									lv_time_98_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_98_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_99=RULE_NL
								{
									newLeafNode(this_NL_99, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_5_4_1_3_1());
								}
							)+
						)*
					)?
				)
				otherlv_100='}'
				{
					newLeafNode(otherlv_100, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_5_5());
				}
			)
			    |
			(
				otherlv_101='7'
				{
					newLeafNode(otherlv_101, grammarAccess.getTimeperiodAccess().getDigitSevenKeyword_3_6_0());
				}
				otherlv_102='{'
				{
					newLeafNode(otherlv_102, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_6_1());
				}
				(
					this_NL_103=RULE_NL
					{
						newLeafNode(this_NL_103, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_2());
					}
				)+
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_6_3_0_0());
							}
							lv_time_104_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_104_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						this_NL_105=RULE_NL
						{
							newLeafNode(this_NL_105, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_3_1());
						}
					)+
				)*
				(
					(
						otherlv_106='timeperiod_name'
						{
							newLeafNode(otherlv_106, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_6_4_0_0());
						}
						(
							(
								lv_name_107_0=RULE_ID
								{
									newLeafNode(lv_name_107_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_6_4_0_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_107_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_108=RULE_NL
							{
								newLeafNode(this_NL_108, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_4_0_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_6_4_0_3_0_0());
									}
									lv_time_109_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_109_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_110=RULE_NL
								{
									newLeafNode(this_NL_110, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_4_0_3_1());
								}
							)+
						)*
					)
					    |
					(
						otherlv_111='otherelement'
						{
							newLeafNode(otherlv_111, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_6_4_1_0());
						}
						(
							(
								lv_alias_112_0=RULE_ID
								{
									newLeafNode(lv_alias_112_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_6_4_1_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_112_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_113=RULE_NL
							{
								newLeafNode(this_NL_113, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_4_1_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_6_4_1_3_0_0());
									}
									lv_time_114_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_114_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_115=RULE_NL
								{
									newLeafNode(this_NL_115, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_6_4_1_3_1());
								}
							)+
						)*
					)
				)+
				otherlv_116='}'
				{
					newLeafNode(otherlv_116, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_6_5());
				}
			)
			    |
			(
				otherlv_117='8'
				{
					newLeafNode(otherlv_117, grammarAccess.getTimeperiodAccess().getDigitEightKeyword_3_7_0());
				}
				otherlv_118='{'
				{
					newLeafNode(otherlv_118, grammarAccess.getTimeperiodAccess().getLeftCurlyBracketKeyword_3_7_1());
				}
				(
					this_NL_119=RULE_NL
					{
						newLeafNode(this_NL_119, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_2());
					}
				)+
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef1ParserRuleCall_3_7_3_0_0());
							}
							lv_time_120_0=ruleTimeDef1
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
								}
								add(
									$current,
									"time",
									lv_time_120_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef1");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						this_NL_121=RULE_NL
						{
							newLeafNode(this_NL_121, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_3_1());
						}
					)+
				)*
				(
					(
						otherlv_122='timeperiod_name'
						{
							newLeafNode(otherlv_122, grammarAccess.getTimeperiodAccess().getTimeperiod_nameKeyword_3_7_4_0_0());
						}
						(
							(
								lv_name_123_0=RULE_ID
								{
									newLeafNode(lv_name_123_0, grammarAccess.getTimeperiodAccess().getNameIDTerminalRuleCall_3_7_4_0_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"name",
										lv_name_123_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_124=RULE_NL
							{
								newLeafNode(this_NL_124, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_4_0_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef2ParserRuleCall_3_7_4_0_3_0_0());
									}
									lv_time_125_0=ruleTimeDef2
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_125_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef2");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_126=RULE_NL
								{
									newLeafNode(this_NL_126, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_4_0_3_1());
								}
							)+
						)*
					)
					    |
					(
						otherlv_127='otherelement'
						{
							newLeafNode(otherlv_127, grammarAccess.getTimeperiodAccess().getOtherelementKeyword_3_7_4_1_0());
						}
						(
							(
								lv_alias_128_0=RULE_ID
								{
									newLeafNode(lv_alias_128_0, grammarAccess.getTimeperiodAccess().getAliasIDTerminalRuleCall_3_7_4_1_1_0());
								}
								{
									if ($current==null) {
										$current = createModelElement(grammarAccess.getTimeperiodRule());
									}
									addWithLastConsumed(
										$current,
										"alias",
										lv_alias_128_0,
										"org.eclipse.xtext.common.Terminals.ID");
								}
							)
						)
						(
							this_NL_129=RULE_NL
							{
								newLeafNode(this_NL_129, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_4_1_2());
							}
						)+
						(
							(
								(
									{
										newCompositeNode(grammarAccess.getTimeperiodAccess().getTimeTimeDef3ParserRuleCall_3_7_4_1_3_0_0());
									}
									lv_time_130_0=ruleTimeDef3
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getTimeperiodRule());
										}
										add(
											$current,
											"time",
											lv_time_130_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage.TimeDef3");
										afterParserOrEnumRuleCall();
									}
								)
							)
							(
								this_NL_131=RULE_NL
								{
									newLeafNode(this_NL_131, grammarAccess.getTimeperiodAccess().getNLTerminalRuleCall_3_7_4_1_3_1());
								}
							)+
						)*
					)
				)*
				otherlv_132='}'
				{
					newLeafNode(otherlv_132, grammarAccess.getTimeperiodAccess().getRightCurlyBracketKeyword_3_7_5());
				}
			)
		)
	)
;

// Entry rule entryRuleTimeDef1
entryRuleTimeDef1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTimeDef1Rule()); }
	iv_ruleTimeDef1=ruleTimeDef1
	{ $current=$iv_ruleTimeDef1.current; }
	EOF;

// Rule TimeDef1
ruleTimeDef1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='july'
		{
			newLeafNode(otherlv_0, grammarAccess.getTimeDef1Access().getJulyKeyword_0());
		}
		(
			(
				lv_day_1_0=RULE_INT
				{
					newLeafNode(lv_day_1_0, grammarAccess.getTimeDef1Access().getDayINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTimeDef1Rule());
					}
					setWithLastConsumed(
						$current,
						"day",
						lv_day_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

// Entry rule entryRuleTimeDef2
entryRuleTimeDef2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTimeDef2Rule()); }
	iv_ruleTimeDef2=ruleTimeDef2
	{ $current=$iv_ruleTimeDef2.current; }
	EOF;

// Rule TimeDef2
ruleTimeDef2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='august'
		{
			newLeafNode(otherlv_0, grammarAccess.getTimeDef2Access().getAugustKeyword_0());
		}
		(
			(
				lv_day_1_0=RULE_INT
				{
					newLeafNode(lv_day_1_0, grammarAccess.getTimeDef2Access().getDayINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTimeDef2Rule());
					}
					setWithLastConsumed(
						$current,
						"day",
						lv_day_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

// Entry rule entryRuleTimeDef3
entryRuleTimeDef3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTimeDef3Rule()); }
	iv_ruleTimeDef3=ruleTimeDef3
	{ $current=$iv_ruleTimeDef3.current; }
	EOF;

// Rule TimeDef3
ruleTimeDef3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='september'
		{
			newLeafNode(otherlv_0, grammarAccess.getTimeDef3Access().getSeptemberKeyword_0());
		}
		(
			(
				lv_day_1_0=RULE_INT
				{
					newLeafNode(lv_day_1_0, grammarAccess.getTimeDef3Access().getDayINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTimeDef3Rule());
					}
					setWithLastConsumed(
						$current,
						"day",
						lv_day_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

RULE_NL : '\r'? '\n';

RULE_WS : (' '|'\t');

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_ANY_OTHER : .;
