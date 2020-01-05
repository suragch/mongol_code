/// This class contains the coded values for the glyphs in the
/// old Menksoft fonts. Unlike Mongolian Unicode, they encode text
/// according to the written shape.
class Menksoft {
  static const int MENKSOFT_START = 0xE234;
  static const int MENKSOFT_END = 0xE34F;

  // Private Use Area glyph values
  static const int BIRGA = 0xE234;
  static const int ELLIPSIS = 0xE235;
  static const int COMMA = 0xE236;
  static const int FULL_STOP = 0xE237;
  static const int COLON = 0xE238;
  static const int FOUR_DOTS = 0xE239;
  static const int TODO_SOFT_HYPHEN = 0xE23A;
  static const int SIBE_SYLLABLE_BOUNDARY_MARKER = 0xE23B;
  static const int MANCHU_COMMA = 0xE23C;
  static const int MANCHU_FULL_STOP = 0xE23D;
  static const int NIRUGU = 0xE23E;
  static const int BIRGA_WITH_ORNAMENT = 0xE23F;
  static const int ROTATED_BIRGA = 0xE240;
  static const int DOUBLE_BIRGA_WITH_ORNAMENT = 0xE241;
  static const int TRIPLE_BIRGA_WITH_ORNAMENT = 0xE242;
  static const int MIDDLE_DOT = 0xE243;
  static const int ZERO = 0xE244;
  static const int ONE = 0xE245;
  static const int TWO = 0xE246;
  static const int THREE = 0xE247;
  static const int FOUR = 0xE248;
  static const int FIVE = 0xE249;
  static const int SIX = 0xE24A;
  static const int SEVEN = 0xE24B;
  static const int EIGHT = 0xE24C;
  static const int NINE = 0xE24D;
  static const int QUESTION_EXCLAMATION = 0xE24E;
  static const int EXCLAMATION_QUESTION = 0xE24F;
  static const int EXCLAMATION = 0xE250;
  static const int QUESTION = 0xE251;
  static const int SEMICOLON = 0xE252;
  static const int LEFT_PARENTHESIS = 0xE253;
  static const int RIGHT_PARENTHESIS = 0xE254;
  static const int LEFT_ANGLE_BRACKET = 0xE255;
  static const int RIGHT_ANGLE_BRACKET = 0xE256;
  static const int LEFT_TORTOISE_SHELL_BRACKET = 0xE257;
  static const int RIGHT_TORTOISE_SHELL_BRACKET = 0xE258;
  static const int LEFT_DOUBLE_ANGLE_BRACKET = 0xE259;
  static const int RIGHT_DOUBLE_ANGLE_BRACKET = 0xE25A;
  static const int LEFT_WHITE_CORNER_BRACKET = 0xE25B;
  static const int RIGHT_WHITE_CORNER_BRACKET = 0xE25C;
  static const int FULL_WIDTH_COMMA = 0xE25D;
  static const int X = 0xE25E;
  static const int REFERENCE_MARK = 0xE25F; // 0x203b
  static const int EN_DASH = 0xE260; // TODO is that what this is?
  static const int EM_DASH = 0xE261; // TODO is that what this is?
  static const int UNKNOWN_SPACE = 0xE262; // TODO what is this?
  static const int SUFFIX_SPACE = 0xE263;

