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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug347012TestLanguageGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
@SuppressWarnings("all")
public class InternalBug347012TestLanguageParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_LT", "RULE_ID", "RULE_NUMBER", "RULE_STRING", "RULE_IDPLAINCHAR", "RULE_DIGIT", "RULE_WS", "RULE_ESCAPE", "RULE_HEX", "'.'", "';'", "'true'", "'false'", "'package'", "'{'", "'}'", "'public'", "'class'", "'private'", "'var'", "','", "':'", "'='"
    };
    public static final int RULE_HEX=12;
    public static final int RULE_STRING=7;
    public static final int RULE_IDPLAINCHAR=8;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int RULE_ESCAPE=11;
    public static final int RULE_ID=5;
    public static final int RULE_WS=10;
    public static final int RULE_DIGIT=9;
    public static final int RULE_NUMBER=6;
    public static final int RULE_LT=4;
    public static final int T__26=26;
    public static final int T__22=22;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators


        public InternalBug347012TestLanguageParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalBug347012TestLanguageParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalBug347012TestLanguageParser.tokenNames; }
    public String getGrammarFileName() { return "InternalBug347012TestLanguage.g"; }



     	private Bug347012TestLanguageGrammarAccess grammarAccess;

        public InternalBug347012TestLanguageParser(TokenStream input, Bug347012TestLanguageGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "MyProgram";
       	}

       	@Override
       	protected Bug347012TestLanguageGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleMyProgram"
    // InternalBug347012TestLanguage.g:69:1: entryRuleMyProgram returns [EObject current=null] : iv_ruleMyProgram= ruleMyProgram EOF ;
    public final EObject entryRuleMyProgram() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyProgram = null;


        try {
            // InternalBug347012TestLanguage.g:69:50: (iv_ruleMyProgram= ruleMyProgram EOF )
            // InternalBug347012TestLanguage.g:70:2: iv_ruleMyProgram= ruleMyProgram EOF
            {
             newCompositeNode(grammarAccess.getMyProgramRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyProgram=ruleMyProgram();

            state._fsp--;

             current =iv_ruleMyProgram; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyProgram"


    // $ANTLR start "ruleMyProgram"
    // InternalBug347012TestLanguage.g:76:1: ruleMyProgram returns [EObject current=null] : ( () (this_LT_1= RULE_LT )* ( (lv_package_2_0= ruleMyPackage ) ) (this_LT_3= RULE_LT )* ) ;
    public final EObject ruleMyProgram() throws RecognitionException {
        EObject current = null;

        Token this_LT_1=null;
        Token this_LT_3=null;
        EObject lv_package_2_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:82:2: ( ( () (this_LT_1= RULE_LT )* ( (lv_package_2_0= ruleMyPackage ) ) (this_LT_3= RULE_LT )* ) )
            // InternalBug347012TestLanguage.g:83:2: ( () (this_LT_1= RULE_LT )* ( (lv_package_2_0= ruleMyPackage ) ) (this_LT_3= RULE_LT )* )
            {
            // InternalBug347012TestLanguage.g:83:2: ( () (this_LT_1= RULE_LT )* ( (lv_package_2_0= ruleMyPackage ) ) (this_LT_3= RULE_LT )* )
            // InternalBug347012TestLanguage.g:84:3: () (this_LT_1= RULE_LT )* ( (lv_package_2_0= ruleMyPackage ) ) (this_LT_3= RULE_LT )*
            {
            // InternalBug347012TestLanguage.g:84:3: ()
            // InternalBug347012TestLanguage.g:85:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getMyProgramAccess().getMyProgramAction_0(),
            					current);
            			

            }

            // InternalBug347012TestLanguage.g:91:3: (this_LT_1= RULE_LT )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==RULE_LT) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:92:4: this_LT_1= RULE_LT
            	    {
            	    this_LT_1=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_3); 

            	    				newLeafNode(this_LT_1, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_1());
            	    			

            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:97:3: ( (lv_package_2_0= ruleMyPackage ) )
            // InternalBug347012TestLanguage.g:98:4: (lv_package_2_0= ruleMyPackage )
            {
            // InternalBug347012TestLanguage.g:98:4: (lv_package_2_0= ruleMyPackage )
            // InternalBug347012TestLanguage.g:99:5: lv_package_2_0= ruleMyPackage
            {

            					newCompositeNode(grammarAccess.getMyProgramAccess().getPackageMyPackageParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_4);
            lv_package_2_0=ruleMyPackage();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getMyProgramRule());
            					}
            					set(
            						current,
            						"package",
            						lv_package_2_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyPackage");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalBug347012TestLanguage.g:116:3: (this_LT_3= RULE_LT )*
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==RULE_LT) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:117:4: this_LT_3= RULE_LT
            	    {
            	    this_LT_3=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_4); 

            	    				newLeafNode(this_LT_3, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_3());
            	    			

            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyProgram"


    // $ANTLR start "entryRuleIdentifier"
    // InternalBug347012TestLanguage.g:126:1: entryRuleIdentifier returns [EObject current=null] : iv_ruleIdentifier= ruleIdentifier EOF ;
    public final EObject entryRuleIdentifier() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleIdentifier = null;


        try {
            // InternalBug347012TestLanguage.g:126:51: (iv_ruleIdentifier= ruleIdentifier EOF )
            // InternalBug347012TestLanguage.g:127:2: iv_ruleIdentifier= ruleIdentifier EOF
            {
             newCompositeNode(grammarAccess.getIdentifierRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleIdentifier=ruleIdentifier();

            state._fsp--;

             current =iv_ruleIdentifier; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleIdentifier"


    // $ANTLR start "ruleIdentifier"
    // InternalBug347012TestLanguage.g:133:1: ruleIdentifier returns [EObject current=null] : ( (lv_name_0_0= RULE_ID ) ) ;
    public final EObject ruleIdentifier() throws RecognitionException {
        EObject current = null;

        Token lv_name_0_0=null;


        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:139:2: ( ( (lv_name_0_0= RULE_ID ) ) )
            // InternalBug347012TestLanguage.g:140:2: ( (lv_name_0_0= RULE_ID ) )
            {
            // InternalBug347012TestLanguage.g:140:2: ( (lv_name_0_0= RULE_ID ) )
            // InternalBug347012TestLanguage.g:141:3: (lv_name_0_0= RULE_ID )
            {
            // InternalBug347012TestLanguage.g:141:3: (lv_name_0_0= RULE_ID )
            // InternalBug347012TestLanguage.g:142:4: lv_name_0_0= RULE_ID
            {
            lv_name_0_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_2); 

            				newLeafNode(lv_name_0_0, grammarAccess.getIdentifierAccess().getNameIDTerminalRuleCall_0());
            			

            				if (current==null) {
            					current = createModelElement(grammarAccess.getIdentifierRule());
            				}
            				setWithLastConsumed(
            					current,
            					"name",
            					lv_name_0_0,
            					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
            			

            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleIdentifier"


    // $ANTLR start "entryRuleFQN"
    // InternalBug347012TestLanguage.g:161:1: entryRuleFQN returns [String current=null] : iv_ruleFQN= ruleFQN EOF ;
    public final String entryRuleFQN() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleFQN = null;


        try {
            // InternalBug347012TestLanguage.g:161:43: (iv_ruleFQN= ruleFQN EOF )
            // InternalBug347012TestLanguage.g:162:2: iv_ruleFQN= ruleFQN EOF
            {
             newCompositeNode(grammarAccess.getFQNRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleFQN=ruleFQN();

            state._fsp--;

             current =iv_ruleFQN.getText(); 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleFQN"


    // $ANTLR start "ruleFQN"
    // InternalBug347012TestLanguage.g:168:1: ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_ID_0= RULE_ID ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )* ) ;
    public final AntlrDatatypeRuleToken ruleFQN() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_ID_0=null;
        Token this_LT_1=null;
        Token kw=null;
        Token this_LT_3=null;
        Token this_ID_4=null;


        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:174:2: ( (this_ID_0= RULE_ID ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )* ) )
            // InternalBug347012TestLanguage.g:175:2: (this_ID_0= RULE_ID ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )* )
            {
            // InternalBug347012TestLanguage.g:175:2: (this_ID_0= RULE_ID ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )* )
            // InternalBug347012TestLanguage.g:176:3: this_ID_0= RULE_ID ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )*
            {
            this_ID_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_5); 

            			current.merge(this_ID_0);
            		

            			newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0());
            		
            // InternalBug347012TestLanguage.g:183:3: ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )*
            loop5:
            do {
                int alt5=2;
                alt5 = dfa5.predict(input);
                switch (alt5) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:184:4: (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID
            	    {
            	    // InternalBug347012TestLanguage.g:184:4: (this_LT_1= RULE_LT )*
            	    loop3:
            	    do {
            	        int alt3=2;
            	        int LA3_0 = input.LA(1);

            	        if ( (LA3_0==RULE_LT) ) {
            	            alt3=1;
            	        }


            	        switch (alt3) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:185:5: this_LT_1= RULE_LT
            	    	    {
            	    	    this_LT_1=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_6); 

            	    	    					current.merge(this_LT_1);
            	    	    				

            	    	    					newLeafNode(this_LT_1, grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_0());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop3;
            	        }
            	    } while (true);

            	    kw=(Token)match(input,13,FollowSets000.FOLLOW_7); 

            	    				current.merge(kw);
            	    				newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_1());
            	    			
            	    // InternalBug347012TestLanguage.g:198:4: (this_LT_3= RULE_LT )*
            	    loop4:
            	    do {
            	        int alt4=2;
            	        int LA4_0 = input.LA(1);

            	        if ( (LA4_0==RULE_LT) ) {
            	            alt4=1;
            	        }


            	        switch (alt4) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:199:5: this_LT_3= RULE_LT
            	    	    {
            	    	    this_LT_3=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

            	    	    					current.merge(this_LT_3);
            	    	    				

            	    	    					newLeafNode(this_LT_3, grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_2());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop4;
            	        }
            	    } while (true);

            	    this_ID_4=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_5); 

            	    				current.merge(this_ID_4);
            	    			

            	    				newLeafNode(this_ID_4, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_3());
            	    			

            	    }
            	    break;

            	default :
            	    break loop5;
                }
            } while (true);


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleFQN"


    // $ANTLR start "entryRuleVirtualSemi"
    // InternalBug347012TestLanguage.g:219:1: entryRuleVirtualSemi returns [String current=null] : iv_ruleVirtualSemi= ruleVirtualSemi EOF ;
    public final String entryRuleVirtualSemi() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleVirtualSemi = null;


        try {
            // InternalBug347012TestLanguage.g:219:51: (iv_ruleVirtualSemi= ruleVirtualSemi EOF )
            // InternalBug347012TestLanguage.g:220:2: iv_ruleVirtualSemi= ruleVirtualSemi EOF
            {
             newCompositeNode(grammarAccess.getVirtualSemiRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleVirtualSemi=ruleVirtualSemi();

            state._fsp--;

             current =iv_ruleVirtualSemi.getText(); 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleVirtualSemi"


    // $ANTLR start "ruleVirtualSemi"
    // InternalBug347012TestLanguage.g:226:1: ruleVirtualSemi returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= ';' | this_LT_1= RULE_LT ) ;
    public final AntlrDatatypeRuleToken ruleVirtualSemi() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;
        Token this_LT_1=null;


        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:232:2: ( (kw= ';' | this_LT_1= RULE_LT ) )
            // InternalBug347012TestLanguage.g:233:2: (kw= ';' | this_LT_1= RULE_LT )
            {
            // InternalBug347012TestLanguage.g:233:2: (kw= ';' | this_LT_1= RULE_LT )
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==14) ) {
                alt6=1;
            }
            else if ( (LA6_0==RULE_LT) ) {
                alt6=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 6, 0, input);

                throw nvae;
            }
            switch (alt6) {
                case 1 :
                    // InternalBug347012TestLanguage.g:234:3: kw= ';'
                    {
                    kw=(Token)match(input,14,FollowSets000.FOLLOW_2); 

                    			current.merge(kw);
                    			newLeafNode(kw, grammarAccess.getVirtualSemiAccess().getSemicolonKeyword_0());
                    		

                    }
                    break;
                case 2 :
                    // InternalBug347012TestLanguage.g:240:3: this_LT_1= RULE_LT
                    {
                    this_LT_1=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_2); 

                    			current.merge(this_LT_1);
                    		

                    			newLeafNode(this_LT_1, grammarAccess.getVirtualSemiAccess().getLTTerminalRuleCall_1());
                    		

                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleVirtualSemi"


    // $ANTLR start "entryRuleLiteral"
    // InternalBug347012TestLanguage.g:251:1: entryRuleLiteral returns [EObject current=null] : iv_ruleLiteral= ruleLiteral EOF ;
    public final EObject entryRuleLiteral() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleLiteral = null;


        try {
            // InternalBug347012TestLanguage.g:251:48: (iv_ruleLiteral= ruleLiteral EOF )
            // InternalBug347012TestLanguage.g:252:2: iv_ruleLiteral= ruleLiteral EOF
            {
             newCompositeNode(grammarAccess.getLiteralRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleLiteral=ruleLiteral();

            state._fsp--;

             current =iv_ruleLiteral; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleLiteral"


    // $ANTLR start "ruleLiteral"
    // InternalBug347012TestLanguage.g:258:1: ruleLiteral returns [EObject current=null] : ( ( (lv_num_0_0= RULE_NUMBER ) ) | ( (lv_str_1_0= RULE_STRING ) ) | ( (lv_bool_2_0= 'true' ) ) | ( (lv_bool_3_0= 'false' ) ) ) ;
    public final EObject ruleLiteral() throws RecognitionException {
        EObject current = null;

        Token lv_num_0_0=null;
        Token lv_str_1_0=null;
        Token lv_bool_2_0=null;
        Token lv_bool_3_0=null;


        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:264:2: ( ( ( (lv_num_0_0= RULE_NUMBER ) ) | ( (lv_str_1_0= RULE_STRING ) ) | ( (lv_bool_2_0= 'true' ) ) | ( (lv_bool_3_0= 'false' ) ) ) )
            // InternalBug347012TestLanguage.g:265:2: ( ( (lv_num_0_0= RULE_NUMBER ) ) | ( (lv_str_1_0= RULE_STRING ) ) | ( (lv_bool_2_0= 'true' ) ) | ( (lv_bool_3_0= 'false' ) ) )
            {
            // InternalBug347012TestLanguage.g:265:2: ( ( (lv_num_0_0= RULE_NUMBER ) ) | ( (lv_str_1_0= RULE_STRING ) ) | ( (lv_bool_2_0= 'true' ) ) | ( (lv_bool_3_0= 'false' ) ) )
            int alt7=4;
            switch ( input.LA(1) ) {
            case RULE_NUMBER:
                {
                alt7=1;
                }
                break;
            case RULE_STRING:
                {
                alt7=2;
                }
                break;
            case 15:
                {
                alt7=3;
                }
                break;
            case 16:
                {
                alt7=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }

            switch (alt7) {
                case 1 :
                    // InternalBug347012TestLanguage.g:266:3: ( (lv_num_0_0= RULE_NUMBER ) )
                    {
                    // InternalBug347012TestLanguage.g:266:3: ( (lv_num_0_0= RULE_NUMBER ) )
                    // InternalBug347012TestLanguage.g:267:4: (lv_num_0_0= RULE_NUMBER )
                    {
                    // InternalBug347012TestLanguage.g:267:4: (lv_num_0_0= RULE_NUMBER )
                    // InternalBug347012TestLanguage.g:268:5: lv_num_0_0= RULE_NUMBER
                    {
                    lv_num_0_0=(Token)match(input,RULE_NUMBER,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_num_0_0, grammarAccess.getLiteralAccess().getNumNUMBERTerminalRuleCall_0_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getLiteralRule());
                    					}
                    					setWithLastConsumed(
                    						current,
                    						"num",
                    						lv_num_0_0,
                    						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.NUMBER");
                    				

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBug347012TestLanguage.g:285:3: ( (lv_str_1_0= RULE_STRING ) )
                    {
                    // InternalBug347012TestLanguage.g:285:3: ( (lv_str_1_0= RULE_STRING ) )
                    // InternalBug347012TestLanguage.g:286:4: (lv_str_1_0= RULE_STRING )
                    {
                    // InternalBug347012TestLanguage.g:286:4: (lv_str_1_0= RULE_STRING )
                    // InternalBug347012TestLanguage.g:287:5: lv_str_1_0= RULE_STRING
                    {
                    lv_str_1_0=(Token)match(input,RULE_STRING,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_str_1_0, grammarAccess.getLiteralAccess().getStrSTRINGTerminalRuleCall_1_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getLiteralRule());
                    					}
                    					setWithLastConsumed(
                    						current,
                    						"str",
                    						lv_str_1_0,
                    						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.STRING");
                    				

                    }


                    }


                    }
                    break;
                case 3 :
                    // InternalBug347012TestLanguage.g:304:3: ( (lv_bool_2_0= 'true' ) )
                    {
                    // InternalBug347012TestLanguage.g:304:3: ( (lv_bool_2_0= 'true' ) )
                    // InternalBug347012TestLanguage.g:305:4: (lv_bool_2_0= 'true' )
                    {
                    // InternalBug347012TestLanguage.g:305:4: (lv_bool_2_0= 'true' )
                    // InternalBug347012TestLanguage.g:306:5: lv_bool_2_0= 'true'
                    {
                    lv_bool_2_0=(Token)match(input,15,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_bool_2_0, grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getLiteralRule());
                    					}
                    					setWithLastConsumed(current, "bool", lv_bool_2_0, "true");
                    				

                    }


                    }


                    }
                    break;
                case 4 :
                    // InternalBug347012TestLanguage.g:319:3: ( (lv_bool_3_0= 'false' ) )
                    {
                    // InternalBug347012TestLanguage.g:319:3: ( (lv_bool_3_0= 'false' ) )
                    // InternalBug347012TestLanguage.g:320:4: (lv_bool_3_0= 'false' )
                    {
                    // InternalBug347012TestLanguage.g:320:4: (lv_bool_3_0= 'false' )
                    // InternalBug347012TestLanguage.g:321:5: lv_bool_3_0= 'false'
                    {
                    lv_bool_3_0=(Token)match(input,16,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_bool_3_0, grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getLiteralRule());
                    					}
                    					setWithLastConsumed(current, "bool", lv_bool_3_0, "false");
                    				

                    }


                    }


                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleLiteral"


    // $ANTLR start "entryRuleMyPrimary"
    // InternalBug347012TestLanguage.g:337:1: entryRuleMyPrimary returns [EObject current=null] : iv_ruleMyPrimary= ruleMyPrimary EOF ;
    public final EObject entryRuleMyPrimary() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyPrimary = null;


        try {
            // InternalBug347012TestLanguage.g:337:50: (iv_ruleMyPrimary= ruleMyPrimary EOF )
            // InternalBug347012TestLanguage.g:338:2: iv_ruleMyPrimary= ruleMyPrimary EOF
            {
             newCompositeNode(grammarAccess.getMyPrimaryRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyPrimary=ruleMyPrimary();

            state._fsp--;

             current =iv_ruleMyPrimary; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyPrimary"


    // $ANTLR start "ruleMyPrimary"
    // InternalBug347012TestLanguage.g:344:1: ruleMyPrimary returns [EObject current=null] : (this_Literal_0= ruleLiteral | this_Identifier_1= ruleIdentifier ) ;
    public final EObject ruleMyPrimary() throws RecognitionException {
        EObject current = null;

        EObject this_Literal_0 = null;

        EObject this_Identifier_1 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:350:2: ( (this_Literal_0= ruleLiteral | this_Identifier_1= ruleIdentifier ) )
            // InternalBug347012TestLanguage.g:351:2: (this_Literal_0= ruleLiteral | this_Identifier_1= ruleIdentifier )
            {
            // InternalBug347012TestLanguage.g:351:2: (this_Literal_0= ruleLiteral | this_Identifier_1= ruleIdentifier )
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( ((LA8_0>=RULE_NUMBER && LA8_0<=RULE_STRING)||(LA8_0>=15 && LA8_0<=16)) ) {
                alt8=1;
            }
            else if ( (LA8_0==RULE_ID) ) {
                alt8=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 8, 0, input);

                throw nvae;
            }
            switch (alt8) {
                case 1 :
                    // InternalBug347012TestLanguage.g:352:3: this_Literal_0= ruleLiteral
                    {

                    			newCompositeNode(grammarAccess.getMyPrimaryAccess().getLiteralParserRuleCall_0());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_Literal_0=ruleLiteral();

                    state._fsp--;


                    			current = this_Literal_0;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;
                case 2 :
                    // InternalBug347012TestLanguage.g:361:3: this_Identifier_1= ruleIdentifier
                    {

                    			newCompositeNode(grammarAccess.getMyPrimaryAccess().getIdentifierParserRuleCall_1());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_Identifier_1=ruleIdentifier();

                    state._fsp--;


                    			current = this_Identifier_1;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyPrimary"


    // $ANTLR start "entryRuleMyPackage"
    // InternalBug347012TestLanguage.g:373:1: entryRuleMyPackage returns [EObject current=null] : iv_ruleMyPackage= ruleMyPackage EOF ;
    public final EObject entryRuleMyPackage() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyPackage = null;


        try {
            // InternalBug347012TestLanguage.g:373:50: (iv_ruleMyPackage= ruleMyPackage EOF )
            // InternalBug347012TestLanguage.g:374:2: iv_ruleMyPackage= ruleMyPackage EOF
            {
             newCompositeNode(grammarAccess.getMyPackageRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyPackage=ruleMyPackage();

            state._fsp--;

             current =iv_ruleMyPackage; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyPackage"


    // $ANTLR start "ruleMyPackage"
    // InternalBug347012TestLanguage.g:380:1: ruleMyPackage returns [EObject current=null] : (otherlv_0= 'package' (this_LT_1= RULE_LT )* ( (lv_name_2_0= ruleFQN ) ) (this_LT_3= RULE_LT )* otherlv_4= '{' (this_LT_5= RULE_LT )* ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )* otherlv_8= '}' ) ;
    public final EObject ruleMyPackage() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token this_LT_1=null;
        Token this_LT_3=null;
        Token otherlv_4=null;
        Token this_LT_5=null;
        Token this_LT_7=null;
        Token otherlv_8=null;
        AntlrDatatypeRuleToken lv_name_2_0 = null;

        EObject lv_directives_6_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:386:2: ( (otherlv_0= 'package' (this_LT_1= RULE_LT )* ( (lv_name_2_0= ruleFQN ) ) (this_LT_3= RULE_LT )* otherlv_4= '{' (this_LT_5= RULE_LT )* ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )* otherlv_8= '}' ) )
            // InternalBug347012TestLanguage.g:387:2: (otherlv_0= 'package' (this_LT_1= RULE_LT )* ( (lv_name_2_0= ruleFQN ) ) (this_LT_3= RULE_LT )* otherlv_4= '{' (this_LT_5= RULE_LT )* ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )* otherlv_8= '}' )
            {
            // InternalBug347012TestLanguage.g:387:2: (otherlv_0= 'package' (this_LT_1= RULE_LT )* ( (lv_name_2_0= ruleFQN ) ) (this_LT_3= RULE_LT )* otherlv_4= '{' (this_LT_5= RULE_LT )* ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )* otherlv_8= '}' )
            // InternalBug347012TestLanguage.g:388:3: otherlv_0= 'package' (this_LT_1= RULE_LT )* ( (lv_name_2_0= ruleFQN ) ) (this_LT_3= RULE_LT )* otherlv_4= '{' (this_LT_5= RULE_LT )* ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )* otherlv_8= '}'
            {
            otherlv_0=(Token)match(input,17,FollowSets000.FOLLOW_7); 

            			newLeafNode(otherlv_0, grammarAccess.getMyPackageAccess().getPackageKeyword_0());
            		
            // InternalBug347012TestLanguage.g:392:3: (this_LT_1= RULE_LT )*
            loop9:
            do {
                int alt9=2;
                int LA9_0 = input.LA(1);

                if ( (LA9_0==RULE_LT) ) {
                    alt9=1;
                }


                switch (alt9) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:393:4: this_LT_1= RULE_LT
            	    {
            	    this_LT_1=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

            	    				newLeafNode(this_LT_1, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_1());
            	    			

            	    }
            	    break;

            	default :
            	    break loop9;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:398:3: ( (lv_name_2_0= ruleFQN ) )
            // InternalBug347012TestLanguage.g:399:4: (lv_name_2_0= ruleFQN )
            {
            // InternalBug347012TestLanguage.g:399:4: (lv_name_2_0= ruleFQN )
            // InternalBug347012TestLanguage.g:400:5: lv_name_2_0= ruleFQN
            {

            					newCompositeNode(grammarAccess.getMyPackageAccess().getNameFQNParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_8);
            lv_name_2_0=ruleFQN();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getMyPackageRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_2_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.FQN");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalBug347012TestLanguage.g:417:3: (this_LT_3= RULE_LT )*
            loop10:
            do {
                int alt10=2;
                int LA10_0 = input.LA(1);

                if ( (LA10_0==RULE_LT) ) {
                    alt10=1;
                }


                switch (alt10) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:418:4: this_LT_3= RULE_LT
            	    {
            	    this_LT_3=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_8); 

            	    				newLeafNode(this_LT_3, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_3());
            	    			

            	    }
            	    break;

            	default :
            	    break loop10;
                }
            } while (true);

            otherlv_4=(Token)match(input,18,FollowSets000.FOLLOW_9); 

            			newLeafNode(otherlv_4, grammarAccess.getMyPackageAccess().getLeftCurlyBracketKeyword_4());
            		
            // InternalBug347012TestLanguage.g:427:3: (this_LT_5= RULE_LT )*
            loop11:
            do {
                int alt11=2;
                int LA11_0 = input.LA(1);

                if ( (LA11_0==RULE_LT) ) {
                    alt11=1;
                }


                switch (alt11) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:428:4: this_LT_5= RULE_LT
            	    {
            	    this_LT_5=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_9); 

            	    				newLeafNode(this_LT_5, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_5());
            	    			

            	    }
            	    break;

            	default :
            	    break loop11;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:433:3: ( ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )* )*
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( ((LA13_0>=20 && LA13_0<=21)) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:434:4: ( (lv_directives_6_0= ruleMyClass ) ) (this_LT_7= RULE_LT )*
            	    {
            	    // InternalBug347012TestLanguage.g:434:4: ( (lv_directives_6_0= ruleMyClass ) )
            	    // InternalBug347012TestLanguage.g:435:5: (lv_directives_6_0= ruleMyClass )
            	    {
            	    // InternalBug347012TestLanguage.g:435:5: (lv_directives_6_0= ruleMyClass )
            	    // InternalBug347012TestLanguage.g:436:6: lv_directives_6_0= ruleMyClass
            	    {

            	    						newCompositeNode(grammarAccess.getMyPackageAccess().getDirectivesMyClassParserRuleCall_6_0_0());
            	    					
            	    pushFollow(FollowSets000.FOLLOW_9);
            	    lv_directives_6_0=ruleMyClass();

            	    state._fsp--;


            	    						if (current==null) {
            	    							current = createModelElementForParent(grammarAccess.getMyPackageRule());
            	    						}
            	    						add(
            	    							current,
            	    							"directives",
            	    							lv_directives_6_0,
            	    							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyClass");
            	    						afterParserOrEnumRuleCall();
            	    					

            	    }


            	    }

            	    // InternalBug347012TestLanguage.g:453:4: (this_LT_7= RULE_LT )*
            	    loop12:
            	    do {
            	        int alt12=2;
            	        int LA12_0 = input.LA(1);

            	        if ( (LA12_0==RULE_LT) ) {
            	            alt12=1;
            	        }


            	        switch (alt12) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:454:5: this_LT_7= RULE_LT
            	    	    {
            	    	    this_LT_7=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_9); 

            	    	    					newLeafNode(this_LT_7, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_6_1());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop12;
            	        }
            	    } while (true);


            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);

            otherlv_8=(Token)match(input,19,FollowSets000.FOLLOW_2); 

            			newLeafNode(otherlv_8, grammarAccess.getMyPackageAccess().getRightCurlyBracketKeyword_7());
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyPackage"


    // $ANTLR start "entryRuleMyClass"
    // InternalBug347012TestLanguage.g:468:1: entryRuleMyClass returns [EObject current=null] : iv_ruleMyClass= ruleMyClass EOF ;
    public final EObject entryRuleMyClass() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyClass = null;


        try {
            // InternalBug347012TestLanguage.g:468:48: (iv_ruleMyClass= ruleMyClass EOF )
            // InternalBug347012TestLanguage.g:469:2: iv_ruleMyClass= ruleMyClass EOF
            {
             newCompositeNode(grammarAccess.getMyClassRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyClass=ruleMyClass();

            state._fsp--;

             current =iv_ruleMyClass; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyClass"


    // $ANTLR start "ruleMyClass"
    // InternalBug347012TestLanguage.g:475:1: ruleMyClass returns [EObject current=null] : ( (otherlv_0= 'public' )? otherlv_1= 'class' (this_LT_2= RULE_LT )* ( (lv_name_3_0= RULE_ID ) ) (this_LT_4= RULE_LT )* otherlv_5= '{' (this_LT_6= RULE_LT )* ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )* otherlv_9= '}' ) ;
    public final EObject ruleMyClass() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_1=null;
        Token this_LT_2=null;
        Token lv_name_3_0=null;
        Token this_LT_4=null;
        Token otherlv_5=null;
        Token this_LT_6=null;
        Token this_LT_8=null;
        Token otherlv_9=null;
        EObject lv_directives_7_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:481:2: ( ( (otherlv_0= 'public' )? otherlv_1= 'class' (this_LT_2= RULE_LT )* ( (lv_name_3_0= RULE_ID ) ) (this_LT_4= RULE_LT )* otherlv_5= '{' (this_LT_6= RULE_LT )* ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )* otherlv_9= '}' ) )
            // InternalBug347012TestLanguage.g:482:2: ( (otherlv_0= 'public' )? otherlv_1= 'class' (this_LT_2= RULE_LT )* ( (lv_name_3_0= RULE_ID ) ) (this_LT_4= RULE_LT )* otherlv_5= '{' (this_LT_6= RULE_LT )* ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )* otherlv_9= '}' )
            {
            // InternalBug347012TestLanguage.g:482:2: ( (otherlv_0= 'public' )? otherlv_1= 'class' (this_LT_2= RULE_LT )* ( (lv_name_3_0= RULE_ID ) ) (this_LT_4= RULE_LT )* otherlv_5= '{' (this_LT_6= RULE_LT )* ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )* otherlv_9= '}' )
            // InternalBug347012TestLanguage.g:483:3: (otherlv_0= 'public' )? otherlv_1= 'class' (this_LT_2= RULE_LT )* ( (lv_name_3_0= RULE_ID ) ) (this_LT_4= RULE_LT )* otherlv_5= '{' (this_LT_6= RULE_LT )* ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )* otherlv_9= '}'
            {
            // InternalBug347012TestLanguage.g:483:3: (otherlv_0= 'public' )?
            int alt14=2;
            int LA14_0 = input.LA(1);

            if ( (LA14_0==20) ) {
                alt14=1;
            }
            switch (alt14) {
                case 1 :
                    // InternalBug347012TestLanguage.g:484:4: otherlv_0= 'public'
                    {
                    otherlv_0=(Token)match(input,20,FollowSets000.FOLLOW_10); 

                    				newLeafNode(otherlv_0, grammarAccess.getMyClassAccess().getPublicKeyword_0());
                    			

                    }
                    break;

            }

            otherlv_1=(Token)match(input,21,FollowSets000.FOLLOW_7); 

            			newLeafNode(otherlv_1, grammarAccess.getMyClassAccess().getClassKeyword_1());
            		
            // InternalBug347012TestLanguage.g:493:3: (this_LT_2= RULE_LT )*
            loop15:
            do {
                int alt15=2;
                int LA15_0 = input.LA(1);

                if ( (LA15_0==RULE_LT) ) {
                    alt15=1;
                }


                switch (alt15) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:494:4: this_LT_2= RULE_LT
            	    {
            	    this_LT_2=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

            	    				newLeafNode(this_LT_2, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_2());
            	    			

            	    }
            	    break;

            	default :
            	    break loop15;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:499:3: ( (lv_name_3_0= RULE_ID ) )
            // InternalBug347012TestLanguage.g:500:4: (lv_name_3_0= RULE_ID )
            {
            // InternalBug347012TestLanguage.g:500:4: (lv_name_3_0= RULE_ID )
            // InternalBug347012TestLanguage.g:501:5: lv_name_3_0= RULE_ID
            {
            lv_name_3_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_8); 

            					newLeafNode(lv_name_3_0, grammarAccess.getMyClassAccess().getNameIDTerminalRuleCall_3_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getMyClassRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_3_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
            				

            }


            }

            // InternalBug347012TestLanguage.g:517:3: (this_LT_4= RULE_LT )*
            loop16:
            do {
                int alt16=2;
                int LA16_0 = input.LA(1);

                if ( (LA16_0==RULE_LT) ) {
                    alt16=1;
                }


                switch (alt16) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:518:4: this_LT_4= RULE_LT
            	    {
            	    this_LT_4=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_8); 

            	    				newLeafNode(this_LT_4, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_4());
            	    			

            	    }
            	    break;

            	default :
            	    break loop16;
                }
            } while (true);

            otherlv_5=(Token)match(input,18,FollowSets000.FOLLOW_11); 

            			newLeafNode(otherlv_5, grammarAccess.getMyClassAccess().getLeftCurlyBracketKeyword_5());
            		
            // InternalBug347012TestLanguage.g:527:3: (this_LT_6= RULE_LT )*
            loop17:
            do {
                int alt17=2;
                int LA17_0 = input.LA(1);

                if ( (LA17_0==RULE_LT) ) {
                    alt17=1;
                }


                switch (alt17) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:528:4: this_LT_6= RULE_LT
            	    {
            	    this_LT_6=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_11); 

            	    				newLeafNode(this_LT_6, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_6());
            	    			

            	    }
            	    break;

            	default :
            	    break loop17;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:533:3: ( ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )* )*
            loop19:
            do {
                int alt19=2;
                int LA19_0 = input.LA(1);

                if ( (LA19_0==EOF||LA19_0==20||(LA19_0>=22 && LA19_0<=23)) ) {
                    alt19=1;
                }


                switch (alt19) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:534:4: ( (lv_directives_7_0= ruleMyField ) ) (this_LT_8= RULE_LT )*
            	    {
            	    // InternalBug347012TestLanguage.g:534:4: ( (lv_directives_7_0= ruleMyField ) )
            	    // InternalBug347012TestLanguage.g:535:5: (lv_directives_7_0= ruleMyField )
            	    {
            	    // InternalBug347012TestLanguage.g:535:5: (lv_directives_7_0= ruleMyField )
            	    // InternalBug347012TestLanguage.g:536:6: lv_directives_7_0= ruleMyField
            	    {

            	    						newCompositeNode(grammarAccess.getMyClassAccess().getDirectivesMyFieldParserRuleCall_7_0_0());
            	    					
            	    pushFollow(FollowSets000.FOLLOW_11);
            	    lv_directives_7_0=ruleMyField();

            	    state._fsp--;


            	    						if (current==null) {
            	    							current = createModelElementForParent(grammarAccess.getMyClassRule());
            	    						}
            	    						add(
            	    							current,
            	    							"directives",
            	    							lv_directives_7_0,
            	    							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyField");
            	    						afterParserOrEnumRuleCall();
            	    					

            	    }


            	    }

            	    // InternalBug347012TestLanguage.g:553:4: (this_LT_8= RULE_LT )*
            	    loop18:
            	    do {
            	        int alt18=2;
            	        int LA18_0 = input.LA(1);

            	        if ( (LA18_0==RULE_LT) ) {
            	            alt18=1;
            	        }


            	        switch (alt18) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:554:5: this_LT_8= RULE_LT
            	    	    {
            	    	    this_LT_8=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_11); 

            	    	    					newLeafNode(this_LT_8, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_7_1());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop18;
            	        }
            	    } while (true);


            	    }
            	    break;

            	default :
            	    break loop19;
                }
            } while (true);

            otherlv_9=(Token)match(input,19,FollowSets000.FOLLOW_2); 

            			newLeafNode(otherlv_9, grammarAccess.getMyClassAccess().getRightCurlyBracketKeyword_8());
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyClass"


    // $ANTLR start "entryRuleMyAttribute"
    // InternalBug347012TestLanguage.g:568:1: entryRuleMyAttribute returns [EObject current=null] : iv_ruleMyAttribute= ruleMyAttribute EOF ;
    public final EObject entryRuleMyAttribute() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyAttribute = null;


        try {
            // InternalBug347012TestLanguage.g:568:52: (iv_ruleMyAttribute= ruleMyAttribute EOF )
            // InternalBug347012TestLanguage.g:569:2: iv_ruleMyAttribute= ruleMyAttribute EOF
            {
             newCompositeNode(grammarAccess.getMyAttributeRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyAttribute=ruleMyAttribute();

            state._fsp--;

             current =iv_ruleMyAttribute; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyAttribute"


    // $ANTLR start "ruleMyAttribute"
    // InternalBug347012TestLanguage.g:575:1: ruleMyAttribute returns [EObject current=null] : ( ( (lv_PUBLIC_0_0= 'public' ) ) | ( (lv_PRIVATE_1_0= 'private' ) ) ) ;
    public final EObject ruleMyAttribute() throws RecognitionException {
        EObject current = null;

        Token lv_PUBLIC_0_0=null;
        Token lv_PRIVATE_1_0=null;


        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:581:2: ( ( ( (lv_PUBLIC_0_0= 'public' ) ) | ( (lv_PRIVATE_1_0= 'private' ) ) ) )
            // InternalBug347012TestLanguage.g:582:2: ( ( (lv_PUBLIC_0_0= 'public' ) ) | ( (lv_PRIVATE_1_0= 'private' ) ) )
            {
            // InternalBug347012TestLanguage.g:582:2: ( ( (lv_PUBLIC_0_0= 'public' ) ) | ( (lv_PRIVATE_1_0= 'private' ) ) )
            int alt20=2;
            int LA20_0 = input.LA(1);

            if ( (LA20_0==20) ) {
                alt20=1;
            }
            else if ( (LA20_0==22) ) {
                alt20=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 20, 0, input);

                throw nvae;
            }
            switch (alt20) {
                case 1 :
                    // InternalBug347012TestLanguage.g:583:3: ( (lv_PUBLIC_0_0= 'public' ) )
                    {
                    // InternalBug347012TestLanguage.g:583:3: ( (lv_PUBLIC_0_0= 'public' ) )
                    // InternalBug347012TestLanguage.g:584:4: (lv_PUBLIC_0_0= 'public' )
                    {
                    // InternalBug347012TestLanguage.g:584:4: (lv_PUBLIC_0_0= 'public' )
                    // InternalBug347012TestLanguage.g:585:5: lv_PUBLIC_0_0= 'public'
                    {
                    lv_PUBLIC_0_0=(Token)match(input,20,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_PUBLIC_0_0, grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getMyAttributeRule());
                    					}
                    					setWithLastConsumed(current, "PUBLIC", lv_PUBLIC_0_0, "public");
                    				

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBug347012TestLanguage.g:598:3: ( (lv_PRIVATE_1_0= 'private' ) )
                    {
                    // InternalBug347012TestLanguage.g:598:3: ( (lv_PRIVATE_1_0= 'private' ) )
                    // InternalBug347012TestLanguage.g:599:4: (lv_PRIVATE_1_0= 'private' )
                    {
                    // InternalBug347012TestLanguage.g:599:4: (lv_PRIVATE_1_0= 'private' )
                    // InternalBug347012TestLanguage.g:600:5: lv_PRIVATE_1_0= 'private'
                    {
                    lv_PRIVATE_1_0=(Token)match(input,22,FollowSets000.FOLLOW_2); 

                    					newLeafNode(lv_PRIVATE_1_0, grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0());
                    				

                    					if (current==null) {
                    						current = createModelElement(grammarAccess.getMyAttributeRule());
                    					}
                    					setWithLastConsumed(current, "PRIVATE", lv_PRIVATE_1_0, "private");
                    				

                    }


                    }


                    }
                    break;

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyAttribute"


    // $ANTLR start "entryRuleMyAttributes"
    // InternalBug347012TestLanguage.g:616:1: entryRuleMyAttributes returns [EObject current=null] : iv_ruleMyAttributes= ruleMyAttributes EOF ;
    public final EObject entryRuleMyAttributes() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyAttributes = null;


        try {
            // InternalBug347012TestLanguage.g:616:53: (iv_ruleMyAttributes= ruleMyAttributes EOF )
            // InternalBug347012TestLanguage.g:617:2: iv_ruleMyAttributes= ruleMyAttributes EOF
            {
             newCompositeNode(grammarAccess.getMyAttributesRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyAttributes=ruleMyAttributes();

            state._fsp--;

             current =iv_ruleMyAttributes; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyAttributes"


    // $ANTLR start "ruleMyAttributes"
    // InternalBug347012TestLanguage.g:623:1: ruleMyAttributes returns [EObject current=null] : ( () ( (lv_attributes_1_0= ruleMyAttribute ) )* ) ;
    public final EObject ruleMyAttributes() throws RecognitionException {
        EObject current = null;

        EObject lv_attributes_1_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:629:2: ( ( () ( (lv_attributes_1_0= ruleMyAttribute ) )* ) )
            // InternalBug347012TestLanguage.g:630:2: ( () ( (lv_attributes_1_0= ruleMyAttribute ) )* )
            {
            // InternalBug347012TestLanguage.g:630:2: ( () ( (lv_attributes_1_0= ruleMyAttribute ) )* )
            // InternalBug347012TestLanguage.g:631:3: () ( (lv_attributes_1_0= ruleMyAttribute ) )*
            {
            // InternalBug347012TestLanguage.g:631:3: ()
            // InternalBug347012TestLanguage.g:632:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getMyAttributesAccess().getMyAttributesAction_0(),
            					current);
            			

            }

            // InternalBug347012TestLanguage.g:638:3: ( (lv_attributes_1_0= ruleMyAttribute ) )*
            loop21:
            do {
                int alt21=2;
                int LA21_0 = input.LA(1);

                if ( (LA21_0==20||LA21_0==22) ) {
                    alt21=1;
                }


                switch (alt21) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:639:4: (lv_attributes_1_0= ruleMyAttribute )
            	    {
            	    // InternalBug347012TestLanguage.g:639:4: (lv_attributes_1_0= ruleMyAttribute )
            	    // InternalBug347012TestLanguage.g:640:5: lv_attributes_1_0= ruleMyAttribute
            	    {

            	    					newCompositeNode(grammarAccess.getMyAttributesAccess().getAttributesMyAttributeParserRuleCall_1_0());
            	    				
            	    pushFollow(FollowSets000.FOLLOW_12);
            	    lv_attributes_1_0=ruleMyAttribute();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getMyAttributesRule());
            	    					}
            	    					add(
            	    						current,
            	    						"attributes",
            	    						lv_attributes_1_0,
            	    						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyAttribute");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    break loop21;
                }
            } while (true);


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyAttributes"


    // $ANTLR start "entryRuleMyField"
    // InternalBug347012TestLanguage.g:661:1: entryRuleMyField returns [EObject current=null] : iv_ruleMyField= ruleMyField EOF ;
    public final EObject entryRuleMyField() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyField = null;


        try {
            // InternalBug347012TestLanguage.g:661:48: (iv_ruleMyField= ruleMyField EOF )
            // InternalBug347012TestLanguage.g:662:2: iv_ruleMyField= ruleMyField EOF
            {
             newCompositeNode(grammarAccess.getMyFieldRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyField=ruleMyField();

            state._fsp--;

             current =iv_ruleMyField; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyField"


    // $ANTLR start "ruleMyField"
    // InternalBug347012TestLanguage.g:668:1: ruleMyField returns [EObject current=null] : ( ( (lv_attr_0_0= ruleMyAttributes ) ) otherlv_1= 'var' (this_LT_2= RULE_LT )* ( (lv_bindings_3_0= ruleMyBinding ) ) ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )* ruleVirtualSemi ) ;
    public final EObject ruleMyField() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token this_LT_2=null;
        Token this_LT_4=null;
        Token otherlv_5=null;
        Token this_LT_6=null;
        EObject lv_attr_0_0 = null;

        EObject lv_bindings_3_0 = null;

        EObject lv_bindings_7_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:674:2: ( ( ( (lv_attr_0_0= ruleMyAttributes ) ) otherlv_1= 'var' (this_LT_2= RULE_LT )* ( (lv_bindings_3_0= ruleMyBinding ) ) ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )* ruleVirtualSemi ) )
            // InternalBug347012TestLanguage.g:675:2: ( ( (lv_attr_0_0= ruleMyAttributes ) ) otherlv_1= 'var' (this_LT_2= RULE_LT )* ( (lv_bindings_3_0= ruleMyBinding ) ) ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )* ruleVirtualSemi )
            {
            // InternalBug347012TestLanguage.g:675:2: ( ( (lv_attr_0_0= ruleMyAttributes ) ) otherlv_1= 'var' (this_LT_2= RULE_LT )* ( (lv_bindings_3_0= ruleMyBinding ) ) ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )* ruleVirtualSemi )
            // InternalBug347012TestLanguage.g:676:3: ( (lv_attr_0_0= ruleMyAttributes ) ) otherlv_1= 'var' (this_LT_2= RULE_LT )* ( (lv_bindings_3_0= ruleMyBinding ) ) ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )* ruleVirtualSemi
            {
            // InternalBug347012TestLanguage.g:676:3: ( (lv_attr_0_0= ruleMyAttributes ) )
            // InternalBug347012TestLanguage.g:677:4: (lv_attr_0_0= ruleMyAttributes )
            {
            // InternalBug347012TestLanguage.g:677:4: (lv_attr_0_0= ruleMyAttributes )
            // InternalBug347012TestLanguage.g:678:5: lv_attr_0_0= ruleMyAttributes
            {

            					newCompositeNode(grammarAccess.getMyFieldAccess().getAttrMyAttributesParserRuleCall_0_0());
            				
            pushFollow(FollowSets000.FOLLOW_13);
            lv_attr_0_0=ruleMyAttributes();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getMyFieldRule());
            					}
            					set(
            						current,
            						"attr",
            						lv_attr_0_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyAttributes");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            otherlv_1=(Token)match(input,23,FollowSets000.FOLLOW_7); 

            			newLeafNode(otherlv_1, grammarAccess.getMyFieldAccess().getVarKeyword_1());
            		
            // InternalBug347012TestLanguage.g:699:3: (this_LT_2= RULE_LT )*
            loop22:
            do {
                int alt22=2;
                int LA22_0 = input.LA(1);

                if ( (LA22_0==RULE_LT) ) {
                    alt22=1;
                }


                switch (alt22) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:700:4: this_LT_2= RULE_LT
            	    {
            	    this_LT_2=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

            	    				newLeafNode(this_LT_2, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_2());
            	    			

            	    }
            	    break;

            	default :
            	    break loop22;
                }
            } while (true);

            // InternalBug347012TestLanguage.g:705:3: ( (lv_bindings_3_0= ruleMyBinding ) )
            // InternalBug347012TestLanguage.g:706:4: (lv_bindings_3_0= ruleMyBinding )
            {
            // InternalBug347012TestLanguage.g:706:4: (lv_bindings_3_0= ruleMyBinding )
            // InternalBug347012TestLanguage.g:707:5: lv_bindings_3_0= ruleMyBinding
            {

            					newCompositeNode(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_3_0());
            				
            pushFollow(FollowSets000.FOLLOW_14);
            lv_bindings_3_0=ruleMyBinding();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getMyFieldRule());
            					}
            					add(
            						current,
            						"bindings",
            						lv_bindings_3_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyBinding");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            // InternalBug347012TestLanguage.g:724:3: ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )*
            loop25:
            do {
                int alt25=2;
                alt25 = dfa25.predict(input);
                switch (alt25) {
            	case 1 :
            	    // InternalBug347012TestLanguage.g:725:4: (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) )
            	    {
            	    // InternalBug347012TestLanguage.g:725:4: (this_LT_4= RULE_LT )*
            	    loop23:
            	    do {
            	        int alt23=2;
            	        int LA23_0 = input.LA(1);

            	        if ( (LA23_0==RULE_LT) ) {
            	            alt23=1;
            	        }


            	        switch (alt23) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:726:5: this_LT_4= RULE_LT
            	    	    {
            	    	    this_LT_4=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_15); 

            	    	    					newLeafNode(this_LT_4, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_0());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop23;
            	        }
            	    } while (true);

            	    otherlv_5=(Token)match(input,24,FollowSets000.FOLLOW_7); 

            	    				newLeafNode(otherlv_5, grammarAccess.getMyFieldAccess().getCommaKeyword_4_1());
            	    			
            	    // InternalBug347012TestLanguage.g:735:4: (this_LT_6= RULE_LT )*
            	    loop24:
            	    do {
            	        int alt24=2;
            	        int LA24_0 = input.LA(1);

            	        if ( (LA24_0==RULE_LT) ) {
            	            alt24=1;
            	        }


            	        switch (alt24) {
            	    	case 1 :
            	    	    // InternalBug347012TestLanguage.g:736:5: this_LT_6= RULE_LT
            	    	    {
            	    	    this_LT_6=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

            	    	    					newLeafNode(this_LT_6, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_2());
            	    	    				

            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop24;
            	        }
            	    } while (true);

            	    // InternalBug347012TestLanguage.g:741:4: ( (lv_bindings_7_0= ruleMyBinding ) )
            	    // InternalBug347012TestLanguage.g:742:5: (lv_bindings_7_0= ruleMyBinding )
            	    {
            	    // InternalBug347012TestLanguage.g:742:5: (lv_bindings_7_0= ruleMyBinding )
            	    // InternalBug347012TestLanguage.g:743:6: lv_bindings_7_0= ruleMyBinding
            	    {

            	    						newCompositeNode(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_4_3_0());
            	    					
            	    pushFollow(FollowSets000.FOLLOW_14);
            	    lv_bindings_7_0=ruleMyBinding();

            	    state._fsp--;


            	    						if (current==null) {
            	    							current = createModelElementForParent(grammarAccess.getMyFieldRule());
            	    						}
            	    						add(
            	    							current,
            	    							"bindings",
            	    							lv_bindings_7_0,
            	    							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyBinding");
            	    						afterParserOrEnumRuleCall();
            	    					

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop25;
                }
            } while (true);


            			newCompositeNode(grammarAccess.getMyFieldAccess().getVirtualSemiParserRuleCall_5());
            		
            pushFollow(FollowSets000.FOLLOW_2);
            ruleVirtualSemi();

            state._fsp--;


            			afterParserOrEnumRuleCall();
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyField"


    // $ANTLR start "entryRuleMyBinding"
    // InternalBug347012TestLanguage.g:772:1: entryRuleMyBinding returns [EObject current=null] : iv_ruleMyBinding= ruleMyBinding EOF ;
    public final EObject entryRuleMyBinding() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMyBinding = null;


        try {
            // InternalBug347012TestLanguage.g:772:50: (iv_ruleMyBinding= ruleMyBinding EOF )
            // InternalBug347012TestLanguage.g:773:2: iv_ruleMyBinding= ruleMyBinding EOF
            {
             newCompositeNode(grammarAccess.getMyBindingRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMyBinding=ruleMyBinding();

            state._fsp--;

             current =iv_ruleMyBinding; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleMyBinding"


    // $ANTLR start "ruleMyBinding"
    // InternalBug347012TestLanguage.g:779:1: ruleMyBinding returns [EObject current=null] : ( ( (lv_name_0_0= RULE_ID ) ) ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )? ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )? ) ;
    public final EObject ruleMyBinding() throws RecognitionException {
        EObject current = null;

        Token lv_name_0_0=null;
        Token this_LT_1=null;
        Token otherlv_2=null;
        Token this_LT_3=null;
        Token this_LT_5=null;
        Token otherlv_6=null;
        Token this_LT_7=null;
        AntlrDatatypeRuleToken lv_type_4_0 = null;

        EObject lv_expression_8_0 = null;



        	enterRule();

        try {
            // InternalBug347012TestLanguage.g:785:2: ( ( ( (lv_name_0_0= RULE_ID ) ) ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )? ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )? ) )
            // InternalBug347012TestLanguage.g:786:2: ( ( (lv_name_0_0= RULE_ID ) ) ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )? ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )? )
            {
            // InternalBug347012TestLanguage.g:786:2: ( ( (lv_name_0_0= RULE_ID ) ) ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )? ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )? )
            // InternalBug347012TestLanguage.g:787:3: ( (lv_name_0_0= RULE_ID ) ) ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )? ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )?
            {
            // InternalBug347012TestLanguage.g:787:3: ( (lv_name_0_0= RULE_ID ) )
            // InternalBug347012TestLanguage.g:788:4: (lv_name_0_0= RULE_ID )
            {
            // InternalBug347012TestLanguage.g:788:4: (lv_name_0_0= RULE_ID )
            // InternalBug347012TestLanguage.g:789:5: lv_name_0_0= RULE_ID
            {
            lv_name_0_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_16); 

            					newLeafNode(lv_name_0_0, grammarAccess.getMyBindingAccess().getNameIDTerminalRuleCall_0_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getMyBindingRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_0_0,
            						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
            				

            }


            }

            // InternalBug347012TestLanguage.g:805:3: ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )?
            int alt28=2;
            alt28 = dfa28.predict(input);
            switch (alt28) {
                case 1 :
                    // InternalBug347012TestLanguage.g:806:4: (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) )
                    {
                    // InternalBug347012TestLanguage.g:806:4: (this_LT_1= RULE_LT )*
                    loop26:
                    do {
                        int alt26=2;
                        int LA26_0 = input.LA(1);

                        if ( (LA26_0==RULE_LT) ) {
                            alt26=1;
                        }


                        switch (alt26) {
                    	case 1 :
                    	    // InternalBug347012TestLanguage.g:807:5: this_LT_1= RULE_LT
                    	    {
                    	    this_LT_1=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_17); 

                    	    					newLeafNode(this_LT_1, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_0());
                    	    				

                    	    }
                    	    break;

                    	default :
                    	    break loop26;
                        }
                    } while (true);

                    otherlv_2=(Token)match(input,25,FollowSets000.FOLLOW_7); 

                    				newLeafNode(otherlv_2, grammarAccess.getMyBindingAccess().getColonKeyword_1_1());
                    			
                    // InternalBug347012TestLanguage.g:816:4: (this_LT_3= RULE_LT )*
                    loop27:
                    do {
                        int alt27=2;
                        int LA27_0 = input.LA(1);

                        if ( (LA27_0==RULE_LT) ) {
                            alt27=1;
                        }


                        switch (alt27) {
                    	case 1 :
                    	    // InternalBug347012TestLanguage.g:817:5: this_LT_3= RULE_LT
                    	    {
                    	    this_LT_3=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_7); 

                    	    					newLeafNode(this_LT_3, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_2());
                    	    				

                    	    }
                    	    break;

                    	default :
                    	    break loop27;
                        }
                    } while (true);

                    // InternalBug347012TestLanguage.g:822:4: ( (lv_type_4_0= ruleFQN ) )
                    // InternalBug347012TestLanguage.g:823:5: (lv_type_4_0= ruleFQN )
                    {
                    // InternalBug347012TestLanguage.g:823:5: (lv_type_4_0= ruleFQN )
                    // InternalBug347012TestLanguage.g:824:6: lv_type_4_0= ruleFQN
                    {

                    						newCompositeNode(grammarAccess.getMyBindingAccess().getTypeFQNParserRuleCall_1_3_0());
                    					
                    pushFollow(FollowSets000.FOLLOW_18);
                    lv_type_4_0=ruleFQN();

                    state._fsp--;


                    						if (current==null) {
                    							current = createModelElementForParent(grammarAccess.getMyBindingRule());
                    						}
                    						set(
                    							current,
                    							"type",
                    							lv_type_4_0,
                    							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.FQN");
                    						afterParserOrEnumRuleCall();
                    					

                    }


                    }


                    }
                    break;

            }

            // InternalBug347012TestLanguage.g:842:3: ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )?
            int alt31=2;
            alt31 = dfa31.predict(input);
            switch (alt31) {
                case 1 :
                    // InternalBug347012TestLanguage.g:843:4: (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) )
                    {
                    // InternalBug347012TestLanguage.g:843:4: (this_LT_5= RULE_LT )*
                    loop29:
                    do {
                        int alt29=2;
                        int LA29_0 = input.LA(1);

                        if ( (LA29_0==RULE_LT) ) {
                            alt29=1;
                        }


                        switch (alt29) {
                    	case 1 :
                    	    // InternalBug347012TestLanguage.g:844:5: this_LT_5= RULE_LT
                    	    {
                    	    this_LT_5=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_19); 

                    	    					newLeafNode(this_LT_5, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_0());
                    	    				

                    	    }
                    	    break;

                    	default :
                    	    break loop29;
                        }
                    } while (true);

                    otherlv_6=(Token)match(input,26,FollowSets000.FOLLOW_20); 

                    				newLeafNode(otherlv_6, grammarAccess.getMyBindingAccess().getEqualsSignKeyword_2_1());
                    			
                    // InternalBug347012TestLanguage.g:853:4: (this_LT_7= RULE_LT )*
                    loop30:
                    do {
                        int alt30=2;
                        int LA30_0 = input.LA(1);

                        if ( (LA30_0==RULE_LT) ) {
                            alt30=1;
                        }


                        switch (alt30) {
                    	case 1 :
                    	    // InternalBug347012TestLanguage.g:854:5: this_LT_7= RULE_LT
                    	    {
                    	    this_LT_7=(Token)match(input,RULE_LT,FollowSets000.FOLLOW_20); 

                    	    					newLeafNode(this_LT_7, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_2());
                    	    				

                    	    }
                    	    break;

                    	default :
                    	    break loop30;
                        }
                    } while (true);

                    // InternalBug347012TestLanguage.g:859:4: ( (lv_expression_8_0= ruleMyPrimary ) )
                    // InternalBug347012TestLanguage.g:860:5: (lv_expression_8_0= ruleMyPrimary )
                    {
                    // InternalBug347012TestLanguage.g:860:5: (lv_expression_8_0= ruleMyPrimary )
                    // InternalBug347012TestLanguage.g:861:6: lv_expression_8_0= ruleMyPrimary
                    {

                    						newCompositeNode(grammarAccess.getMyBindingAccess().getExpressionMyPrimaryParserRuleCall_2_3_0());
                    					
                    pushFollow(FollowSets000.FOLLOW_2);
                    lv_expression_8_0=ruleMyPrimary();

                    state._fsp--;


                    						if (current==null) {
                    							current = createModelElementForParent(grammarAccess.getMyBindingRule());
                    						}
                    						set(
                    							current,
                    							"expression",
                    							lv_expression_8_0,
                    							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyPrimary");
                    						afterParserOrEnumRuleCall();
                    					

                    }


                    }


                    }
                    break;

            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleMyBinding"

    // Delegated rules


    protected DFA5 dfa5 = new DFA5(this);
    protected DFA25 dfa25 = new DFA25(this);
    protected DFA28 dfa28 = new DFA28(this);
    protected DFA31 dfa31 = new DFA31(this);
    static final String dfa_1s = "\5\uffff";
    static final String dfa_2s = "\1\1\1\uffff\1\1\2\uffff";
    static final String dfa_3s = "\1\4\1\uffff\1\4\1\uffff\1\4";
    static final String dfa_4s = "\1\32\1\uffff\1\32\1\uffff\1\32";
    static final String dfa_5s = "\1\uffff\1\2\1\uffff\1\1\1\uffff";
    static final String dfa_6s = "\5\uffff}>";
    static final String[] dfa_7s = {
            "\1\2\10\uffff\1\3\1\1\3\uffff\1\1\5\uffff\1\1\1\uffff\1\1",
            "",
            "\1\4\10\uffff\1\3\4\uffff\3\1\1\uffff\3\1\1\uffff\1\1",
            "",
            "\1\4\10\uffff\1\3\4\uffff\3\1\1\uffff\3\1\1\uffff\1\1"
    };

    static final short[] dfa_1 = DFA.unpackEncodedString(dfa_1s);
    static final short[] dfa_2 = DFA.unpackEncodedString(dfa_2s);
    static final char[] dfa_3 = DFA.unpackEncodedStringToUnsignedChars(dfa_3s);
    static final char[] dfa_4 = DFA.unpackEncodedStringToUnsignedChars(dfa_4s);
    static final short[] dfa_5 = DFA.unpackEncodedString(dfa_5s);
    static final short[] dfa_6 = DFA.unpackEncodedString(dfa_6s);
    static final short[][] dfa_7 = unpackEncodedStringArray(dfa_7s);

    class DFA5 extends DFA {

        public DFA5(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 5;
            this.eot = dfa_1;
            this.eof = dfa_2;
            this.min = dfa_3;
            this.max = dfa_4;
            this.accept = dfa_5;
            this.special = dfa_6;
            this.transition = dfa_7;
        }
        public String getDescription() {
            return "()* loopback of 183:3: ( (this_LT_1= RULE_LT )* kw= '.' (this_LT_3= RULE_LT )* this_ID_4= RULE_ID )*";
        }
    }
    static final String dfa_8s = "\2\uffff\1\1\2\uffff";
    static final String dfa_9s = "\1\30\1\uffff\1\30\1\uffff\1\30";
    static final String[] dfa_10s = {
            "\1\2\11\uffff\1\1\11\uffff\1\3",
            "",
            "\1\4\16\uffff\2\1\1\uffff\2\1\1\3",
            "",
            "\1\4\16\uffff\2\1\1\uffff\2\1\1\3"
    };
    static final short[] dfa_8 = DFA.unpackEncodedString(dfa_8s);
    static final char[] dfa_9 = DFA.unpackEncodedStringToUnsignedChars(dfa_9s);
    static final short[][] dfa_10 = unpackEncodedStringArray(dfa_10s);

    class DFA25 extends DFA {

        public DFA25(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 25;
            this.eot = dfa_1;
            this.eof = dfa_8;
            this.min = dfa_3;
            this.max = dfa_9;
            this.accept = dfa_5;
            this.special = dfa_6;
            this.transition = dfa_10;
        }
        public String getDescription() {
            return "()* loopback of 724:3: ( (this_LT_4= RULE_LT )* otherlv_5= ',' (this_LT_6= RULE_LT )* ( (lv_bindings_7_0= ruleMyBinding ) ) )*";
        }
    }
    static final String dfa_11s = "\2\3\3\uffff";
    static final String dfa_12s = "\2\4\2\uffff\1\4";
    static final String dfa_13s = "\2\32\2\uffff\1\32";
    static final String dfa_14s = "\2\uffff\1\1\1\2\1\uffff";
    static final String[] dfa_15s = {
            "\1\1\11\uffff\1\3\11\uffff\1\3\1\2\1\3",
            "\1\4\16\uffff\2\3\1\uffff\3\3\1\2\1\3",
            "",
            "",
            "\1\4\16\uffff\2\3\1\uffff\3\3\1\2\1\3"
    };
    static final short[] dfa_11 = DFA.unpackEncodedString(dfa_11s);
    static final char[] dfa_12 = DFA.unpackEncodedStringToUnsignedChars(dfa_12s);
    static final char[] dfa_13 = DFA.unpackEncodedStringToUnsignedChars(dfa_13s);
    static final short[] dfa_14 = DFA.unpackEncodedString(dfa_14s);
    static final short[][] dfa_15 = unpackEncodedStringArray(dfa_15s);

    class DFA28 extends DFA {

        public DFA28(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 28;
            this.eot = dfa_1;
            this.eof = dfa_11;
            this.min = dfa_12;
            this.max = dfa_13;
            this.accept = dfa_14;
            this.special = dfa_6;
            this.transition = dfa_15;
        }
        public String getDescription() {
            return "805:3: ( (this_LT_1= RULE_LT )* otherlv_2= ':' (this_LT_3= RULE_LT )* ( (lv_type_4_0= ruleFQN ) ) )?";
        }
    }
    static final String[] dfa_16s = {
            "\1\1\11\uffff\1\3\11\uffff\1\3\1\uffff\1\2",
            "\1\4\16\uffff\2\3\1\uffff\3\3\1\uffff\1\2",
            "",
            "",
            "\1\4\16\uffff\2\3\1\uffff\3\3\1\uffff\1\2"
    };
    static final short[][] dfa_16 = unpackEncodedStringArray(dfa_16s);

    class DFA31 extends DFA {

        public DFA31(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 31;
            this.eot = dfa_1;
            this.eof = dfa_11;
            this.min = dfa_12;
            this.max = dfa_13;
            this.accept = dfa_14;
            this.special = dfa_6;
            this.transition = dfa_16;
        }
        public String getDescription() {
            return "842:3: ( (this_LT_5= RULE_LT )* otherlv_6= '=' (this_LT_7= RULE_LT )* ( (lv_expression_8_0= ruleMyPrimary ) ) )?";
        }
    }
 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000020010L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000012L});
        public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000002012L});
        public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000002010L});
        public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000000030L});
        public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000040010L});
        public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000380010L});
        public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000200000L});
        public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000000D80010L});
        public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000000500002L});
        public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000800000L});
        public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x0000000001004010L});
        public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000001000010L});
        public static final BitSet FOLLOW_16 = new BitSet(new long[]{0x0000000006000012L});
        public static final BitSet FOLLOW_17 = new BitSet(new long[]{0x0000000002000010L});
        public static final BitSet FOLLOW_18 = new BitSet(new long[]{0x0000000004000012L});
        public static final BitSet FOLLOW_19 = new BitSet(new long[]{0x0000000004000010L});
        public static final BitSet FOLLOW_20 = new BitSet(new long[]{0x00000000000180F0L});
    }


}