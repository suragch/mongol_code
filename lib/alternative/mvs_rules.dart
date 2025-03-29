import '../mongol_code.dart';

/// The index is the consonant before the MVS.
///
/// This only applies to forming the A/E separation at the ends of words.
List<int>? applyMvsRule(List<int> word, int index) {
  assert(word.length == index - 2);
  assert(word.last == Unicode.A || word.last == Unicode.E);

  final consonant = word[index];
  final vowel = word[index + 2] == Unicode.A ? Menksoft.FINA_A_MVS : Menksoft.FINA_E_MVS;
  switch (consonant) {
    case Unicode.NA:
      return [Menksoft.MEDI_NA_FVS1_MVS, vowel];
    case Unicode.QA:
      return [Menksoft.MEDI_QA_FVS1_MVS, vowel];
    case Unicode.GA:
      return [Menksoft.MEDI_GA_FVS1_MVS, vowel];
    case Unicode.MA:
      return [Menksoft.MEDI_MA_MVS, vowel];
    case Unicode.LA:
      return [Menksoft.MEDI_LA_MVS, vowel];
    case Unicode.SA:
      return [Menksoft.MEDI_SA_MVS, vowel];
    case Unicode.SHA:
      return [Menksoft.MEDI_SHA_MVS, vowel];
    case Unicode.JA:
      return [Menksoft.MEDI_JA_MVS, vowel];
    case Unicode.YA:
      return [Menksoft.MEDI_YA_MVS, vowel];
    case Unicode.RA:
      return [Menksoft.MEDI_RA_MVS, vowel];
    case Unicode.WA:
      return [Menksoft.MEDI_WA_MVS, vowel];
    default:
      return null;
  }
}
