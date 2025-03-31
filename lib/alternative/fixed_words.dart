// GBT+25924-2023 Appendix D
import 'package:mongol_code/mongol_code.dart';

List<int>? checkFixedSequence(List<int> unicode) {
  final word = String.fromCharCodes(unicode);
  final menksoft = _fixedTwoLetterWords[word] ?? _fixedSuffixes[word] ?? _fixedWords[word];
  if (menksoft == null) return null;
  return menksoft.codeUnits;
}

// NCC: Non-combining consonants (NA, MA, LA, etc)
// MCC: Mongolian combining consonants (BA, PA, FA, KA, KHA)
// MCCC: Mongolian conditional combining consonants (QA, GA)
const _fixedTwoLetterWords = {
  ////// FIXED TWO-LETTER WORDS //////

  // 1. NCC|MCCC + A
  '${Unicode.NA}${Unicode.A}': '${Menksoft.INIT_NA_FVS1_STEM}${Menksoft.FINA_A}',
  '${Unicode.MA}${Unicode.A}': '${Menksoft.INIT_MA_STEM_LONG}${Menksoft.FINA_A}',
  '${Unicode.LA}${Unicode.A}': '${Menksoft.INIT_LA_STEM_LONG}${Menksoft.FINA_A}',
  '${Unicode.SA}${Unicode.A}': '${Menksoft.INIT_SA_STEM}${Menksoft.FINA_A}',
  '${Unicode.SHA}${Unicode.A}': '${Menksoft.INIT_SHA_STEM}${Menksoft.FINA_A}',
  '${Unicode.TA}${Unicode.A}': '${Menksoft.INIT_TA_STEM}${Menksoft.FINA_A}',
  '${Unicode.CHA}${Unicode.A}': '${Menksoft.INIT_CHA}${Menksoft.FINA_A}',
  '${Unicode.JA}${Unicode.A}': '${Menksoft.INIT_JA_STEM}${Menksoft.FINA_A}',
  '${Unicode.YA}${Unicode.A}': '${Menksoft.INIT_YA}${Menksoft.FINA_A}',
  '${Unicode.RA}${Unicode.A}': '${Menksoft.INIT_RA_STEM}${Menksoft.FINA_A}',
  '${Unicode.WA}${Unicode.A}': '${Menksoft.INIT_WA}${Menksoft.FINA_A}',
  '${Unicode.TSA}${Unicode.A}': '${Menksoft.INIT_TSA}${Menksoft.FINA_A}',
  '${Unicode.ZA}${Unicode.A}': '${Menksoft.INIT_ZA}${Menksoft.FINA_A}',
  '${Unicode.HAA}${Unicode.A}': '${Menksoft.INIT_HAA}${Menksoft.FINA_A}',
  '${Unicode.ZRA}${Unicode.A}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_A}',
  '${Unicode.LHA}${Unicode.A}': '${Menksoft.INIT_LHA}${Menksoft.FINA_A}',
  '${Unicode.QA}${Unicode.A}': '${Menksoft.INIT_QA_STEM}${Menksoft.FINA_A}',
  '${Unicode.GA}${Unicode.A}': '${Menksoft.INIT_GA_STEM}${Menksoft.FINA_A}',

  // 2. MCC + A
  '${Unicode.BA}${Unicode.A}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_A_BP}',
  '${Unicode.PA}${Unicode.A}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_A_BP}',
  '${Unicode.FA}${Unicode.A}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_A_BP}',
  '${Unicode.KA}${Unicode.A}': '${Menksoft.INIT_KA}${Menksoft.FINA_A_BP}',
  '${Unicode.KHA}${Unicode.A}': '${Menksoft.INIT_KHA}${Menksoft.FINA_A_BP}',

  // 3. NCC + E
  '${Unicode.NA}${Unicode.E}': '${Menksoft.INIT_NA_FVS1_STEM}${Menksoft.FINA_E}',
  '${Unicode.MA}${Unicode.E}': '${Menksoft.INIT_MA_STEM_LONG}${Menksoft.FINA_E}',
  '${Unicode.LA}${Unicode.E}': '${Menksoft.INIT_LA_STEM_LONG}${Menksoft.FINA_E}',
  '${Unicode.SA}${Unicode.E}': '${Menksoft.INIT_SA_STEM}${Menksoft.FINA_E}',
  '${Unicode.SHA}${Unicode.E}': '${Menksoft.INIT_SHA_STEM}${Menksoft.FINA_E}',
  '${Unicode.TA}${Unicode.E}': '${Menksoft.INIT_TA_STEM}${Menksoft.FINA_E}',
  '${Unicode.CHA}${Unicode.E}': '${Menksoft.INIT_CHA}${Menksoft.FINA_E}',
  '${Unicode.JA}${Unicode.E}': '${Menksoft.INIT_JA_STEM}${Menksoft.FINA_E}',
  '${Unicode.YA}${Unicode.E}': '${Menksoft.INIT_YA}${Menksoft.FINA_E}',
  '${Unicode.RA}${Unicode.E}': '${Menksoft.INIT_RA_STEM}${Menksoft.FINA_E}',
  '${Unicode.WA}${Unicode.E}': '${Menksoft.INIT_WA}${Menksoft.FINA_E}',
  '${Unicode.TSA}${Unicode.E}': '${Menksoft.INIT_TSA}${Menksoft.FINA_E}',
  '${Unicode.ZA}${Unicode.E}': '${Menksoft.INIT_ZA}${Menksoft.FINA_E}',
  '${Unicode.HAA}${Unicode.E}': '${Menksoft.INIT_HAA}${Menksoft.FINA_E}',
  '${Unicode.ZRA}${Unicode.E}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_E}',
  '${Unicode.LHA}${Unicode.E}': '${Menksoft.INIT_LHA}${Menksoft.FINA_E}',

  // 4. MCC|MCCC + E
  '${Unicode.BA}${Unicode.E}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_E_BP}',
  '${Unicode.PA}${Unicode.E}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_E_BP}',
  '${Unicode.FA}${Unicode.E}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_E_BP}',
  '${Unicode.KA}${Unicode.E}': '${Menksoft.INIT_KA}${Menksoft.FINA_E_BP}',
  '${Unicode.KHA}${Unicode.E}': '${Menksoft.INIT_KHA}${Menksoft.FINA_E_BP}',
  '${Unicode.QA}${Unicode.E}': '${Menksoft.INIT_QA_FVS2}${Menksoft.FINA_E_BP}',
  '${Unicode.GA}${Unicode.E}': '${Menksoft.INIT_GA_FVS2}${Menksoft.FINA_E_BP}',

  // 5. Consonant + O|U
  '${Unicode.NA}${Unicode.O}': '${Menksoft.INIT_NA_FVS1_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.MA}${Unicode.O}': '${Menksoft.INIT_MA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.LA}${Unicode.O}': '${Menksoft.INIT_LA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.SA}${Unicode.O}': '${Menksoft.INIT_SA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.SHA}${Unicode.O}': '${Menksoft.INIT_SHA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.TA}${Unicode.O}': '${Menksoft.INIT_TA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.CHA}${Unicode.O}': '${Menksoft.INIT_CHA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.JA}${Unicode.O}': '${Menksoft.INIT_JA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.YA}${Unicode.O}': '${Menksoft.INIT_YA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.RA}${Unicode.O}': '${Menksoft.INIT_RA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.WA}${Unicode.O}': '${Menksoft.INIT_WA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.TSA}${Unicode.O}': '${Menksoft.INIT_TSA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.ZA}${Unicode.O}': '${Menksoft.INIT_ZA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.HAA}${Unicode.O}': '${Menksoft.INIT_HAA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.ZRA}${Unicode.O}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.LHA}${Unicode.O}': '${Menksoft.INIT_LHA}${Menksoft.FINA_O_FVS1}',
  '${Unicode.QA}${Unicode.O}': '${Menksoft.INIT_QA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.GA}${Unicode.O}': '${Menksoft.INIT_GA_TOOTH}${Menksoft.FINA_O_FVS1}',
  '${Unicode.BA}${Unicode.O}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_O_BP}',
  '${Unicode.PA}${Unicode.O}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_O_BP}',
  '${Unicode.FA}${Unicode.O}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_O_BP}',
  '${Unicode.KA}${Unicode.O}': '${Menksoft.INIT_KA}${Menksoft.FINA_O_BP}',
  '${Unicode.KHA}${Unicode.O}': '${Menksoft.INIT_KHA}${Menksoft.FINA_O_BP}',
  '${Unicode.NA}${Unicode.U}': '${Menksoft.INIT_NA_FVS1_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.MA}${Unicode.U}': '${Menksoft.INIT_MA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.LA}${Unicode.U}': '${Menksoft.INIT_LA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.SA}${Unicode.U}': '${Menksoft.INIT_SA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.SHA}${Unicode.U}': '${Menksoft.INIT_SHA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.TA}${Unicode.U}': '${Menksoft.INIT_TA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.CHA}${Unicode.U}': '${Menksoft.INIT_CHA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.JA}${Unicode.U}': '${Menksoft.INIT_JA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.YA}${Unicode.U}': '${Menksoft.INIT_YA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.RA}${Unicode.U}': '${Menksoft.INIT_RA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.WA}${Unicode.U}': '${Menksoft.INIT_WA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.TSA}${Unicode.U}': '${Menksoft.INIT_TSA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.ZA}${Unicode.U}': '${Menksoft.INIT_ZA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.HAA}${Unicode.U}': '${Menksoft.INIT_HAA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.ZRA}${Unicode.U}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.LHA}${Unicode.U}': '${Menksoft.INIT_LHA}${Menksoft.FINA_U_FVS1}',
  '${Unicode.QA}${Unicode.U}': '${Menksoft.INIT_QA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.GA}${Unicode.U}': '${Menksoft.INIT_GA_TOOTH}${Menksoft.FINA_U_FVS1}',
  '${Unicode.BA}${Unicode.U}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_U_FVS1_BP}',
  '${Unicode.PA}${Unicode.U}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_U_FVS1_BP}',
  '${Unicode.FA}${Unicode.U}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_U_FVS1_BP}',
  '${Unicode.KA}${Unicode.U}': '${Menksoft.INIT_KA}${Menksoft.FINA_U_FVS1_BP}',
  '${Unicode.KHA}${Unicode.U}': '${Menksoft.INIT_KHA}${Menksoft.FINA_U_FVS1_BP}',

  // 6. Consonant + OE|UE
  '${Unicode.NA}${Unicode.OE}': '${Menksoft.INIT_NA_FVS1_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.MA}${Unicode.OE}': '${Menksoft.INIT_MA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.LA}${Unicode.OE}': '${Menksoft.INIT_LA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.SA}${Unicode.OE}': '${Menksoft.INIT_SA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.SHA}${Unicode.OE}': '${Menksoft.INIT_SHA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.TA}${Unicode.OE}': '${Menksoft.INIT_TA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.CHA}${Unicode.OE}': '${Menksoft.INIT_CHA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.JA}${Unicode.OE}': '${Menksoft.INIT_JA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.YA}${Unicode.OE}': '${Menksoft.INIT_YA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.RA}${Unicode.OE}': '${Menksoft.INIT_RA_TOOTH}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.WA}${Unicode.OE}': '${Menksoft.INIT_WA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.TSA}${Unicode.OE}': '${Menksoft.INIT_TSA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.ZA}${Unicode.OE}': '${Menksoft.INIT_ZA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.HAA}${Unicode.OE}': '${Menksoft.INIT_HAA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.ZRA}${Unicode.OE}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.LHA}${Unicode.OE}': '${Menksoft.INIT_LHA}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.QA}${Unicode.OE}': '${Menksoft.INIT_QA_FVS2_OU}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.GA}${Unicode.OE}': '${Menksoft.INIT_GA_FVS2_OU}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.BA}${Unicode.OE}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_OE_FVS1_BP}',
  '${Unicode.PA}${Unicode.OE}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_OE_FVS1_BP}',
  '${Unicode.FA}${Unicode.OE}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_OE_FVS1_BP}',
  '${Unicode.KA}${Unicode.OE}': '${Menksoft.INIT_KA}${Menksoft.FINA_OE_FVS1_BP}',
  '${Unicode.KHA}${Unicode.OE}': '${Menksoft.INIT_KHA}${Menksoft.FINA_OE_FVS1_BP}',
  '${Unicode.NA}${Unicode.UE}': '${Menksoft.INIT_NA_FVS1_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.MA}${Unicode.UE}': '${Menksoft.INIT_MA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.LA}${Unicode.UE}': '${Menksoft.INIT_LA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.SA}${Unicode.UE}': '${Menksoft.INIT_SA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.SHA}${Unicode.UE}': '${Menksoft.INIT_SHA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.TA}${Unicode.UE}': '${Menksoft.INIT_TA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.CHA}${Unicode.UE}': '${Menksoft.INIT_CHA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.JA}${Unicode.UE}': '${Menksoft.INIT_JA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.YA}${Unicode.UE}': '${Menksoft.INIT_YA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.RA}${Unicode.UE}': '${Menksoft.INIT_RA_TOOTH}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.WA}${Unicode.UE}': '${Menksoft.INIT_WA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.TSA}${Unicode.UE}': '${Menksoft.INIT_TSA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.ZA}${Unicode.UE}': '${Menksoft.INIT_ZA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.HAA}${Unicode.UE}': '${Menksoft.INIT_HAA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.ZRA}${Unicode.UE}': '${Menksoft.INIT_ZRA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.LHA}${Unicode.UE}': '${Menksoft.INIT_LHA}${Menksoft.FINA_UE_FVS1}',
  '${Unicode.QA}${Unicode.UE}': '${Menksoft.INIT_QA_FVS2_OU}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.GA}${Unicode.UE}': '${Menksoft.INIT_GA_FVS2_OU}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.BA}${Unicode.UE}': '${Menksoft.INIT_BA_TOOTH}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.PA}${Unicode.UE}': '${Menksoft.INIT_PA_TOOTH}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.FA}${Unicode.UE}': '${Menksoft.INIT_FA_TOOTH}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.KA}${Unicode.UE}': '${Menksoft.INIT_KA}${Menksoft.FINA_UE_FVS1_BP}',
  '${Unicode.KHA}${Unicode.UE}': '${Menksoft.INIT_KHA}${Menksoft.FINA_UE_FVS1_BP}',

  // 7. DA + Vowel
  '${Unicode.DA}${Unicode.A}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_A}',
  '${Unicode.DA}${Unicode.E}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_E}',
  '${Unicode.DA}${Unicode.EE}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_EE}',
  '${Unicode.DA}${Unicode.I}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_I}',
  '${Unicode.DA}${Unicode.O}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_O_FVS1}',
  '${Unicode.DA}${Unicode.U}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_U_FVS1}',
  '${Unicode.DA}${Unicode.OE}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_OE_FVS1}',
  '${Unicode.DA}${Unicode.UE}': '${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_UE_FVS1}',

  // 8. SHA + I
  '${Unicode.SHA}${Unicode.I}': '${Menksoft.INIT_SHA_TOOTH}${Menksoft.FINA_I}',
};