  // These are in the order of the Unicode 9 specs sheet
  // BP = looks better after B, P (and other rounded like Q, G, F, K, KH)
  // MVS = final glyph variant for MVS
  // gv = glyph variant, same basic glyph form as the one it follows.
  // TOOTH = the ending of this character matches a following character that slants left (for example, a tooth)
  // STEM = the ending of this character matches a following character that starts with a vertical stem
  // ROUND = the ending of this character matches a round following character (feminine QG)
  static const int A_START = 0xE264;
  static const int ISOL_A = 0xE264;
  static const int INIT_A = 0xE266;
  static const int MEDI_A = 0xE26C;
  static const int MEDI_A_BP = 0xE26D; // gv
  static const int FINA_A = 0xE268;
  static const int FINA_A_BP = 0xE26B; // const A following BPKF
  static const int ISOL_A_FVS1 = 0xE265;
  static const int MEDI_A_FVS1 = 0xE26E;
  static const int FINA_A_FVS1 = 0xE269;
  static const int FINA_A_MVS = 0xE26A; // gv for MVS + A
  static const int MEDI_A_FVS2 = 0xE267; // A of ACHA suffix
  static const int MEDI_A_UNKNOWN = 0xE26F;

  static const int E_START = 0xE270;
  static const int ISOL_E = 0xE270;
  static const int INIT_E = 0xE271;
  static const int MEDI_E = 0xE276;
  static const int MEDI_E_BP = 0xE277;
  static const int FINA_E = 0xE273;
  static const int FINA_E_BP = 0xE275; // const E following BPKF
  static const int INIT_E_FVS1 = 0xE272;
  static const int FINA_E_FVS1 = 0xE269; // no E glyph so using A
  static const int FINA_E_MVS = 0xE274; // gv for MVS + E
  static const int MEDI_E_UNKNOWN = 0xE278;

  static const int I_START = 0xE279;
  static const int ISOL_I = 0xE279;
  static const int ISOL_I_SUFFIX = 0xE282;
  static const int INIT_I = 0xE27A;
  static const int MEDI_I = 0xE27E;
  static const int MEDI_I_SUFFIX = 0xE280;
  static const int MEDI_I_BP = 0xE27F; // gv
  static const int MEDI_I_DOUBLE_TOOTH = 0xE281; // gv
  static const int FINA_I = 0xE27B;
  static const int FINA_I_BP = 0xE27C; // gv
  static const int MEDI_I_FVS1 = 0xE27D; //

  static const int O_START = 0xE283;
  static const int ISOL_O = 0xE283;
  static const int INIT_O = 0xE284;
  static const int MEDI_O = 0xE289;
  static const int MEDI_O_BP = 0xE28A;
  static const int FINA_O = 0xE285;
  static const int FINA_O_BP = 0xE287; // gv
  static const int MEDI_O_FVS1 = 0xE288;
  static const int FINA_O_FVS1 = 0xE286;

  static const int U_START = 0xE28B; // Using Init U gliph
  static const int ISOL_U = 0xE28C; // Using Init U gliph
  static const int INIT_U = 0xE28C;
  static const int MEDI_U = 0xE291;
  static const int MEDI_U_BP = 0xE292; // gv
  static const int FINA_U = 0xE28D;
  static const int FINA_U_BP = 0xE28F; // gv
  static const int MEDI_U_FVS1 = 0xE290;
  static const int FINA_U_FVS1 = 0xE28E; // FIXME not defined in Unicode 10.0

  static const int OE_START = 0xE293;
  static const int ISOL_OE = 0xE293;
  static const int ISOL_OE_FVS1 = 0xE294; // not defined in unicode
  static const int INIT_OE = 0xE295;
  static const int MEDI_OE = 0xE29E;
  static const int MEDI_OE_BP = 0xE29F; // gv
  static const int FINA_OE = 0xE296;
  static const int FINA_OE_BP = 0xE29A; // gv
  static const int MEDI_OE_FVS1 = 0xE29C;
  static const int MEDI_OE_FVS1_BP = 0xE29D;
  static const int FINA_OE_FVS1 = 0xE297;
  static const int FINA_OE_FVS1_BP = 0xE298; // gv
  static const int FINA_OE_FVS2 = 0xE299; // undefined in Unicode
  static const int MEDI_OE_FVS2 = 0xE29B;

