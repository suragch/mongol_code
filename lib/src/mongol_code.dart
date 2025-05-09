// import 'gender.dart';
// import 'package:mongol_code/alternative/convert.dart';

import 'location.dart';
import 'menksoft.dart';
// import 'menksoft_word.dart';
import 'mongol_word.dart';
import 'unicode.dart';

/// Mongol Code
///
/// Updated for Unicode 10.0 standards
/// http://unicode.org/charts/PDF/U1800.pdf
/// Deviating from Unicode 10.0 for
///    - MONGOLIAN LETTER GA first and second form final (matching DS01, needed to
///     break context) (So words with only I default to feminine. Menksoft also
///     does this.)
///    - MONGOLIAN LETTER I, third medial form. Undefined in Unicode 10. This is a
///     single tooth I after a vowel. Needed to break context. Menksoft also
///     does this.
///
/// The purpose of this class is to render Unicode text into glyphs
/// that can be displayed on all versions of Android. It solves the
/// problem of Mongolian script not being supported before Android 6.0,
/// and problems with Unicode rendering after Android 6.0.
///
/// Current version needs to be used with Menksoft font glyphs located
/// in the PUA starting at \uE234. It is recommended that all external
/// text use Unicode. However, Menksoft code can also be converted back
/// into Unicode.
class MongolCode {
  // Singleton
  MongolCode._privateConstructor();

  static final MongolCode instance = MongolCode._privateConstructor();

  // strange exception where the first UE does not get a long tooth
  // static const String _BUU_EXCEPTION = '\u182A\u1826\u1826';

  // String unicodeToMenksoft(String inputString) {
  //   return convertUnicodeToMenksoft(inputString);
  //   // final menksoftWithSpacingChars = unicodeToMenksoftSameIndex(inputString);
  //   // return _stripControlChars(menksoftWithSpacingChars);
  // }

  // String _stripControlChars(String stringWithControlChars) {
  //   final length = stringWithControlChars.length;
  //   final strippedString = StringBuffer();
  //   for (var i = 0; i < length; i++) {
  //     if (!_shouldBeStripped(stringWithControlChars, i)) {
  //       strippedString.writeCharCode(stringWithControlChars.codeUnitAt(i));
  //     }
  //   }
  //   return strippedString.toString();
  // }

  // bool _shouldBeStripped(String text, int index) {
  //   final thisChar = text.codeUnitAt(index);
  //   //noinspection SimplifiableIfStatement
  //   if (_isNonPrintingChar(thisChar)) {
  //     // old Menksoft code (in PUA region) context doesn't need
  //     // Unicode control characters. But keep control characters
  //     // in the context of Unicode text. (This allows font to render
  //     // TodoScript text.)
  //     return (index != 0 && _isPuaChar(text.codeUnitAt(index - 1)) ||
  //         index != text.length - 1 && _isPuaChar(text.codeUnitAt(index + 1)));
  //   }
  //   return false;
  // }

  // bool _isPuaChar(int codeUnit) {
  //   return codeUnit >= 0xE000 && codeUnit <= 0xF8FF;
  // }

  // bool _isNonPrintingChar(int codeUnit) {
  //   return codeUnit == Unicode.MVS ||
  //       codeUnit == Unicode.ZWJ ||
  //       codeUnit == Unicode.ZWNJ ||
  //       // codeUnit == Unicode.WJ ||
  //       codeUnit == Unicode.FVS1 ||
  //       codeUnit == Unicode.FVS2 ||
  //       codeUnit == Unicode.FVS3;
  // }

