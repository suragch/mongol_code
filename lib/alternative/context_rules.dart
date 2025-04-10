// import 'package:mongol_code/alternative/models.dart';
// import 'package:mongol_code/mongol_code.dart' show Unicode;
// import 'package:mongol_code/src/menksoft.dart';
// import 'package:mongol_code/src/shape.dart';

// import 'mongolian.dart';

// int? applyContextRules({required List<int> word, required int index, required Position position}) {
//   final unicodeChar = word[index];
//   final previousChar = _prevChar(word, index);
//   switch (unicodeChar) {
//     case Unicode.A:
//       return _applyA(position, previousChar);
//     case Unicode.E:
//       return _applyE(position, previousChar);
//     case Unicode.I:
//       return _applyI(word, index, position, previousChar);
//     case Unicode.O:
//       return _applyO(position, previousChar);
//     case Unicode.U:
//       return _applyU(position, previousChar);
//     case Unicode.OE:
//       return _applyOE(word, index, position, previousChar);
//     case Unicode.UE:
//       return _applyUE(word, index, position, previousChar);
//     case Unicode.EE:
//       return _applyEE(position);
//     case Unicode.NA:
//       return _applyNA(word, index, position, previousChar);
//     case Unicode.ANG:
//       return _applyANG(fvs, position, shape);
//     case Unicode.BA:
//       return _applyBA(fvs, position, shape);
//     case Unicode.PA:
//       return _applyPA(fvs, position, shape);
//     case Unicode.QA:
//       return _applyQA(fvs, position, shape);
//     case Unicode.GA:
//       return _applyGA(fvs, position, shape);
//     case Unicode.MA:
//       return _applyMA(fvs, position, shape);
//     case Unicode.LA:
//       return _applyLA(fvs, position, shape);
//     case Unicode.SA:
//       return _applySA(fvs, position, shape);
//     case Unicode.SHA:
//       return _applySHA(fvs, position, shape);
//     case Unicode.TA:
//       return _applyTA(fvs, position, shape);
//     case Unicode.DA:
//       return _applyDA(fvs, position, shape);
//     case Unicode.CHA:
//       return _applyCHA(fvs, position, shape);
//     case Unicode.JA:
//       return _applyJA(fvs, position, shape);
//     case Unicode.YA:
//       return _applyYA(fvs, position, shape);
//     case Unicode.RA:
//       return _applyRA(fvs, position, shape);
//     case Unicode.WA:
//       return _applyWA(fvs, position, shape);
//     case Unicode.FA:
//       return _applyFA(fvs, position, shape);
//     case Unicode.KA:
//       return _applyKA(fvs, position, shape);
//     case Unicode.KHA:
//       return _applyKHA(fvs, position, shape);
//     case Unicode.TSA:
//       return _applyTSA(fvs, position, shape);
//     case Unicode.ZA:
//       return _applyZA(fvs, position, shape);
//     case Unicode.HAA:
//       return _applyHAA(fvs, position, shape);
//     case Unicode.ZRA:
//       return _applyZRA(fvs, position, shape);
//     case Unicode.LHA:
//       return _applyLHA(fvs, position, shape);
//     case Unicode.ZHI:
//       return _applyZHI(fvs, position, shape);
//     case Unicode.CHI:
//       return _applyCHI(fvs, position, shape);
//     default:
//       return null;
//   }
// }

// int? _nextChar(List<int> word, int index) {
//   if (index + 1 >= word.length) return null;
//   return word[index + 1];
// }

// int? _prevChar(List<int> word, int index) {
//   if (index == 0) return null;
//   return word[index - 1];
// }

// int? _applyA(Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_A;
//     case Position.init:
//       return Menksoft.INIT_A;
//     case Position.medi:
//       return Mongolian.isMcc(previousChar) ? Menksoft.MEDI_A_BP : Menksoft.MEDI_A;
//     case Position.fina:
//       return Mongolian.isMcc(previousChar) ? Menksoft.FINA_A_BP : Menksoft.FINA_A;
//   }
// }

// int? _applyE(Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_E;
//     case Position.init:
//       return Menksoft.INIT_E;
//     case Position.medi:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.MEDI_E_BP : Menksoft.MEDI_E;
//     case Position.fina:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
//   }
// }

// bool _isRoundLetterIncludingQG(int? character) {
//   return Mongolian.isMcc(character) || Mongolian.isMccc(character);
// }