  static const int UE_START = 0xE2A0;
  static const int ISOL_UE = 0xE2A2; // Using initial glyph
  static const int INIT_UE = 0xE2A2;
  static const int MEDI_UE = 0xE2AB;
  static const int MEDI_UE_BP = 0xE2AC;
  static const int FINA_UE = 0xE2A3;
  static const int FINA_UE_BP = 0xE2A7;
  static const int ISOL_UE_FVS1 = 0xE2A1;
  static const int MEDI_UE_FVS1 = 0xE2A9;
  static const int MEDI_UE_FVS1_BP = 0xE2AA;
  static const int FINA_UE_FVS1 = 0xE2A4;
  static const int FINA_UE_FVS1_BP = 0xE2A5;
  static const int FINA_UE_FVS2 = 0xE2A6; // undefined in unicode
  static const int MEDI_UE_FVS2 = 0xE2A8;

  static const int EE_START = 0xE2AD;
  static const int ISOL_EE = 0xE2AD;
  static const int INIT_EE = 0xE2AE;
  static const int MEDI_EE = 0xE2B0;
  static const int FINA_EE = 0xE2AF;

  static const int NA_START = 0xE2B1;
  static const int ISOL_NA = 0xE2B3;
  static const int INIT_NA_TOOTH = 0xE2B1;
  static const int INIT_NA_STEM = 0xE2B3;
  static const int MEDI_NA_TOOTH = 0xE2B8;
  static const int MEDI_NA_STEM = 0xE2BA;
  static const int MEDI_NA_NG = 0xE2C0;
  static const int FINA_NA = 0xE2B5;
  static const int INIT_NA_FVS1_TOOTH = 0xE2B2;
  static const int INIT_NA_FVS1_STEM = 0xE2B4;
  static const int MEDI_NA_FVS1_TOOTH = 0xE2B7;
  static const int MEDI_NA_FVS1_STEM = 0xE2B9;
  static const int MEDI_NA_FVS1_NG = 0xE2BF;
  static const int MEDI_NA_FVS2 = 0xE2B6; // MVS
  static const int MEDI_NA_FVS3 =
      0xE2B7; // Tod Mongol N; FIXME: no glyph, substituting medial dotted n

  static const int ANG_START = 0xE2BB;
  static const int ISOL_ANG = 0xE2BC;
  static const int INIT_ANG_TOOTH = 0xE2BC;
  static const int INIT_ANG_ROUND = 0xE2BD;
  static const int INIT_ANG_STEM = 0xE2BE;
  static const int MEDI_ANG_TOOTH = 0xE2BC; // good for following tooth
  static const int MEDI_ANG_ROUND =
      0xE2BD; // good for following round letter like B P H K
  static const int MEDI_ANG_STEM =
      0xE2BE; // good for following stem letter like J CH R
  static const int FINA_ANG = 0xE2BB;
  static const int ANG_END = 0xE2BE;

  static const int BA_START = 0xE2C1;
  static const int ISOL_BA = 0xE2C1;
  static const int INIT_BA = 0xE2C1;
  static const int INIT_BA_OU = 0xE2C2;
  static const int INIT_BA_STEM = 0xE2C7; // using medial stem
  static const int MEDI_BA_TOOTH = 0xE2C5;
  static const int MEDI_BA_OU = 0xE2C6;
  static const int MEDI_BA_STEM = 0xE2C7;
  static const int FINA_BA = 0xE2C3;
  static const int FINA_BA_FVS1 = 0xE2C4;

  static const int PA_START = 0xE2C8;
  static const int ISOL_PA = 0xE2C8;
  static const int INIT_PA = 0xE2C8;
  static const int INIT_PA_OU = 0xE2C9;
  static const int INIT_PA_STEM = 0xE2CD; // using medial stem
  static const int MEDI_PA_TOOTH = 0xE2CB;
  static const int MEDI_PA_OU = 0xE2CC;
  static const int MEDI_PA_STEM = 0xE2CD;
  static const int FINA_PA = 0xE2CA;

