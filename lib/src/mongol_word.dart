import 'gender.dart';
import 'location.dart';
import 'menksoft.dart';
import 'mongol_code.dart';
import 'shape.dart';
import 'unicode.dart';

/// A class that handles the conversion of a single Mongolian word from Unicode to Menksoft.
///
/// Assumptions:
/// 1. This is a valid Mongolian word.
/// 2. This is not a suffix or fixed word.
/// 3. MVS will only occur at position 0 or in the standard -a/-e ending.
class MongolWord {
  Gender? _gender;
  late Location _location;
  late int _length;
  late bool _isSuffix;
  late List<int> _inputWord;
  late int _fvs;
  late Shape _glyphShapeBelow;
  late int _firstLetterIndex;
  late int _lastLetterIndex;

  /// mongolWord is unicode
  MongolWord(List<int> mongolWord) {
    _inputWord = mongolWord;
    _gender = Gender.NEUTER;
    _length = mongolWord.length;
    _isSuffix = (mongolWord[0] == Unicode.NNBS);
    _fvs = 0;
    _glyphShapeBelow = Shape.STEM;
    _prepareLocationInfo();
  }

  void _prepareLocationInfo() {
    for (int i = 0; i < _inputWord.length; i++) {
      if (!_isControlChar(_inputWord[i])) {
        _firstLetterIndex = i;
        break;
      }
    }
    for (int i = _inputWord.length - 1; i >= 0; i--) {
      if (!_isControlChar(_inputWord[i])) {
        _lastLetterIndex = i;
        break;
      }
    }
  }

  bool _isControlChar(int char) {
    // FVS or MVS
    return char >= 0x180b && char <= 0x180f;
  }

  Location _getLocation(int currentIndex) {
    if (_firstLetterIndex == _lastLetterIndex) return Location.ISOLATE;
    if (currentIndex <= _firstLetterIndex) return Location.INITIAL;
    if (currentIndex >= _lastLetterIndex) return Location.FINAL;
    return Location.MEDIAL;
  }

  // void _updateLocation(int positionInWord, int charBelow) {
  //   if (positionInWord == 0) {
  //     if (_length == 1 || (_length == 2 && _fvs > 0)) {
  //       _location = Location.ISOLATE;
  //     } else {
  //       _location = Location.INITIAL;
  //     }
  //   } else if (positionInWord == _length - 1 || (positionInWord == _length - 2 && _fvs > 0)) {
  //     if (positionInWord == 1 && _isSuffix) {
  //       _location = Location.ISOLATE;
  //     } else {
  //       _location = Location.FINAL;
  //     }
  //   } else {
  //     if (positionInWord == 1 && _isSuffix) {
  //       _location = Location.INITIAL;
  //     } else if (charBelow == Unicode.MVS) {
  //       // treat character above MVS as a final by default
  //       _location = Location.FINAL;
  //     } else {
  //       _location = Location.MEDIAL;
  //     }
  //   }
  // }