const _fixedSuffixes = {
  // A
  '${Unicode.MVS}${Unicode.A}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.FINA_A_MVS}',
  // E
  '${Unicode.MVS}${Unicode.E}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.FINA_E_MVS}',
  // ACHA
  '${Unicode.MVS}${Unicode.A}${Unicode.CHA}${Unicode.A}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_A_FVS1}${Menksoft.MEDI_CHA}${Menksoft.FINA_A}',
  // ACHAGAN
  '${Unicode.MVS}${Unicode.A}${Unicode.CHA}${Unicode.A}${Unicode.GA}${Unicode.A}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_A_FVS1}${Menksoft.MEDI_CHA}${Menksoft.MEDI_A}${Menksoft.MEDI_GA_FVS1_STEM}${Menksoft.MEDI_A}${Menksoft.FINA_NA}',
  // I
  '${Unicode.MVS}${Unicode.I}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.ISOL_I_FVS1}',
  // IYAR
  '${Unicode.MVS}${Unicode.I}${Unicode.YA}${Unicode.A}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_I_FVS1}${Menksoft.MEDI_YA_FVS1}${Menksoft.MEDI_A}${Menksoft.FINA_RA}',
  // IYER
  '${Unicode.MVS}${Unicode.I}${Unicode.YA}${Unicode.E}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_I_FVS1}${Menksoft.MEDI_YA_FVS1}${Menksoft.MEDI_E}${Menksoft.FINA_RA}',
  // IYAN
  '${Unicode.MVS}${Unicode.I}${Unicode.YA}${Unicode.A}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_I_FVS1}${Menksoft.MEDI_YA_FVS1}${Menksoft.MEDI_A}${Menksoft.FINA_NA}',
  // IYEN
  '${Unicode.MVS}${Unicode.I}${Unicode.YA}${Unicode.E}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_I_FVS1}${Menksoft.MEDI_YA_FVS1}${Menksoft.MEDI_E}${Menksoft.FINA_NA}',
  // U
  '${Unicode.MVS}${Unicode.U}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.ISOL_U_FVS1}',
  // UE
  '${Unicode.MVS}${Unicode.UE}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.ISOL_UE_FVS1}',
  // UN
  '${Unicode.MVS}${Unicode.U}${Unicode.NA}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_U_FVS1}${Menksoft.FINA_NA}',
  // UEN
  '${Unicode.MVS}${Unicode.UE}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_UE_FVS1}${Menksoft.FINA_NA}',
  // UD
  '${Unicode.MVS}${Unicode.U}${Unicode.DA}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_U_FVS1}${Menksoft.FINA_DA}',
  // UED
  '${Unicode.MVS}${Unicode.UE}${Unicode.DA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_UE_FVS1}${Menksoft.FINA_DA}',
  // CHU
  '${Unicode.MVS}${Unicode.CHA}${Unicode.U}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_CHA}${Menksoft.FINA_U}',
  // CHUE
  '${Unicode.MVS}${Unicode.CHA}${Unicode.UE}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_CHA}${Menksoft.FINA_UE}',
  // TU
  '${Unicode.MVS}${Unicode.TA}${Unicode.U}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_TA_STEM}${Menksoft.FINA_U}',
  // TUE
  '${Unicode.MVS}${Unicode.TA}${Unicode.UE}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_TA_STEM}${Menksoft.FINA_UE}',
  // TUER
  '${Unicode.MVS}${Unicode.TA}${Unicode.UE}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_TA_STEM}${Menksoft.MEDI_UE}${Menksoft.FINA_RA}',
  // TUENI
  '${Unicode.MVS}${Unicode.TA}${Unicode.UE}${Unicode.NA}${Unicode.I}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_TA_STEM}${Menksoft.MEDI_UE}${Menksoft.MEDI_NA_FVS1_TOOTH}${Menksoft.FINA_I}',
  // YUEGEN
  '${Unicode.MVS}${Unicode.YA}${Unicode.UE}${Unicode.GA}${Unicode.E}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_YA}${Menksoft.MEDI_UE}${Menksoft.MEDI_GA_FVS2}${Menksoft.MEDI_E}${Menksoft.FINA_NA}',
  // LUEGE
  '${Unicode.MVS}${Unicode.LA}${Unicode.UE}${Unicode.GA}${Unicode.E}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_LA_STEM_LONG}${Menksoft.MEDI_UE}${Menksoft.MEDI_GA_FVS2}${Menksoft.FINA_E_BP}',
  // NUEGUED
  '${Unicode.MVS}${Unicode.NA}${Unicode.UE}${Unicode.GA}${Unicode.UE}${Unicode.DA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_NA_STEM}${Menksoft.MEDI_UE}${Menksoft.MEDI_GA_FVS2_OU}${Menksoft.MEDI_UE_BP}${Menksoft.FINA_DA}',
  // NUEGEN
  '${Unicode.MVS}${Unicode.NA}${Unicode.UE}${Unicode.GA}${Unicode.E}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_NA_STEM}${Menksoft.MEDI_UE}${Menksoft.MEDI_GA_FVS2}${Menksoft.MEDI_E}${Menksoft.FINA_NA}',
  // YUEM
  '${Unicode.MVS}${Unicode.YA}${Unicode.UE}${Unicode.MA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_YA}${Menksoft.MEDI_UE}${Menksoft.FINA_MA}',
  // YUEMSEN
  '${Unicode.MVS}${Unicode.YA}${Unicode.UE}${Unicode.MA}${Unicode.SA}${Unicode.E}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_YA}${Menksoft.MEDI_UE}${Menksoft.MEDI_MA_STEM_LONG}${Menksoft.MEDI_SA_TOOTH}${Menksoft.MEDI_E}${Menksoft.FINA_NA}',
  // QU
  '${Unicode.MVS}${Unicode.QA}${Unicode.UE}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_QA_FVS2_OU}${Menksoft.FINA_UE_FVS2_BP}',
  // YI
  '${Unicode.MVS}${Unicode.YA}${Unicode.I}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_YA_FVS1}${Menksoft.FINA_I}',
  // YIN
  '${Unicode.MVS}${Unicode.YA}${Unicode.I}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_YA_FVS1}${Menksoft.MEDI_I}${Menksoft.FINA_NA}',
  // DAGAN
  '${Unicode.MVS}${Unicode.DA}${Unicode.A}${Unicode.GA}${Unicode.A}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_A}${Menksoft.MEDI_GA_FVS1_STEM}${Menksoft.MEDI_A}${Menksoft.FINA_NA}',
  // DEGEN
  '${Unicode.MVS}${Unicode.DA}${Unicode.E}${Unicode.GA}${Unicode.E}${Unicode.NA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_E}${Menksoft.MEDI_GA_FVS2}${Menksoft.MEDI_E}${Menksoft.FINA_NA}',
  // DU
  '${Unicode.MVS}${Unicode.DA}${Unicode.U}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_U}',
  // DUE
  '${Unicode.MVS}${Unicode.DA}${Unicode.UE}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_UE}',
  // DAG
  '${Unicode.MVS}${Unicode.DA}${Unicode.A}${Unicode.GA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_A}${Menksoft.FINA_GA_FVS1}',
  // DEG
  '${Unicode.MVS}${Unicode.DA}${Unicode.E}${Unicode.GA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_E}${Menksoft.FINA_GA}',
  // DAQI
  '${Unicode.MVS}${Unicode.DA}${Unicode.A}${Unicode.QA}${Unicode.I}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_A}${Menksoft.MEDI_QA_FVS2}${Menksoft.FINA_I}',
  // DEQI
  '${Unicode.MVS}${Unicode.DA}${Unicode.E}${Unicode.QA}${Unicode.I}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_E}${Menksoft.MEDI_QA_FVS2}${Menksoft.FINA_I}',
  // DUR
  '${Unicode.MVS}${Unicode.DA}${Unicode.U}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_U}${Menksoft.FINA_RA}',
  // DUER
  '${Unicode.MVS}${Unicode.DA}${Unicode.UE}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_UE}${Menksoft.FINA_RA}',
  // DUNI
  '${Unicode.MVS}${Unicode.DA}${Unicode.U}${Unicode.NA}${Unicode.I}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_U}${Menksoft.MEDI_NA_FVS1_TOOTH}${Menksoft.FINA_I}',
  // DUENI
  '${Unicode.MVS}${Unicode.DA}${Unicode.UE}${Unicode.NA}${Unicode.I}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_UE}${Menksoft.MEDI_NA_FVS1_TOOTH}${Menksoft.FINA_I}',
  // DUGAR
  '${Unicode.MVS}${Unicode.DA}${Unicode.U}${Unicode.GA}${Unicode.A}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_U}${Menksoft.MEDI_GA_FVS1_STEM}${Menksoft.MEDI_A}${Menksoft.FINA_RA}',
  // DUEGER
  '${Unicode.MVS}${Unicode.DA}${Unicode.UE}${Unicode.GA}${Unicode.E}${Unicode.RA}':
      '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.MEDI_UE}${Menksoft.MEDI_GA_FVS2}${Menksoft.MEDI_E}${Menksoft.FINA_RA}',
  // DA
  '${Unicode.MVS}${Unicode.DA}${Unicode.A}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_A}',
  // DE
  '${Unicode.MVS}${Unicode.DA}${Unicode.E}': '${Menksoft.NONBREAKING_SPACE}${Menksoft.INIT_DA_FVS1}${Menksoft.FINA_E}',
};

const _fixedWords = {
  // UU
  '${Unicode.U}${Unicode.U}': '${Menksoft.INIT_U_FVS1}${Menksoft.FINA_U}',
  // UEUE
  '${Unicode.UE}${Unicode.UE}': '${Menksoft.INIT_UE_FVS1}${Menksoft.FINA_UE}',
  // BUEUE
  '${Unicode.BA}${Unicode.UE}${Unicode.UE}': '${Menksoft.INIT_BA_OU}${Menksoft.MEDI_UE_BP}${Menksoft.FINA_UE}',
};