  static const int QA_START = 0xE2CE;
  static const int ISOL_QA = 0xE2D2;
  static const int INIT_QA_TOOTH = 0xE2CE;
  static const int INIT_QA_STEM = 0xE2D2;
  static const int INIT_QA_FEM = 0xE2D0; // GV FEMININE
  static const int INIT_QA_FEM_OU = 0xE2D4;
  static const int MEDI_QA_TOOTH = 0xE2D8;
  static const int MEDI_QA_STEM = 0xE2DC;
  static const int MEDI_QA_FEM = 0xE2DA;
  static const int MEDI_QA_FEM_CONSONANT = 0xE2DF;
  static const int MEDI_QA_FEM_CONSONANT_DOTTED = 0xE2E0;
  static const int MEDI_QA_FEM_OU = 0xE2DD;
  static const int FINA_QA = 0xE2D6;
  static const int INIT_QA_FVS1_TOOTH = 0xE2CF;
  static const int INIT_QA_FVS1_STEM = 0xE2D3;
  static const int INIT_QA_FVS1_FEM = 0xE2D1;
  static const int INIT_QA_FVS1_FEM_OU = 0xE2D5;
  static const int MEDI_QA_FVS1 = 0xE2D9;
  static const int MEDI_QA_FVS1_FEM = 0xE2DB;
  static const int MEDI_QA_FVS1_FEM_OU = 0xE2DE;
  static const int ISOL_QA_FVS1 = 0xE2D1; // feminine with 2 dots
  static const int MEDI_QA_FVS2 = 0xE2D7;
  static const int MEDI_QA_FVS3 = 0xE2D6;

  static const int GA_START = 0xE2E1;
  static const int ISOL_GA = 0xE2E4;
  static const int INIT_GA_TOOTH = 0xE2E1;
  static const int INIT_GA_STEM = 0xE2E4;
  static const int INIT_GA_FEM = 0xE2E3;
  static const int INIT_GA_FEM_OU = 0xE2E6;
  static const int MEDI_GA = 0xE2EE;
  static const int MEDI_GA_FEM = 0xE2EB;
  static const int MEDI_GA_FEM_OU = 0xE2ED;
  static const int FINA_GA = 0xE2E7;
  static const int INIT_GA_FVS1_TOOTH = 0xE2E2;
  static const int INIT_GA_FVS1_STEM = 0xE2E5;
  static const int MEDI_GA_FVS1_TOOTH = 0xE2EA;
  static const int MEDI_GA_FVS1_STEM = 0xE2EC;

  // This deviation is necessary to override context rules.
  // This follows the WG2 decision: https://r12a.github.io/mongolian-variants/
  static const int FINA_GA_FVS1 =
      0xE2E7; // masculine context override FIXME Deviating from Unicode 10.0 !!!
  static const int FINA_GA_FVS2 =
      0xE2E8; // feminine const form FIXME Deviating from Unicode 10.0 !!!
  static const int MEDI_GA_FVS2 = 0xE2E9;
  static const int MEDI_GA_FVS3_TOOTH = 0xE2EF;
  static const int MEDI_GA_FVS3_STEM = 0xE2F0;

  static const int MA_START = 0xE2F1;
  static const int ISOL_MA = 0xE2F2;
  static const int INIT_MA_TOOTH = 0xE2F1;
  static const int INIT_MA_STEM_LONG = 0xE2F2;
  static const int MEDI_MA_TOOTH = 0xE2F4;
  static const int MEDI_MA_STEM_LONG =
      0xE2F5; // long stem GV, use this if M or L follows
  static const int MEDI_MA_BP =
      0xE2F6; // GV use this if following a B, P, H, K, etc.
  static const int FINA_MA = 0xE2F3;