  String unicodeToMenksoftSameIndex(String inputString) {
    if (inputString.isEmpty) return '';

    final outputString = <int>[];
    final mongolWord = <int>[];

    // Loop through characters in string
    final length = inputString.length;
    for (var i = 0; i < length; i++) {
      final codeUnit = inputString.codeUnitAt(i);
      if (isMongolian(codeUnit)) {
        mongolWord.add(codeUnit);
        continue;
      }

      if (mongolWord.length > 0) {
        _appendMongolWord(outputString, mongolWord);
        mongolWord.clear();
      }

      // NNBS starts a new Mongol word but is not itself a Mongol char
      if (codeUnit == Unicode.NNBS) {
        mongolWord.add(Unicode.NNBS);
        continue;
      }

      if (_isConvertiblePunctuation(codeUnit)) {
        final menksoftPunctuation = MongolWord.convertPunctuationToMenksoftCode(codeUnit);
        outputString.add(menksoftPunctuation);
        continue;
      }

      // non-Mongol character
      outputString.add(codeUnit);
    }

    // Add any final substring
    if (mongolWord.length > 0) _appendMongolWord(outputString, mongolWord);

    return outputString.toString();
  }

  void _appendMongolWord(List<int> outputString, List<int> mongolWord) {
    final renderedWord = MongolWord(mongolWord).convertToMenksoftCode();
    outputString.addAll(renderedWord);
  }

  // String menksoftToUnicode(String inputString) {
  //   return inputString;
  //   // if (inputString.isEmpty) return '';

  //   // final outputString = StringBuffer();
  //   // final menksoftWord = StringBuffer();

  //   // // Loop through characters in string
  //   // final length = inputString.length;
  //   // for (var i = 0; i < length; i++) {
  //   //   final codeUnit = inputString.codeUnitAt(i);
  //   //   if (isMenksoft(codeUnit) && !Menksoft.isMenksoftSpace(codeUnit)) {
  //   //     menksoftWord.writeCharCode(codeUnit);
  //   //     continue;
  //   //   }

  //   //   if (menksoftWord.length > 0) {
  //   //     _appendMenksoftWord(outputString, menksoftWord);
  //   //     menksoftWord.clear();
  //   //   }

  //   //   // A space starts a new Mongol word but is not itself a Mongol char
  //   //   if (Menksoft.isMenksoftSpace(codeUnit)) {
  //   //     menksoftWord.writeCharCode(codeUnit);
  //   //     continue;
  //   //   }

  //   //   // non-Menksoft character
  //   //   outputString.writeCharCode(codeUnit);
  //   // }

  //   // // Add any final substring
  //   // if (menksoftWord.length > 0) {
  //   //   _appendMenksoftWord(outputString, menksoftWord);
  //   // }

  //   // return outputString.toString();
  // }

  // void _appendMenksoftWord(StringBuffer outputString, StringBuffer menksoftWord) {
  //   final unicodeWord = MenksoftWord(menksoftWord.toString()).convertToUnicode();
  //   outputString.write(unicodeWord);
  // }

  static Location getLocation(String textBefore, String textAfter) {
    var beforeIsMongolian = false;
    var afterIsMongolian = false;

    var length = textBefore.length;
    if (length > 0 && isMongolian(textBefore.codeUnitAt(length - 1))) {
      beforeIsMongolian = true;
    }

    length = textAfter.length;

    for (var i = 0; i < length; i++) {
      final currentChar = textAfter.codeUnitAt(i);
      if (isFVS(currentChar) || currentChar == Unicode.MVS) {
        continue;
      } else if (isMongolian(currentChar)) {
        afterIsMongolian = true;
      }
      break;
    }

    if (beforeIsMongolian && afterIsMongolian) {
      return Location.MEDIAL;
    } else if (!beforeIsMongolian && afterIsMongolian) {
      return Location.INITIAL;
    } else if (beforeIsMongolian) {
      return Location.FINAL;
    } else {
      return Location.ISOLATE;
    }
  }

  static bool isMenksoft(int codeUnit) {
    return codeUnit >= Menksoft.MENKSOFT_START && codeUnit <= Menksoft.MENKSOFT_END;
  }

  bool _isConvertiblePunctuation(int codeUnit) {
    return _isVerticalPresentationForm(codeUnit) ||
        _isMongolianPunctuation(codeUnit) ||
        _isMongolianDigit(codeUnit) ||
        codeUnit == Unicode.MIDDLE_DOT ||
        codeUnit == Unicode.REFERENCE_MARK ||
        codeUnit == Unicode.QUESTION_EXCLAMATION_MARK ||
        codeUnit == Unicode.EXCLAMATION_QUESTION_MARK ||
        codeUnit == Unicode.PUNCTUATION_X;
  }