// int? _applyI(List<int> word, int index, Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_I;
//     case Position.init:
//       return Menksoft.INIT_I;
//     case Position.medi:
//       if (_contextCallsForDoubleToothI(word, index)) {
//         return Menksoft.MEDI_I_FVS2;
//       }
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.MEDI_I_BP : Menksoft.MEDI_I;
//     case Position.fina:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
//   }
// }

// bool _contextCallsForDoubleToothI(List<int> word, int index) {
//   final charBelow = _nextChar(word, index);
//   final charAbove = _prevChar(word, index);
//   if (charAbove == null || charBelow == null) return false;
//   if (charBelow == Unicode.I) return false;
//   if (charAbove == Unicode.A || charAbove == Unicode.E || charAbove == Unicode.O || charAbove == Unicode.U) {
//     return true;
//   }
//   // or non long toothed OE/UE
//   return ((charAbove == Unicode.OE || charAbove == Unicode.UE) && !_needsLongToothU(word, index - 1));
// }

// bool _needsLongToothU(List<int> word, int index) {
//   if (index < 0) return false;

//   if (word[index] != Unicode.OE && word[index] != Unicode.UE) {
//     return false;
//   }

//   if (index == 0) return true;
//   if (index == 1) return Mongolian.isConsonant(word[0]);
//   if (index == 2) {
//     return Mongolian.isConsonant(word[0]) && Mongolian.isFVS(word[1]);
//   }

//   return false;
// }

// int? _applyO(Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_O;
//     case Position.init:
//       return Menksoft.INIT_O;
//     case Position.medi:
//       return Mongolian.isMcc(previousChar) ? Menksoft.MEDI_O_BP : Menksoft.MEDI_O;
//     case Position.fina:
//       return Mongolian.isMcc(previousChar) ? Menksoft.FINA_O_BP : Menksoft.FINA_O;
//   }
// }

// int? _applyU(Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_U;
//     case Position.init:
//       return Menksoft.INIT_U;
//     case Position.medi:
//       return Mongolian.isMcc(previousChar) ? Menksoft.MEDI_U_BP : Menksoft.MEDI_U;
//     case Position.fina:
//       return Mongolian.isMcc(previousChar) ? Menksoft.FINA_U_FVS1_BP : Menksoft.FINA_U;
//   }
// }

// int? _applyOE(List<int> word, int index, Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_OE;
//     case Position.init:
//       return Menksoft.INIT_OE;
//     case Position.medi:
//       final isRound = _isRoundLetterIncludingQG(previousChar);
//       if (_needsLongToothU(word, index)) {
//         return isRound ? Menksoft.MEDI_OE_FVS1_BP : Menksoft.MEDI_OE_FVS1;
//       }
//       return isRound ? Menksoft.MEDI_OE_BP : Menksoft.MEDI_OE;
//     case Position.fina:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.FINA_OE_BP : Menksoft.FINA_OE;
//   }
// }

// int? _applyUE(List<int> word, int index, Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_UE;
//     case Position.init:
//       return Menksoft.INIT_UE;
//     case Position.medi:
//       final isRound = _isRoundLetterIncludingQG(previousChar);
//       if (_needsLongToothU(word, index)) {
//         return isRound ? Menksoft.MEDI_UE_FVS1_BP : Menksoft.MEDI_UE_FVS1;
//       }
//       return isRound ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
//     case Position.fina:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
//   }
// }

// int? _applyEE(Position position) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_EE;
//     case Position.init:
//       return Menksoft.INIT_EE;
//     case Position.medi:
//       return Menksoft.MEDI_EE;
//     case Position.fina:
//       return Menksoft.MEDI_EE;
//   }
// }

// int? _applyNA(List<int> word, int index, Position position, int? previousChar) {
//   switch (position) {
//     case Position.isol:
//       return Menksoft.ISOL_NA;
//     case Position.init:
//       return Menksoft.INIT_UE;
//     case Position.medi:
//       final isRound = _isRoundLetterIncludingQG(previousChar);
//       if (_needsLongToothU(word, index)) {
//         return isRound ? Menksoft.MEDI_UE_FVS1_BP : Menksoft.MEDI_UE_FVS1;
//       }
//       return isRound ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
//     case Position.fina:
//       return _isRoundLetterIncludingQG(previousChar) ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
//   }
// }