  static const int LA_START = 0xE2F7;
  static const int ISOL_LA = 0xE2F8;
  static const int INIT_LA_TOOTH = 0xE2F7;
  static const int INIT_LA_STEM_LONG = 0xE2F8;
  static const int MEDI_LA_TOOTH = 0xE2FA;
  static const int MEDI_LA_STEM_LONG =
      0xE2FB; // long stem GV, use this if M or L follows
  static const int MEDI_LA_BP =
      0xE2FC; // GV use this if following a B, P, H, K, etc.
  static const int FINA_LA = 0xE2F9;

  static const int SA_START = 0xE2FD;
  static const int ISOL_SA = 0xE2FE;
  static const int INIT_SA_TOOTH = 0xE2FD;
  static const int INIT_SA_STEM = 0xE2FE;
  static const int MEDI_SA_TOOTH = 0xE301;
  static const int MEDI_SA_STEM = 0xE302;
  static const int FINA_SA = 0xE2FF;
  static const int FINA_SA_FVS1 = 0xE300;
  static const int FINA_SA_FVS2 =
      0xE2FF; //0x100CE; FIXME: glyph is not in Menksoft PUA, substituting first form

  static const int SHA_START = 0xE303;
  static const int ISOL_SHA = 0xE304;
  static const int INIT_SHA_TOOTH = 0xE303;
  static const int INIT_SHA_STEM = 0xE304;
  static const int MEDI_SHA_TOOTH = 0xE306;
  static const int MEDI_SHA_STEM = 0xE307;
  static const int FINA_SHA = 0xE305;

  static const int TA_START = 0xE308;
  static const int ISOL_TA = 0xE309;
  static const int INIT_TA_TOOTH = 0xE308;
  static const int INIT_TA_STEM = 0xE309;
  static const int MEDI_TA = 0xE30B;
  static const int FINA_TA = 0xE30A;
  static const int MEDI_TA_FVS1_TOOTH = 0xE30C;
  static const int MEDI_TA_FVS1_STEM = 0xE30D;

  static const int DA_START = 0xE30E;
  static const int ISOL_DA = 0xE310;
  static const int INIT_DA_TOOTH = 0xE30E;
  static const int INIT_DA_STEM = 0xE30F;
  static const int MEDI_DA = 0xE314;
  static const int FINA_DA = 0xE311;
  static const int INIT_DA_FVS1 = 0xE310;
  static const int MEDI_DA_FVS1 = 0xE313;
  static const int FINA_DA_FVS1 = 0xE312;

  static const int CHA_START = 0xE315;
  static const int ISOL_CHA = 0xE315;
  static const int INIT_CHA = 0xE315;
  static const int MEDI_CHA = 0xE317;
  static const int FINA_CHA = 0xE316;

  static const int JA_START = 0xE318;
  static const int ISOL_JA = 0xE318;
  static const int INIT_JA_TOOTH = 0xE319;
  static const int INIT_JA_STEM = 0xE31A;
  static const int MEDI_JA = 0xE31D;
  static const int FINA_JA = 0xE31B;
  static const int MEDI_JA_FVS1 = 0xE31C; // MVS

  static const int YA_START = 0xE31E;
  static const int ISOL_YA = 0xE31E;
  static const int INIT_YA = 0xE31E;

  //static const int MEDI_YA = 0xE320; // hooked (Unicode 9.0)
  static const int MEDI_YA = 0xE321; // straight (Unicode 10.0)
  static const int FINA_YA = 0xE31F;
  static const int INIT_YA_FVS1 = 0xE321;

  //static const int MEDI_YA_FVS1 = 0xE321; // straight (Unicode 9.0)
  static const int MEDI_YA_FVS1 = 0xE320; // hooked (Unicode 10.0)
  static const int MEDI_YA_FVS2 = 0xE31F;

  static const int RA_START = 0xE322;
  static const int ISOL_RA = 0xE322;
  static const int INIT_RA_TOOTH = 0xE323;
  static const int INIT_RA_STEM = 0xE322;
  static const int MEDI_RA_TOOTH = 0xE327;
  static const int MEDI_RA_STEM = 0xE326;
  static const int FINA_RA = 0xE325;