  bool _isVerticalPresentationForm(int codeUnit) {
    return (codeUnit >= Unicode.VERTICAL_COMMA && codeUnit <= Unicode.VERTICAL_RIGHT_SQUARE_BRACKET);
  }

  bool _isMongolianPunctuation(int codeUnit) {
    return (codeUnit >= Unicode.MONGOLIAN_BIRGA && codeUnit <= Unicode.MONGOLIAN_MANCHU_FULL_STOP);
  }

  bool _isMongolianDigit(int codeUnit) {
    return (codeUnit >= Unicode.MONGOLIAN_DIGIT_ZERO && codeUnit <= Unicode.MONGOLIAN_DIGIT_NINE);
  }

  static bool isVowel(int codeUnit) {
    return (codeUnit >= Unicode.A && codeUnit <= Unicode.EE);
  }

  static bool isMasculineVowel(int codeUnit) {
    return (codeUnit == Unicode.A || codeUnit == Unicode.O || codeUnit == Unicode.U);
  }

  static bool isFeminineVowel(int codeUnit) {
    return (codeUnit == Unicode.E || codeUnit == Unicode.EE || codeUnit == Unicode.OE || codeUnit == Unicode.UE);
  }

  static bool isConsonant(int codeUnit) {
    return (codeUnit >= Unicode.NA && codeUnit <= Unicode.CHI);
  }

  static bool isFVS(int codeUnit) {
    return (codeUnit >= Unicode.FVS1 && codeUnit <= Unicode.FVS3);
  }

  /// Test if character is Mongolian
  /// Sibe/Manchu/Aligali are currently undefined (may or may not be handled in the future)
  ///
  /// @param character the character to test
  /// @return true if Mongolian/TodoScript letters, MVS, FVS1-3, NIRUGU, ZWJ, ZWNJ, (but not NNBS)
  static bool isMongolian(int codeUnit) {
    return (_isBasicMongolianAlphabet(codeUnit) ||
        isTodoAlphabet(codeUnit) ||
        (codeUnit >= Unicode.MONGOLIAN_NIRUGU && codeUnit <= Unicode.MVS) ||
        codeUnit == Unicode.ZWJ ||
        codeUnit == Unicode.ZWNJ);
  }

  static bool _isBasicMongolianAlphabet(int codeUnit) {
    return codeUnit >= Unicode.A && codeUnit <= Unicode.CHI;
  }

  static bool isTodoAlphabet(int codeUnit) {
    return codeUnit >= Unicode.TODO_LONG_VOWEL_SIGN && codeUnit <= Unicode.TODO_DZA;
  }

  static bool isBGDRS(int codeUnit) {
    return (codeUnit == Unicode.BA ||
        codeUnit == Unicode.GA ||
        codeUnit == Unicode.DA ||
        codeUnit == Unicode.RA ||
        codeUnit == Unicode.SA);
  }

  /// An MVS (Mongolian Vowel Separator) only appears before an A or E and after certain
  /// characters (usually consonants but could come after O as in CHINO_A (wolf)). This
  /// method tests the preceding [codeUnit] to see whether an MVS could follow it.
  /// Return whether an MVS could follow the given [codeUnit].
  static bool isMvsPrecedingChar(int codeUnit) {
    return (codeUnit == Unicode.NA ||
        codeUnit == Unicode.QA ||
        codeUnit == Unicode.GA ||
        codeUnit == Unicode.MA ||
        codeUnit == Unicode.LA ||
        codeUnit == Unicode.JA ||
        codeUnit == Unicode.YA ||
        codeUnit == Unicode.RA ||
        codeUnit == Unicode.WA ||
        codeUnit == Unicode.O ||
        codeUnit == Unicode.U ||
        codeUnit == Unicode.OE ||
        codeUnit == Unicode.UE);
  }
}