  static int convertPunctuationToMenksoftCode(int punctuationChar) {
    switch (punctuationChar) {
      case Unicode.VERTICAL_COMMA:
        return Menksoft.FULL_WIDTH_COMMA;
      case Unicode.VERTICAL_COLON:
        return Menksoft.COLON;
      case Unicode.VERTICAL_SEMICOLON:
        return Menksoft.SEMICOLON;
      case Unicode.VERTICAL_EXCLAMATION_MARK:
        return Menksoft.EXCLAMATION;
      case Unicode.VERTICAL_QUESTION_MARK:
        return Menksoft.QUESTION;
      case Unicode.VERTICAL_HORIZONTAL_ELLIPSIS:
        return Menksoft.ELLIPSIS;
      case Unicode.VERTICAL_EM_DASH:
        return Menksoft.EM_DASH;
      case Unicode.VERTICAL_EN_DASH:
        return Menksoft.EN_DASH;
      case Unicode.VERTICAL_LEFT_PARENTHESIS:
        return Menksoft.LEFT_PARENTHESIS;
      case Unicode.VERTICAL_RIGHT_PARENTHESIS:
        return Menksoft.RIGHT_PARENTHESIS;
      case Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET:
        return Menksoft.LEFT_TORTOISE_SHELL_BRACKET;
      case Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET:
        return Menksoft.RIGHT_TORTOISE_SHELL_BRACKET;
      case Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET:
        return Menksoft.LEFT_DOUBLE_ANGLE_BRACKET;
      case Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET:
        return Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET;
      case Unicode.VERTICAL_LEFT_ANGLE_BRACKET:
        return Menksoft.LEFT_ANGLE_BRACKET;
      case Unicode.VERTICAL_RIGHT_ANGLE_BRACKET:
        return Menksoft.RIGHT_ANGLE_BRACKET;
      case Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET:
        return Menksoft.LEFT_WHITE_CORNER_BRACKET;
      case Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET:
        return Menksoft.RIGHT_WHITE_CORNER_BRACKET;
      case Unicode.MIDDLE_DOT:
        return Menksoft.MIDDLE_DOT;
      case Unicode.REFERENCE_MARK:
        return Menksoft.REFERENCE_MARK;
      case Unicode.QUESTION_EXCLAMATION_MARK:
        return Menksoft.QUESTION_EXCLAMATION;
      case Unicode.EXCLAMATION_QUESTION_MARK:
        return Menksoft.EXCLAMATION_QUESTION;
      case Unicode.MONGOLIAN_BIRGA:
        return Menksoft.BIRGA;
      case Unicode.MONGOLIAN_ELLIPSIS:
        return Menksoft.ELLIPSIS;
      case Unicode.MONGOLIAN_COMMA:
        return Menksoft.COMMA;
      case Unicode.MONGOLIAN_FULL_STOP:
        return Menksoft.FULL_STOP;
      case Unicode.MONGOLIAN_COLON:
        return Menksoft.COLON;
      case Unicode.MONGOLIAN_FOUR_DOTS:
        return Menksoft.FOUR_DOTS;
      case Unicode.MONGOLIAN_TODO_SOFT_HYPHEN:
        return Menksoft.TODO_SOFT_HYPHEN;
      case Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER:
        return Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER;
      case Unicode.MONGOLIAN_MANCHU_COMMA:
        return Menksoft.MANCHU_COMMA;
      case Unicode.MONGOLIAN_MANCHU_FULL_STOP:
        return Menksoft.MANCHU_FULL_STOP;
      case Unicode.MONGOLIAN_DIGIT_ZERO:
        return Menksoft.ZERO;
      case Unicode.MONGOLIAN_DIGIT_ONE:
        return Menksoft.ONE;
      case Unicode.MONGOLIAN_DIGIT_TWO:
        return Menksoft.TWO;
      case Unicode.MONGOLIAN_DIGIT_THREE:
        return Menksoft.THREE;
      case Unicode.MONGOLIAN_DIGIT_FOUR:
        return Menksoft.FOUR;
      case Unicode.MONGOLIAN_DIGIT_FIVE:
        return Menksoft.FIVE;
      case Unicode.MONGOLIAN_DIGIT_SIX:
        return Menksoft.SIX;
      case Unicode.MONGOLIAN_DIGIT_SEVEN:
        return Menksoft.SEVEN;
      case Unicode.MONGOLIAN_DIGIT_EIGHT:
        return Menksoft.EIGHT;
      case Unicode.MONGOLIAN_DIGIT_NINE:
        return Menksoft.NINE;
      case Unicode.PUNCTUATION_X:
        return Menksoft.X;
      default:
        return punctuationChar;
    }
  }