  static const int WA_START = 0xE329;
  static const int ISOL_WA = 0xE329;
  static const int INIT_WA = 0xE329;
  static const int MEDI_WA = 0xE32C;
  static const int FINA_WA = 0xE32A;
  static const int FINA_WA_FVS1 = 0xE32B; // MVS

  static const int FA_START = 0xE32D;
  static const int ISOL_FA = 0xE32D;
  static const int INIT_FA = 0xE32D;
  static const int INIT_FA_OU = 0xE32E;
  static const int INIT_FA_STEM = 0xE332; // using medial stem
  static const int MEDI_FA_TOOTH = 0xE330;
  static const int MEDI_FA_OU = 0xE331;
  static const int MEDI_FA_STEM = 0xE332;
  static const int FINA_FA = 0xE32F;

  static const int KA_START = 0xE333;
  static const int ISOL_KA = 0xE333;
  static const int INIT_KA = 0xE333;
  static const int INIT_KA_OU = 0xE334;
  static const int MEDI_KA_TOOTH = 0xE336;
  static const int MEDI_KA_OU = 0xE337;
  static const int MEDI_KA_STEM = 0xE338;
  static const int FINA_KA = 0xE335;

  static const int KHA_START = 0xE339;
  static const int ISOL_KHA = 0xE339;
  static const int INIT_KHA = 0xE339;
  static const int INIT_KHA_OU = 0xE33A;
  static const int MEDI_KHA_TOOTH = 0xE33C;
  static const int MEDI_KHA_OU = 0xE33D;
  static const int MEDI_KHA_STEM = 0xE33E;
  static const int FINA_KHA = 0xE33B;

  static const int TSA_START = 0xE33F;
  static const int ISOL_TSA = 0xE33F;
  static const int INIT_TSA = 0xE33F;
  static const int MEDI_TSA = 0xE341;
  static const int FINA_TSA = 0xE340;

  static const int ZA_START = 0xE342;
  static const int ISOL_ZA = 0xE342;
  static const int INIT_ZA = 0xE342;
  static const int MEDI_ZA = 0xE344;
  static const int FINA_ZA = 0xE343;

  static const int HAA_START = 0xE345;
  static const int ISOL_HAA = 0xE345;
  static const int INIT_HAA = 0xE345;
  static const int MEDI_HAA = 0xE347;
  static const int FINA_HAA = 0xE346;

  static const int ZRA_START = 0xE348;
  static const int ISOL_ZRA = 0xE348;
  static const int INIT_ZRA = 0xE348;
  static const int MEDI_ZRA = 0xE349;
  static const int FINA_ZRA = 0xE34A;

  static const int LHA_START = 0xE34B;
  static const int ISOL_LHA = 0xE34B;
  static const int INIT_LHA = 0xE34B;
  static const int MEDI_LHA = 0xE34C;
  static const int MEDI_LHA_BP = 0xE34D;
  static const int FINA_LHA = 0xE34C;
  static const int FINA_LHA_BP = 0xE34D;

  static const int ZHI_START = 0xE34E;
  static const int ISOL_ZHI = 0xE34E;
  static const int INIT_ZHI = 0xE34E;
  static const int MEDI_ZHI = 0xE34E;
  static const int FINA_ZHI = 0xE34E;

  static const int CHI_START = 0xE34F;
  static const int ISOL_CHI = 0xE34F;
  static const int INIT_CHI = 0xE34F;
  static const int MEDI_CHI = 0xE34F;
  static const int FINA_CHI = 0xE34F;

  static const int SPACE = 0x0020;

  static bool isMenksoftSpace(int codeUnit) {
    return codeUnit == Menksoft.SUFFIX_SPACE ||
        codeUnit == Menksoft.UNKNOWN_SPACE ||
        codeUnit == SPACE;
  }
}