  String convertToMenksoftCode() {
    final renderedWord = StringBuffer();
    var charBelow = 0;
    var charBelowFvs = 0;

    // start at the bottom of the word and work up (easier to record glyph shape this way)
    for (var i = _length - 1; i >= 0; i--) {
      int currentChar = _inputWord[i];

      _location = _getLocation(i);

      int charAbove = (i > 0) ? _inputWord[i - 1] : 0;

      // handle each letter separately
      switch (currentChar) {
        case Unicode.A:
          _handleA(renderedWord, charAbove);
          break;
        case Unicode.E:
          _handleE(renderedWord, charAbove);
          break;
        case Unicode.I:
          _handleI(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.O:
          _handleO(renderedWord, charAbove);
          break;
        case Unicode.U:
          _handleU(renderedWord, charAbove);
          break;
        case Unicode.OE:
          _handleOE(renderedWord, i, charAbove);
          break;
        case Unicode.UE:
          _handleUE(renderedWord, i, charAbove);
          break;
        case Unicode.EE:
          _handleEE(renderedWord);
          break;
        case Unicode.NA:
          _handleNA(renderedWord, i, charBelow, charBelowFvs);
          break;
        case Unicode.ANG:
          _handleANG(renderedWord);
          break;
        case Unicode.BA:
          _handleBA(renderedWord, charBelow);
          break;
        case Unicode.PA:
          _handlePA(renderedWord, charBelow);
          break;
        case Unicode.QA:
          _handleQA(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.GA:
          _handleGA(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.MA:
          _handleMA(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.LA:
          _handleLA(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.SA:
          _handleSA(renderedWord);
          break;
        case Unicode.SHA:
          _handleSHA(renderedWord);
          break;
        case Unicode.TA:
          _handleTA(renderedWord);
          break;
        case Unicode.DA:
          _handleDA(renderedWord, charBelow);
          break;
        case Unicode.CHA:
          _handleCHA(renderedWord);
          break;
        case Unicode.JA:
          _handleJA(renderedWord, charBelow);
          break;
        case Unicode.YA:
          _handleYA(renderedWord, i, charAbove, charBelow);
          break;
        case Unicode.RA:
          _handleRA(renderedWord);
          break;
        case Unicode.WA:
          _handleWA(renderedWord, charBelow);
          break;
        case Unicode.FA:
          _handleFA(renderedWord, charBelow);
          break;
        case Unicode.KA:
          _handleKA(renderedWord, charBelow);
          break;
        case Unicode.KHA:
          _handleKHA(renderedWord, charBelow);
          break;
        case Unicode.TSA:
          _handleTSA(renderedWord);
          break;
        case Unicode.ZA:
          _handleZA(renderedWord);
          break;
        case Unicode.HAA:
          _handleHAA(renderedWord);
          break;
        case Unicode.ZRA:
          _handleZRA(renderedWord);
          break;
        case Unicode.LHA:
          _handleLHA(renderedWord, i, charAbove);
          break;
        case Unicode.ZHI:
          _handleZHI(renderedWord);
          break;
        case Unicode.CHI:
          _handleCHI(renderedWord);
          break;
        case Unicode.NNBS:
          _handleNNBS(renderedWord);
          break;
        case Unicode.MONGOLIAN_NIRUGU:
          _handleNirugu(renderedWord);
          break;
        case Unicode.ZWJ:
        case Unicode.ZWNJ:
        case Unicode.MVS:
          _handleNonPrintingChar(renderedWord);
          break;
        case Unicode.FVS1:
        case Unicode.FVS2:
        case Unicode.FVS3:
          _handleNonPrintingChar(renderedWord);
          _fvs = currentChar;
          continue;
        default:
          // don't render TodoScript words, the font can do that
          if (MongolCode.isTodoAlphabet(currentChar)) {
            return _inputWord.toString();
          }

          // catch any other characters and just insert them directly
          renderedWord.insertCharCodeAtStart(currentChar);
      }

      charBelow = currentChar;
      charBelowFvs = _fvs;
      _fvs = 0;
    }

    return renderedWord.toString();
  }

  void _handleA(StringBuffer renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_A_FVS1); // left sweeping tail
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_A_FVS2);
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_A); // normal
        }
      case Location.INITIAL:
        if (_isSuffix || _fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_A_FVS1); // A of ACHA   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_A); // normal
        }
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_A_FVS1); // 2 teeth
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_A_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_A); // normal
          }
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_A_FVS1); // left sweeping tail
          _glyphShapeBelow = Shape.STEM;
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_A_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else if (charAbove == Unicode.MVS) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_A_MVS); // MVS
            _glyphShapeBelow = Shape.STEM;
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_A); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        }
    }
  }

  void _handleE(StringBuffer renderedWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_E); // normal
        break;
      case Location.INITIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_E_FVS1); // double tooth
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_E); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_E_BP); // After BPFK
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_E); // normal
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_E_FVS1); // left sweeping tail
          _glyphShapeBelow = Shape.STEM;
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_E_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else if (charAbove == Unicode.MVS) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_E_MVS); // MVS
            _glyphShapeBelow = Shape.STEM;
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_E); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        }
        break;
    }
  }

  void _handleI(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_I_FVS1); // I  *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_I); // normal
        }
        break;
      case Location.INITIAL:
        if (_isSuffix && charBelow == Unicode.YA) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_I_FVS1); // I of IYEN   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_I); // normal
        }
        break;
      case Location.MEDIAL:
        // FVS 1: one short, one long tooth
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I_FVS1);
          break;
        }

        // FVS 2:  Used to override context for NAIMA single tooth I
        // (Undefined in Unicode 10.0)
        if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I); // normal
          break;
        }

        // After BPFK
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I_BP);
          break;
        }

        // *** AI, EI, OI, UI, OEI, UEI
        // medial double tooth I diphthong rule ***
        if (_contextCallsForDoubleToothI(positionInWord, charAbove, charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I_FVS2); // double tooth
          break;
        }

        // normal single tooth I
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I);
        break;
      case Location.FINAL:
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_I_BP); // after BPFK
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_I); // normal
        }
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  bool _contextCallsForDoubleToothI(int positionInWord, int charAbove, int charBelow) {
    if (charBelow == Unicode.I) return false;
    if (charAbove == Unicode.A || charAbove == Unicode.E || charAbove == Unicode.O || charAbove == Unicode.U) {
      return true;
    }
    // or non long toothed OE/UE
    return ((charAbove == Unicode.OE || charAbove == Unicode.UE) &&
        !MongolCode.needsLongToothU(_inputWord, positionInWord - 1));
  }

  void _handleO(StringBuffer renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_O); // O suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_O); // normal
        }
        break;
      case Location.INITIAL:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_O_BP); // O of OO suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_O); // normal
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_O_FVS1); // tooth + O
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_O_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_O); // normal
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_O_FVS1); // round o
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_O_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_O); // normal
          }
        }
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleU(StringBuffer renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_U); // O suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_U); // normal
        }
        break;
      case Location.INITIAL:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_U_BP); // U of UU suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_U); // normal
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_U_FVS1); // tooth + O
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_U_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_U); // normal
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_U_FVS1); // round o
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_U_FVS1_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_U); // normal
          }
        }
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleOE(StringBuffer renderedWord, int positionInWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_OE); // O suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_OE); // normal
        }
        break;
      case Location.INITIAL:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_BP); // O of OO suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_OE); // normal
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_FVS1_BP); // first syllable long tooth OE after BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_FVS1); // first syllable long tooth OE
          }
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_FVS2); // extra tooth for 2 part name
        } else {
          if (MongolCode.needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule (except in suffix) ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_FVS1_BP); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_FVS1); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_OE); // normal
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_OE_FVS1_BP); // round o with tail after BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_OE_FVS1); // round o with tail
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_OE_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_OE); // normal
          }
        }
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleUE(StringBuffer renderedWord, int positionInWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_UE); // O suffix   *** suffix rule ***
        } else if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_UE_FVS1); // like E+UE
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_UE); // normal
        }
        break;
      case Location.INITIAL:
        if (_isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_BP); // U of UU suffix   *** suffix rule ***
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_UE); // normal
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_FVS1_BP); // first syllable long tooth UE after BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_FVS1); // first syllable long tooth UE
          }
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_FVS2); // extra tooth for 2 part name
        } else {
          if (MongolCode.needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule (except in suffix) ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_FVS1_BP); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_FVS1); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_UE); // normal
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_UE_FVS1_BP); // round o with tail after BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_UE_FVS1); // round o with tail
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_UE_BP); // After BPFK
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_UE); // normal
          }
        }
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleEE(StringBuffer renderedWord) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_EE); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_EE); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_EE); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_EE); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleNA(StringBuffer renderedWord, int positionInWord, int charBelow, int charBelowFvs) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_NA); // normal
        break;
      case Location.INITIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_NA_FVS1_STEM); // non-dotted
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_NA_STEM); // normal stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_NA_TOOTH); // normal tooth
          }
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS1_STEM); // dotted stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS1_TOOTH); // dotted tooth
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS2); // MVS
          _glyphShapeBelow = Shape.STEM;
        } else if (_fvs == Unicode.FVS3) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS3); // tod script
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          // *** dot N before vowel rule ***
          if (MongolCode.isVowel(charBelow)) {
            // *** don't dot N if final letter before vowel of compound name ***
            if (positionInWord < _length - 3 && // the next char should not be final either (ie, KINO)
                MongolCode.isFVS(_inputWord.codeUnitAt(positionInWord + 2)) &&
                _isTwoPartNameInitialVowel(charBelow, charBelowFvs)) {
              // This will work for names whose second part starts with
              // A, I, O, U, OE, and UE. But it won't work if it starts
              // with E or EE because there are no second medial (FVS1)
              // forms for these letters. A user could insert a ZWJ but
              // they are unlikely to know that.
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_STEM); // non-dotted stem
              } else {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_TOOTH); // non-dotted tooth
              }
            } else {
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS1_STEM); // dotted stem
              } else {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS1_TOOTH); // dotted tooth
              }
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_STEM); // normal non-dotted stem
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_TOOTH); // normal non-dotted tooth
            }
          }
          _glyphShapeBelow = Shape.TOOTH;
        }
        break;
      case Location.FINAL:
        if (charBelow == Unicode.MVS) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_NA_FVS2); // MVS
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_NA); // normal
        }
        _glyphShapeBelow = Shape.STEM;
        break;
    }
  }

  void _handleANG(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_ANG); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.ROUND) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_ANG_ROUND); // before round
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_ANG_STEM); // before stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_ANG_TOOTH); // tooth tooth
        }
        break;
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.ROUND) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ANG_ROUND); // before round
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ANG_STEM); // before stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ANG_TOOTH); // tooth tooth
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_ANG); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleBA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_BA); // normal
        break;
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_BA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_BA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_BA_TOOTH); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_BA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_BA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_BA_TOOTH); // normal
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_BA_FVS1); // o with left sweep
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_BA); // normal
        }
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handlePA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_PA); // normal
        break;
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_PA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_PA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_PA_TOOTH); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_PA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_PA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_PA_TOOTH); // normal
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_PA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleQA(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_QA_FVS1); // dotted feminine
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.ISOL_QA); // normal
        }
        break;
      case Location.INITIAL:
        if (_fvs == Unicode.FVS1) {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS4_OU); // dotted feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS4); // dotted feminine
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS1_STEM); // dotted masculine stem
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS1_TOOTH); // dotted masculine tooth
            }
          }
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_FVS2); // feminine
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_STEM); // normal (masculine) stem
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_QA_TOOTH); // normal (masculine) tooth
            }
          }
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS4_OU); // dotted feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS4); // dotted feminine
            }
            _glyphShapeBelow = Shape.ROUND;
          } else if (MongolCode.isMasculineVowel(charBelow)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS1); // dotted double tooth masculine
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            // consonant
            if (_gender == Gender.NEUTER) {
              _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
            }
            if (_gender == Gender.FEMININE) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS4_CONS); // dotted feminine final before consonant
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS1); // dotted double tooth masculine
            }
            _glyphShapeBelow = Shape.TOOTH;
          }
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS1_MVS); // dotted MVS
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == Unicode.FVS3) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_MVS); // MVS
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FEM); // feminine
            }
            _glyphShapeBelow = Shape.ROUND;
          } else if (MongolCode.isMasculineVowel(charBelow)) {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_STEM); // normal stem (masculine double tooth)
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_TOOTH); // normal tooth (masculine double tooth)
            }
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            // consonant
            // does medial QA before a consonant ever happen
            // in a real word?
            if (_gender == Gender.NEUTER) {
              _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
            }
            if (_gender == Gender.FEMININE || (_gender == Gender.NEUTER && charAbove == Unicode.I)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_FVS2_CONS); // feminine final before consonant
            } else {
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_STEM); // normal stem (masculine double tooth)
              } else {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_QA_TOOTH); // normal tooth (masculine double tooth)
              }
            }
            _glyphShapeBelow = Shape.TOOTH;
          }
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_QA); // normal
        _glyphShapeBelow = Shape.TOOTH;
        break;
    }
  }

  void _handleGA(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_GA); // normal
        break;
      case Location.INITIAL:
        if (_fvs == Unicode.FVS1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_FVS1_STEM); // undotted masculine stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_FVS1_TOOTH); // undotted masculine tooth
          }
          // TODO feminine forms are not _handled.
          // What are they supposed to look like?
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_FVS2); // feminine
            }
          } else {
            if (MongolCode.isConsonant(charBelow)) {
              // *** feminine form before consonant in foreign words ***
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_FVS2); // feminine
            } else if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_STEM); // normal (masculine) stem
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.INIT_GA_TOOTH); // normal (masculine) tooth
            }
          }
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS1_STEM); // dotted masculine stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS1_TOOTH); // dotted masculine tooth
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS3_MVS); // MVS
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == Unicode.FVS3) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_STEM); // feminine before consonant stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_TOOTH); // feminine before consonant tooth
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          // no FVS, just apply context rules
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            // *** feminine GA rule ***
            if (_isOuVowel(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2); // feminine
            }
            _glyphShapeBelow = Shape.ROUND;
          } else if (MongolCode.isMasculineVowel(charBelow)) {
            // *** dotted masculine GA rule ***
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS1_STEM); // dotted masculine stem
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS1_TOOTH); // dotted masculine tooth
            }
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            // consonant
            if (_gender == Gender.NEUTER) {
              _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
            }
            // *** medial GA before consonant rule ***
            if (_gender == Gender.FEMININE ||
                // Defaulting to feminine form for I
                (_gender == Gender.NEUTER && charAbove == Unicode.I) ||
                // treat a G between two consonants as feminine (as in ANGGLI)
                // (but not after Y because Y is like I)
                (charAbove != Unicode.YA && (MongolCode.isConsonant(charAbove) || charAbove == Unicode.ZWJ))) {
              if (charBelow == Unicode.NA || charBelow == Unicode.MA || charBelow == Unicode.LA) {
                final renderedCharBelow = renderedWord.codeUnitAt(0);
                if (renderedCharBelow == Menksoft.FINA_MA ||
                    renderedCharBelow == Menksoft.FINA_LA ||
                    renderedCharBelow == Menksoft.FINA_NA ||
                    renderedCharBelow == Menksoft.MEDI_NA_FVS2) {
                  // make exception for words like CHECHEGM_A
                  renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_STEM); // feminine before consonant stem
                } else {
                  renderedWord.insertCharCodeAtStart(
                    Menksoft.MEDI_GA_FVS2,
                  ); // BIG Fem G looks better for medial N, M, L
                }
              } else if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_STEM); // feminine before consonant stem
              } else {
                renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS2_TOOTH); // feminine before consonant tooth
              }
              _glyphShapeBelow = Shape.ROUND;
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA); // normal (undotted masculine)
              _glyphShapeBelow = Shape.TOOTH;
            }
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_GA_FVS1); // masculine context override (same as default)
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_GA_FVS2); // feminine
        } else if (charBelow == Unicode.MVS) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_GA_FVS3_MVS); // MVS
        } else {
          _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
          if (_gender == Gender.MASCULINE || charAbove == Unicode.ZWJ) {
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_GA); // masculine
          } else {
            // Defaulting to feminine form for I
            renderedWord.insertCharCodeAtStart(Menksoft.FINA_GA_FVS2); // feminine
          }
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
    }
  }

  void _handleMA(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_MA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_MA_STEM_LONG); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_MA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_MA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender != Gender.MASCULINE ||
              // feminine G when between consonants
              (positionInWord > 1 &&
                  (MongolCode.isConsonant(_inputWord.codeUnitAt(positionInWord - 2)) ||
                      _inputWord.codeUnitAt(positionInWord - 2) == Unicode.ZWJ))) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_MA_BP); // tail extended for round letter
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_MA_TOOTH); // tooth
          }
        } else if (_glyphShapeBelow != Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Unicode.MA ||
            charBelow == Unicode.LA ||
            charBelow == Unicode.LHA) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_MA_STEM_LONG); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_MA_TOOTH); // tooth
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_MA); // normal
        _glyphShapeBelow = Shape.STEM;
        break;
    }
  }

  void _handleLA(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_LA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_LA_STEM_LONG); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_LA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender != Gender.MASCULINE ||
              // feminine G when between consonants
              (positionInWord > 1 &&
                  (MongolCode.isConsonant(_inputWord.codeUnitAt(positionInWord - 2)) ||
                      _inputWord.codeUnitAt(positionInWord - 2) == Unicode.ZWJ))) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LA_BP); // tail extended for round letter
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LA_TOOTH); // tooth
          }
        } else if (_glyphShapeBelow != Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Unicode.MA ||
            charBelow == Unicode.LA ||
            charBelow == Unicode.LHA) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LA_STEM_LONG); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LA_TOOTH); // tooth
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_LA); // normal
        _glyphShapeBelow = Shape.STEM;
        break;
    }
  }

  void _handleSA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_SA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_SA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_SA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_SA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_SA_TOOTH); // tooth
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        _glyphShapeBelow = Shape.TOOTH;
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_SA_FVS1); // short tail
          _glyphShapeBelow = Shape.STEM;
        } else if (_fvs == Unicode.FVS2) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_SA_FVS2); // (missing glyph)
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_SA); // normal
        }
        break;
    }
  }

  void _handleSHA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_SHA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_SHA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_SHA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_SHA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_SHA_TOOTH); // tooth
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_SHA); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleTA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_TA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_TA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_TA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_TA_FVS1_STEM); // stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_TA_FVS1_TOOTH); // tooth
          }
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_TA); // normal
          _glyphShapeBelow = Shape.TOOTH;
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_TA); // normal
        _glyphShapeBelow = Shape.STEM;
        break;
    }
  }

  void _handleDA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_DA); // normal
        break;
      case Location.INITIAL:
        if (_fvs == Unicode.FVS1 || _isSuffix) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_DA_FVS1); // left slanting
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_DA_STEM); // stem
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.INIT_DA_TOOTH); // tooth
          }
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_DA_FVS1); // left slanting
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          if (MongolCode.isVowel(charBelow)) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_DA_FVS1); // left slanting
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_DA); // normal (before consonant)
            _glyphShapeBelow = Shape.STEM;
          }
        }
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_DA_FVS1); // left slanting
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_DA); // normal (like o-n)
          _glyphShapeBelow = Shape.STEM;
        }
        break;
    }
  }

  void _handleCHA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_CHA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_CHA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_CHA); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_CHA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleJA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_JA); // normal
        break;
      case Location.INITIAL:
        if (charBelow == Unicode.MVS) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_JA_MVS); // MVS
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_JA_STEM); // stem
        } else {
          // tooth
          // The Qimad font seems to be broken here
          // so temporarily disabling this glyph
          // TODO fix the font, or remove it, or just use
          // this alternate glyph.
          //renderedWord.insertCharCodeAtStart(Glyph.INIT_JA_TOOTH);                 // tooth
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_JA_STEM);
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_JA_MVS); // MVS
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_JA); // normal (before consonant)
          _glyphShapeBelow = Shape.STEM;
        }
        break;
      case Location.FINAL:
        if (charBelow == Unicode.MVS) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_JA_MVS); // MVS
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_JA); // normal
          _glyphShapeBelow = Shape.STEM;
        }
        break;
    }
  }

  void _handleYA(StringBuffer renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_YA); // normal
        break;
      case Location.INITIAL:
        if (_isSuffix && charBelow == Unicode.I) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA); // suffix - no hook
        } else if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_YA_FVS1); // no hook
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_YA); // hook
        }
        break;
      case Location.MEDIAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA_FVS1); // hook
        } else if (_isSuffix && charAbove == Unicode.I) {
          // *** no hook after Y (as in IYEN and IYER) ***
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA); // suffix - no hook
        } else {
          // *** AYI, EYI, OYI, UYI, OEYI, UEYI
          // medial double tooth YI diphthong rule ***
          // Also do this for consonant below.
          if (MongolCode.needsLongToothU(_inputWord, positionInWord - 1) || charAbove == Unicode.I) {
            if (charBelow == Unicode.I || MongolCode.isConsonant(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA); // no hook
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA_FVS1); // hook
            }
          } else if (MongolCode.isVowel(charAbove)) {
            if (charBelow == Unicode.I) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA); // no hook
            } else if (MongolCode.isConsonant(charBelow)) {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_I_FVS2); // double tooth
            } else {
              renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA_FVS1); // hook
            }
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_YA_FVS1); // hook
          }
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_YA); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleRA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_RA); // normal
        break;
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_RA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_RA_TOOTH); // tooth
        }
        break;
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_RA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_RA_TOOTH); // tooth
        }
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_RA); // normal
        _glyphShapeBelow = Shape.STEM;
        break;
    }
  }

  void _handleWA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_WA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_WA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_WA); // normal
        _glyphShapeBelow = Shape.TOOTH;
        break;
      case Location.FINAL:
        if (_fvs == Unicode.FVS1) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_WA_MVS); // round like final o
          _glyphShapeBelow = Shape.STEM;
        } else if (charBelow == Unicode.MVS) {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_WA_MVS); // MVS
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.FINA_WA); // normal
          _glyphShapeBelow = Shape.TOOTH;
        }
        break;
    }
  }

  void _handleFA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_FA); // normal
        break;
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_FA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_FA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_FA_TOOTH); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_FA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_FA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_FA_TOOTH); // normal
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_FA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleKA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_KA); // normal
        break;
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_KA_OU); // OU
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_KA); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KA_TOOTH); // normal
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_KA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleKHA(StringBuffer renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_KHA); // normal
        break;
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_KHA_OU); // OU
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.INIT_KHA); // normal
        }
        break;
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KHA_OU); // OU
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KHA_STEM); // stem
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_KHA_TOOTH); // normal
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_KHA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleTSA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_TSA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_TSA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_TSA); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_TSA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleZA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_ZA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_ZA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ZA); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_ZA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleHAA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_HAA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_HAA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_HAA); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_HAA); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleZRA(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_ZRA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_ZRA); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ZRA); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_ZRA); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM; // ROUND didn't look very good
  }

  void _handleLHA(StringBuffer renderedWord, int positionInWord, int charAbove) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_LHA); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_LHA); // normal
        break;
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LHA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.QA || charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = MongolWord._getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender == Gender.FEMININE) {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LHA_BP); // tail extended for round letter
          } else {
            renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LHA); // normal
          }
        } else {
          renderedWord.insertCharCodeAtStart(Menksoft.MEDI_LHA); // normal
        }
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_LHA); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleZHI(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_ZHI); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_ZHI); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_ZHI); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_ZHI); // normal
        break;
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleCHI(StringBuffer renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.insertCharCodeAtStart(Menksoft.ISOL_CHI); // normal
        break;
      case Location.INITIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.INIT_CHI); // normal
        break;
      case Location.MEDIAL:
        renderedWord.insertCharCodeAtStart(Menksoft.MEDI_CHI); // normal
        break;
      case Location.FINAL:
        renderedWord.insertCharCodeAtStart(Menksoft.FINA_CHI); // normal
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleNNBS(StringBuffer renderedWord) {
    renderedWord.insertCharCodeAtStart(Menksoft.NONBREAKING_SPACE);
  }

  void _handleNirugu(StringBuffer renderedWord) {
    renderedWord.insertCharCodeAtStart(Menksoft.NIRUGU);
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleNonPrintingChar(StringBuffer renderedWord) {
    renderedWord.insertCharCodeAtStart(Unicode.WJ);
  }

  bool _isRoundLetterIncludingQG(int character) {
    return (character == Unicode.BA ||
        character == Unicode.PA ||
        character == Unicode.QA ||
        character == Unicode.GA ||
        character == Unicode.FA ||
        character == Unicode.KA ||
        character == Unicode.KHA);
  }

  bool _isRoundLetter(int character) {
    return (character == Unicode.BA ||
        character == Unicode.PA ||
        character == Unicode.FA ||
        character == Unicode.KA ||
        character == Unicode.KHA);
  }

  bool _isTwoPartNameInitialVowel(int vowel, int fvs) {
    // XXX There is no way to recognize initial E or EE
    return (vowel == Unicode.A && fvs == Unicode.FVS1) ||
        (vowel == Unicode.I && fvs == Unicode.FVS1) ||
        (vowel == Unicode.O && fvs == Unicode.FVS1) ||
        (vowel == Unicode.U && fvs == Unicode.FVS1) ||
        (vowel == Unicode.OE && fvs == Unicode.FVS2) ||
        (vowel == Unicode.UE && fvs == Unicode.FVS2);
  }

  static bool _isOuVowel(int character) {
    return (character >= Unicode.O && character <= Unicode.UE);
  }

  // Starts at the end of the word and works up
  // if mixed genders only reports the first one from the bottom
  // returns null if word does not end in a valid Mongolian character
  static Gender? getGender(String word) {
    // check that word is valid mongolian
    if (word.isEmpty) return null;
    final length = word.length;
    final lastChar = word.codeUnitAt(length - 1);
    if (!MongolCode.isMongolian(lastChar)) return null;
    return _getWordGenderAboveIndex(length, word);
  }

  // assumes that word is valid mongolian
  // this starts at the index and works up
  // If there are mixed genders then only the first will be reported
  // (could add a Gender.MIXED form)
  static Gender _getWordGenderAboveIndex(int index, String word) {
    for (var i = index - 1; i >= 0; i--) {
      if (MongolCode.isMasculineVowel(word.codeUnitAt(i))) {
        return Gender.MASCULINE;
      } else if (MongolCode.isFeminineVowel(word.codeUnitAt(i))) {
        return Gender.FEMININE;
      }
    }
    return Gender.NEUTER;
  }
}
