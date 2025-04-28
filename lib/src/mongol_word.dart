import 'gender.dart';
import 'location.dart';
import 'menksoft.dart';
import 'mongol_code.dart';
import 'shape.dart';
import 'unicode.dart';

const fvs1 = Unicode.FVS1;
const fvs2 = Unicode.FVS2;
const fvs3 = Unicode.FVS3;
const fvs4 = Unicode.FVS4;

/// A class that handles the conversion of a single Mongolian word from Unicode to Menksoft.
///
/// Assumptions:
/// 1. This is a valid Mongolian word.
/// 2. This is not a suffix or fixed word.
class MongolWord {
  Gender? _gender;
  late Location _location;
  late int _length;
  // late bool _isSuffix;
  late List<int> _inputWord;
  late int _fvs;
  late Shape _glyphShapeBelow;
  int _firstLetterIndex = -1;
  int _lastLetterIndex = -1;

  /// mongolWord is unicode
  MongolWord(List<int> mongolWord) {
    _inputWord = mongolWord;
    _gender = Gender.NEUTER;
    _length = mongolWord.length;
    // _isSuffix = (mongolWord[0] == Unicode.NNBS);
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

  List<int> convertToMenksoftCode() {
    if (_firstLetterIndex < 0 || _lastLetterIndex < 0) {
      return [];
    }
    final renderedWord = <int>[];
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

        case Unicode.E:
          _handleE(renderedWord, charAbove);

        case Unicode.I:
          _handleI(renderedWord, i, charAbove, charBelow);

        case Unicode.O:
          _handleO(renderedWord, charAbove);

        case Unicode.U:
          _handleU(renderedWord, charAbove);

        case Unicode.OE:
          _handleOE(renderedWord, i, charAbove);

        case Unicode.UE:
          _handleUE(renderedWord, i, charAbove);

        case Unicode.EE:
          _handleEE(renderedWord);

        case Unicode.NA:
          _handleNA(renderedWord, i, charBelow, charBelowFvs);

        case Unicode.ANG:
          _handleANG(renderedWord);

        case Unicode.BA:
          _handleBA(renderedWord, charBelow);

        case Unicode.PA:
          _handlePA(renderedWord, charBelow);

        case Unicode.QA:
          _handleQA(renderedWord, i, charAbove, charBelow);

        case Unicode.GA:
          _handleGA(renderedWord, i, charAbove, charBelow);

        case Unicode.MA:
          _handleMA(renderedWord, i, charAbove, charBelow);

        case Unicode.LA:
          _handleLA(renderedWord, i, charAbove, charBelow);

        case Unicode.SA:
          _handleSA(renderedWord);

        case Unicode.SHA:
          _handleSHA(renderedWord);

        case Unicode.TA:
          _handleTA(renderedWord);

        case Unicode.DA:
          _handleDA(renderedWord, charBelow);

        case Unicode.CHA:
          _handleCHA(renderedWord);

        case Unicode.JA:
          _handleJA(renderedWord, charBelow);

        case Unicode.YA:
          _handleYA(renderedWord, i, charAbove, charBelow);

        case Unicode.RA:
          _handleRA(renderedWord);

        case Unicode.WA:
          _handleWA(renderedWord, charBelow);

        case Unicode.FA:
          _handleFA(renderedWord, charBelow);

        case Unicode.KA:
          _handleKA(renderedWord, charBelow);

        case Unicode.KHA:
          _handleKHA(renderedWord, charBelow);

        case Unicode.TSA:
          _handleTSA(renderedWord);

        case Unicode.ZA:
          _handleZA(renderedWord);

        case Unicode.HAA:
          _handleHAA(renderedWord);

        case Unicode.ZRA:
          _handleZRA(renderedWord);

        case Unicode.LHA:
          _handleLHA(renderedWord, i, charAbove);

        case Unicode.ZHI:
          _handleZHI(renderedWord);

        case Unicode.CHI:
          _handleCHI(renderedWord);
        case Unicode.NNBS:
          _handleNNBS(renderedWord);
        case Unicode.MONGOLIAN_NIRUGU:
          _handleNirugu(renderedWord);
        case Unicode.ZWJ:
        case Unicode.ZWNJ:
          _handleNonPrintingChar(renderedWord);
        case Unicode.MVS:
          _handleMvs(renderedWord, i);
        case Unicode.FVS1:
        case Unicode.FVS2:
        case Unicode.FVS3:
        case Unicode.FVS4:
          _handleNonPrintingChar(renderedWord);
          _fvs = currentChar;
          continue;
        default:
          // catch any other characters and just insert them directly
          renderedWord.add(currentChar);
      }

      charBelow = currentChar;
      charBelowFvs = _fvs;
      _fvs = 0;
    }

    // Glyphs were added from the bottom up so need to reverse it before returning.
    return renderedWord.reversed.toList();
  }

  void _handleA(List<int> renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_A_FVS1);
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.ISOL_A_FVS2);
        } else if (_fvs == fvs3) {
          renderedWord.add(Menksoft.ISOL_A);
        } else {
          renderedWord.add(Menksoft.ISOL_A);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_A_FVS1);
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.INIT_A);
        } else {
          renderedWord.add(Menksoft.INIT_A);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_A_FVS1);
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.MEDI_A_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_A); // normal
          }
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_A_FVS1); // left sweeping tail
          _glyphShapeBelow = Shape.STEM;
        } else if (charAbove == fvs2) {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.FINA_A_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.FINA_A); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        } else if (charAbove == Unicode.MVS) {
          renderedWord.add(Menksoft.FINA_A_MVS); // MVS
          _glyphShapeBelow = Shape.STEM;
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.FINA_A_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.FINA_A); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        }
    }
  }

  void _handleE(List<int> renderedWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_E_FVS1); // double tooth
        } else {
          renderedWord.add(Menksoft.ISOL_E); // normal
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_E_FVS1); // double tooth
        } else {
          renderedWord.add(Menksoft.INIT_E); // normal
        }
      case Location.MEDIAL:
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.add(Menksoft.MEDI_E_BP); // After BPFK
        } else {
          renderedWord.add(Menksoft.MEDI_E); // normal
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_E_FVS1); // left sweeping tail
          _glyphShapeBelow = Shape.STEM;
        } else if (_fvs == fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_E_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.FINA_E); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        } else if (charAbove == Unicode.MVS) {
          renderedWord.add(Menksoft.FINA_E_MVS); // MVS
          _glyphShapeBelow = Shape.STEM;
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_E_BP); // after BPFK
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.FINA_E); // normal
            _glyphShapeBelow = Shape.STEM;
          }
        }
    }
  }

  void _handleI(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_I_FVS1);
        } else {
          // FVS2 is defined as dotted I but no glyph so using normal
          renderedWord.add(Menksoft.ISOL_I); // normal
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_I_FVS1);
        } else {
          renderedWord.add(Menksoft.INIT_I);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_I_FVS1);
          break;
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.MEDI_I_FVS2);
          break;
        }
        // After BPFK
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.add(Menksoft.MEDI_I_BP);
          break;
        }
        // *** AI, EI, OI, UI, OEI, UEI
        // medial double tooth I diphthong rule ***
        if (_contextCallsForDoubleToothI(positionInWord, charAbove, charBelow)) {
          renderedWord.add(Menksoft.MEDI_I_FVS2); // double tooth
          break;
        }
        // normal single tooth I
        renderedWord.add(Menksoft.MEDI_I);
      case Location.FINAL:
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.add(Menksoft.FINA_I_BP);
        } else {
          renderedWord.add(Menksoft.FINA_I);
        }
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  bool _contextCallsForDoubleToothI(int positionInWord, int charAbove, int charBelow) {
    if (charBelow == Unicode.I) return false;
    if (charAbove == Unicode.A || charAbove == Unicode.E || charAbove == Unicode.O || charAbove == Unicode.U) {
      return true;
    }
    // or non long toothed OE/UE
    return ((charAbove == Unicode.OE || charAbove == Unicode.UE) && !_needsLongToothU(_inputWord, positionInWord - 1));
  }

  bool _needsLongToothU(List<int> word, int index) {
    if (index < 0) return false;

    if (word[index] != Unicode.OE && word[index] != Unicode.UE) {
      return false;
    }

    if (index == 0) return true;

    if (index == 1) {
      if (MongolCode.isConsonant(word[0])) {
        return true;
      }
    }

    if (index == 2) {
      return MongolCode.isConsonant(word[0]) && MongolCode.isFVS(word[1]);
    }

    return false;
  }

  void _handleO(List<int> renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_O);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_O);
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_O_FVS1); // tooth + O
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.MEDI_O_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_O); // normal
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_O_FVS1); // round o
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.FINA_O_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.FINA_O); // normal
          }
        }
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleU(List<int> renderedWord, int charAbove) {
    _gender = Gender.MASCULINE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_U_FVS1);
        } else {
          // FVS2 is defined as dotted U but no glyph so using normal
          renderedWord.add(Menksoft.ISOL_U); // normal
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_U_FVS1);
        } else {
          renderedWord.add(Menksoft.INIT_U);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_U_FVS1); // tooth + O
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.MEDI_U_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_U); // normal
          }
        }

      case Location.FINAL:
        if (_fvs == fvs1) {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.FINA_U_FVS1_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.FINA_U_FVS1); // round o
          }
        } else {
          renderedWord.add(Menksoft.FINA_U);
        }
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleOE(List<int> renderedWord, int positionInWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_OE_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_OE);
        }
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_OE);
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.MEDI_OE_FVS1_BP); // first syllable long tooth OE after BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_OE_FVS1); // first syllable long tooth OE
          }
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.MEDI_OE_FVS2); // extra tooth for 2 part name
        } else {
          if (_needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.add(Menksoft.MEDI_OE_FVS1_BP); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.add(Menksoft.MEDI_OE_FVS1); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.MEDI_OE_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_OE); // normal
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_OE_FVS1_BP); // round o with tail after BPFK
          } else {
            renderedWord.add(Menksoft.FINA_OE_FVS1); // round o with tail
          }
        } else if (_fvs == fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_OE_FVS2_BP);
          } else {
            renderedWord.add(Menksoft.FINA_OE_FVS2);
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_OE_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.FINA_OE); // normal
          }
        }
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleUE(List<int> renderedWord, int positionInWord, int charAbove) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_UE_FVS1); // like E+UE
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.ISOL_UE_FVS2);
        } else {
          renderedWord.add(Menksoft.ISOL_UE); // normal
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_UE_FVS1);
        } else {
          renderedWord.add(Menksoft.INIT_UE);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.MEDI_UE_FVS1_BP); // first syllable long tooth UE after BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_UE_FVS1); // first syllable long tooth UE
          }
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.MEDI_UE_FVS2); // extra tooth for 2 part name
        } else {
          if (_needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.add(Menksoft.MEDI_UE_FVS1_BP); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.add(Menksoft.MEDI_UE_FVS1); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.MEDI_UE_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.MEDI_UE); // normal
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_UE_FVS1_BP); // round o with tail after BPFK
          } else {
            renderedWord.add(Menksoft.FINA_UE_FVS1); // round o with tail
          }
        } else if (_fvs == fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_UE_FVS2_BP);
          } else {
            renderedWord.add(Menksoft.FINA_UE_FVS2);
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.FINA_UE_BP); // After BPFK
          } else {
            renderedWord.add(Menksoft.FINA_UE); // normal
          }
        }
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleEE(List<int> renderedWord) {
    _gender = Gender.FEMININE;
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_EE);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_EE);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_EE);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_EE);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleNA(List<int> renderedWord, int positionInWord, int charBelow, int charBelowFvs) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_NA_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_NA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_NA_FVS1_STEM);
          } else {
            renderedWord.add(Menksoft.INIT_NA_FVS1_TOOTH);
          }
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_NA_STEM); // normal stem
          } else {
            renderedWord.add(Menksoft.INIT_NA_TOOTH); // normal tooth
          }
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (charBelow == Unicode.MVS) {
            renderedWord.add(Menksoft.MEDI_NA_FVS1_MVS);
            _glyphShapeBelow = Shape.STEM;
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_NA_FVS1_STEM); // dotted stem
            } else {
              renderedWord.add(Menksoft.MEDI_NA_FVS1_TOOTH); // dotted tooth
            }
            _glyphShapeBelow = Shape.TOOTH;
          }
        } else if (_fvs == fvs2) {
          if (charBelow == Unicode.MVS) {
            renderedWord.add(Menksoft.MEDI_NA_FVS2_MVS);
            _glyphShapeBelow = Shape.STEM;
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_NA_STEM); // normal non-dotted stem
            } else {
              renderedWord.add(Menksoft.MEDI_NA_TOOTH); // normal non-dotted tooth
            }
            _glyphShapeBelow = Shape.TOOTH;
          }
        } else if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_NA_FVS1_MVS);
          _glyphShapeBelow = Shape.STEM;
        } else {
          // *** dot N before vowel rule ***
          if (MongolCode.isVowel(charBelow)) {
            // *** don't dot N if final letter before vowel of compound name ***
            if (positionInWord < _length - 3 && // the next char should not be final either (ie, KINO)
                MongolCode.isFVS(_inputWord[positionInWord + 2]) &&
                _isTwoPartNameInitialVowel(charBelow, charBelowFvs)) {
              // This will work for names whose second part starts with
              // A, I, O, U, OE, and UE. But it won't work if it starts
              // with E or EE because there are no second medial (FVS1)
              // forms for these letters. A user could insert a ZWJ but
              // they are unlikely to know that.
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.add(Menksoft.MEDI_NA_STEM); // non-dotted stem
              } else {
                renderedWord.add(Menksoft.MEDI_NA_TOOTH); // non-dotted tooth
              }
            } else {
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.add(Menksoft.MEDI_NA_FVS1_STEM); // dotted stem
              } else {
                renderedWord.add(Menksoft.MEDI_NA_FVS1_TOOTH); // dotted tooth
              }
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_NA_STEM); // normal non-dotted stem
            } else {
              renderedWord.add(Menksoft.MEDI_NA_TOOTH); // normal non-dotted tooth
            }
          }
          _glyphShapeBelow = Shape.TOOTH;
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_NA_FVS1); // MVS
        } else {
          renderedWord.add(Menksoft.FINA_NA);
        }
        _glyphShapeBelow = Shape.STEM;
    }
  }

  void _handleANG(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_ANG);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.ROUND) {
          renderedWord.add(Menksoft.INIT_ANG_ROUND); // before round
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_ANG_STEM); // before stem
        } else {
          renderedWord.add(Menksoft.INIT_ANG_TOOTH); // tooth tooth
        }
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.ROUND) {
          renderedWord.add(Menksoft.MEDI_ANG_ROUND); // before round
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_ANG_STEM); // before stem
        } else {
          renderedWord.add(Menksoft.MEDI_ANG_TOOTH); // tooth tooth
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_ANG);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleBA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_BA);
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.INIT_BA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_BA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_BA_TOOTH);
        }
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.MEDI_BA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_BA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_BA_TOOTH);
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_BA_FVS1); // o with left sweep
        } else {
          renderedWord.add(Menksoft.FINA_BA);
        }
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handlePA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_PA);
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.INIT_PA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_PA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_PA_TOOTH);
        }
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.MEDI_PA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_PA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_PA_TOOTH); // normal
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_PA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleQA(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_QA_FVS1);
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.ISOL_QA_FVS2);
        } else if (_fvs == fvs4) {
          renderedWord.add(Menksoft.ISOL_QA_FVS4);
        } else {
          renderedWord.add(Menksoft.ISOL_QA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          // dotted masculine
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_QA_FVS1_STEM); // dotted masculine stem
          } else {
            renderedWord.add(Menksoft.INIT_QA_FVS1_TOOTH); // dotted masculine tooth
          }
        } else if (_fvs == fvs2) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.INIT_QA_FVS2_OU); // feminine for OU
          } else {
            renderedWord.add(Menksoft.INIT_QA_FVS2); // feminine
          }
        } else if (_fvs == fvs3) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_QA_STEM); // normal (masculine) stem
          } else {
            renderedWord.add(Menksoft.INIT_QA_TOOTH); // normal (masculine) tooth
          }
        } else if (_fvs == fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.INIT_QA_FVS4_OU);
          } else {
            renderedWord.add(Menksoft.INIT_QA_FVS4);
          }
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.INIT_QA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.add(Menksoft.INIT_QA_FVS2); // feminine
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.INIT_QA_STEM); // normal (masculine) stem
            } else {
              renderedWord.add(Menksoft.INIT_QA_TOOTH); // normal (masculine) tooth
            }
          }
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (charBelow == Unicode.MVS) {
            // dotted masculine MVS
            renderedWord.add(Menksoft.MEDI_QA_FVS1_MVS);
          } else {
            // dotted masculine
            renderedWord.add(Menksoft.MEDI_QA_FVS1);
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == fvs2) {
          if (MongolCode.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.MEDI_QA_FVS2_CONS);
          } else if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.MEDI_QA_FVS2_OU);
          } else {
            renderedWord.add(Menksoft.MEDI_QA_FVS2);
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == fvs3) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.MEDI_QA_STEM); // normal stem (masculine double tooth)
          } else {
            renderedWord.add(Menksoft.MEDI_QA_TOOTH); // normal tooth (masculine double tooth)
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == fvs4) {
          // dotted feminine
          if (MongolCode.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.MEDI_QA_FVS4_CONS);
          } else if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.MEDI_QA_FVS4_OU);
          } else {
            renderedWord.add(Menksoft.MEDI_QA_FVS4);
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_QA_MVS);
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.MEDI_QA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.add(Menksoft.MEDI_QA_FVS2); // feminine
            }
            _glyphShapeBelow = Shape.ROUND;
          } else if (MongolCode.isMasculineVowel(charBelow)) {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_QA_STEM); // normal stem (masculine double tooth)
            } else {
              renderedWord.add(Menksoft.MEDI_QA_TOOTH); // normal tooth (masculine double tooth)
            }
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            // consonant
            // does medial QA before a consonant ever happen
            // in a real word?
            if (_gender == Gender.NEUTER) {
              _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
            }
            if (_gender == Gender.FEMININE || (_gender == Gender.NEUTER && charAbove == Unicode.I)) {
              renderedWord.add(Menksoft.MEDI_QA_FVS2_CONS); // feminine final before consonant
            } else {
              if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.add(Menksoft.MEDI_QA_STEM); // normal stem (masculine double tooth)
              } else {
                renderedWord.add(Menksoft.MEDI_QA_TOOTH); // normal tooth (masculine double tooth)
              }
            }
            _glyphShapeBelow = Shape.TOOTH;
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_QA_FVS1);
        } else {
          renderedWord.add(Menksoft.FINA_QA);
        }
        _glyphShapeBelow = Shape.TOOTH;
    }
  }

  Gender _getWordGenderAboveIndex(int index, List<int> word) {
    for (var i = index - 1; i >= 0; i--) {
      if (MongolCode.isMasculineVowel(word[i])) {
        return Gender.MASCULINE;
      } else if (MongolCode.isFeminineVowel(word[i])) {
        return Gender.FEMININE;
      }
    }
    return Gender.NEUTER;
  }

  void _handleGA(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_GA_FVS1);
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.ISOL_GA_FVS2);
        } else if (_fvs == fvs4) {
          renderedWord.add(Menksoft.ISOL_GA_FVS4);
        } else {
          renderedWord.add(Menksoft.ISOL_GA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_GA_FVS1_STEM); // undotted masculine stem
          } else {
            renderedWord.add(Menksoft.INIT_GA_FVS1_TOOTH); // undotted masculine tooth
          }
        } else if (_fvs == fvs2) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.INIT_GA_FVS2_OU);
          } else {
            renderedWord.add(Menksoft.INIT_GA_FVS2);
          }
        } else if (_fvs == fvs3) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_GA_STEM); // normal (masculine) stem
          } else {
            renderedWord.add(Menksoft.INIT_GA_TOOTH); // normal (masculine) tooth
          }
        } else if (_fvs == fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.INIT_GA_FVS4_OU);
          } else {
            renderedWord.add(Menksoft.INIT_GA_FVS4);
          }
        } else {
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.INIT_GA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.add(Menksoft.INIT_GA_FVS2); // feminine
            }
          } else {
            if (MongolCode.isConsonant(charBelow)) {
              // *** feminine form before consonant in foreign words ***
              renderedWord.add(Menksoft.INIT_GA_FVS2); // feminine
            } else if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.INIT_GA_STEM); // normal (masculine) stem
            } else {
              renderedWord.add(Menksoft.INIT_GA_TOOTH); // normal (masculine) tooth
            }
          }
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (charBelow == Unicode.MVS) {
            renderedWord.add(Menksoft.MEDI_GA_FVS1_MVS); // dotted mvs
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_GA_FVS1_STEM); // dotted masculine stem
            } else {
              renderedWord.add(Menksoft.MEDI_GA_FVS1_TOOTH); // dotted masculine tooth
            }
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == fvs2) {
          if (MongolCode.isVowel(charBelow)) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.MEDI_GA_FVS2_OU);
            } else {
              renderedWord.add(Menksoft.MEDI_GA_FVS2);
            }
          } else {
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_GA_FVS2_STEM);
            } else {
              renderedWord.add(Menksoft.MEDI_GA_FVS2_TOOTH);
            }
          }
          _glyphShapeBelow = Shape.ROUND;
        } else if (_fvs == fvs3) {
          if (charBelow == Unicode.MVS) {
            renderedWord.add(Menksoft.MEDI_GA_FVS3_MVS);
          } else {
            renderedWord.add(Menksoft.MEDI_GA);
          }
          _glyphShapeBelow = Shape.TOOTH;
        } else if (_fvs == fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.MEDI_GA_FVS4_OU);
          } else if (MongolCode.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.MEDI_GA_FVS4_CONS);
          } else {
            renderedWord.add(Menksoft.MEDI_GA_FVS4);
          }
          _glyphShapeBelow = Shape.ROUND;
        } else {
          // no FVS, just apply context rules
          if (MongolCode.isFeminineVowel(charBelow) || charBelow == Unicode.I) {
            // *** feminine GA rule ***
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.MEDI_GA_FVS2_OU); // feminine for OU
            } else {
              renderedWord.add(Menksoft.MEDI_GA_FVS2); // feminine
            }
            _glyphShapeBelow = Shape.ROUND;
          } else if (MongolCode.isMasculineVowel(charBelow)) {
            // *** dotted masculine GA rule ***
            if (_glyphShapeBelow == Shape.STEM) {
              renderedWord.add(Menksoft.MEDI_GA_FVS1_STEM); // dotted masculine stem
            } else {
              renderedWord.add(Menksoft.MEDI_GA_FVS1_TOOTH); // dotted masculine tooth
            }
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            // consonant
            if (_gender == Gender.NEUTER) {
              _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
            }
            // *** medial GA before consonant rule ***
            if (_gender == Gender.FEMININE ||
                // Defaulting to feminine form for I
                (_gender == Gender.NEUTER && charAbove == Unicode.I) ||
                // treat a G between two consonants as feminine (as in ANGGLI)
                // (but not after Y because Y is like I)
                (charAbove != Unicode.YA &&
                    (MongolCode.isConsonant(charAbove) || charAbove == Unicode.MONGOLIAN_NIRUGU))) {
              if (charBelow == Unicode.NA || charBelow == Unicode.MA || charBelow == Unicode.LA) {
                final renderedCharBelow = renderedWord[0];
                if (renderedCharBelow == Menksoft.FINA_MA ||
                    renderedCharBelow == Menksoft.FINA_LA ||
                    renderedCharBelow == Menksoft.FINA_NA ||
                    renderedCharBelow == Menksoft.FINA_NA_FVS1) {
                  // make exception for words like CHECHEGM_A
                  renderedWord.add(Menksoft.MEDI_GA_FVS2_STEM); // feminine before consonant stem
                } else {
                  renderedWord.add(Menksoft.MEDI_GA_FVS2); // BIG Fem G looks better for medial N, M, L
                }
              } else if (_glyphShapeBelow == Shape.STEM) {
                renderedWord.add(Menksoft.MEDI_GA_FVS2_STEM); // feminine before consonant stem
              } else {
                renderedWord.add(Menksoft.MEDI_GA_FVS2_TOOTH); // feminine before consonant tooth
              }
              _glyphShapeBelow = Shape.ROUND;
            } else {
              renderedWord.add(Menksoft.MEDI_GA); // normal (undotted masculine)
              _glyphShapeBelow = Shape.TOOTH;
            }
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_GA_FVS1); // masculine
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.FINA_GA_FVS2); // feminine
        } else if (_fvs == fvs3) {
          renderedWord.add(Menksoft.FINA_GA_FVS3); // dotted masculine
        } else if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_GA_FVS3_MVS); // MVS
        } else {
          _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
          if (_gender == Gender.MASCULINE) {
            renderedWord.add(Menksoft.FINA_GA); // masculine
          } else {
            // Defaulting to feminine form for I
            renderedWord.add(Menksoft.FINA_GA_FVS2); // feminine
          }
        }
        _glyphShapeBelow = Shape.TOOTH;
    }
  }

  void _handleMA(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_MA);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_MA_STEM_LONG);
        } else {
          renderedWord.add(Menksoft.INIT_MA_TOOTH);
        }
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.add(Menksoft.MEDI_MA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender != Gender.MASCULINE ||
              // feminine G when between consonants
              (positionInWord > 1 &&
                  (MongolCode.isConsonant(_inputWord[positionInWord - 2]) ||
                      _inputWord[positionInWord - 2] == Unicode.MONGOLIAN_NIRUGU))) {
            renderedWord.add(Menksoft.MEDI_MA_BP); // tail extended for round letter
          } else {
            renderedWord.add(Menksoft.MEDI_MA_TOOTH); // tooth
          }
        } else if (_glyphShapeBelow != Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Unicode.MA ||
            charBelow == Unicode.LA ||
            charBelow == Unicode.LHA) {
          renderedWord.add(Menksoft.MEDI_MA_STEM_LONG);
        } else {
          renderedWord.add(Menksoft.MEDI_MA_TOOTH); // tooth
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_MA);
        _glyphShapeBelow = Shape.STEM;
    }
  }

  void _handleLA(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_LA);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_LA_STEM_LONG);
        } else {
          renderedWord.add(Menksoft.INIT_LA_TOOTH);
        }
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.add(Menksoft.MEDI_LA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender != Gender.MASCULINE ||
              // feminine G when between consonants
              (positionInWord > 1 &&
                  (MongolCode.isConsonant(_inputWord[positionInWord - 2]) ||
                      _inputWord[positionInWord - 2] == Unicode.MONGOLIAN_NIRUGU))) {
            renderedWord.add(Menksoft.MEDI_LA_BP); // tail extended for round letter
          } else {
            renderedWord.add(Menksoft.MEDI_LA_TOOTH);
          }
        } else if (_glyphShapeBelow != Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Unicode.MA ||
            charBelow == Unicode.LA ||
            charBelow == Unicode.LHA) {
          renderedWord.add(Menksoft.MEDI_LA_STEM_LONG);
        } else {
          renderedWord.add(Menksoft.MEDI_LA_TOOTH);
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_LA);
        _glyphShapeBelow = Shape.STEM;
    }
  }

  void _handleSA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_SA);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_SA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_SA_TOOTH);
        }
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_SA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_SA_TOOTH);
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_SA_FVS1); // short tail
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.add(Menksoft.FINA_SA);
          _glyphShapeBelow = Shape.TOOTH;
        }
    }
  }

  void _handleSHA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_SHA_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_SHA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_SHA_FVS1_STEM);
          } else {
            renderedWord.add(Menksoft.INIT_SHA_FVS1_TOOTH);
          }
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_SHA_STEM);
          } else {
            renderedWord.add(Menksoft.INIT_SHA_TOOTH);
          }
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.MEDI_SHA_FVS1_STEM);
          } else {
            renderedWord.add(Menksoft.MEDI_SHA_FVS1_TOOTH);
          }
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.MEDI_SHA_STEM);
          } else {
            renderedWord.add(Menksoft.MEDI_SHA_TOOTH);
          }
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_SHA);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleTA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_TA);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_TA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_TA_TOOTH);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.MEDI_TA_FVS1_STEM);
          } else {
            renderedWord.add(Menksoft.MEDI_TA_FVS1_TOOTH);
          }
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.add(Menksoft.MEDI_TA);
          _glyphShapeBelow = Shape.TOOTH;
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_TA);
        _glyphShapeBelow = Shape.STEM;
    }
  }

  void _handleDA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_DA_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_DA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_DA_FVS1); // left slanting
        } else {
          if (_glyphShapeBelow == Shape.STEM) {
            renderedWord.add(Menksoft.INIT_DA_STEM);
          } else {
            renderedWord.add(Menksoft.INIT_DA_TOOTH);
          }
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_DA_FVS1); // left slanting
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          if (MongolCode.isVowel(charBelow)) {
            renderedWord.add(Menksoft.MEDI_DA_FVS1); // left slanting
            _glyphShapeBelow = Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.MEDI_DA); // normal (before consonant)
            _glyphShapeBelow = Shape.STEM;
          }
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_DA_FVS1); // left slanting
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          renderedWord.add(Menksoft.FINA_DA); // normal (like o-n)
          _glyphShapeBelow = Shape.STEM;
        }
    }
  }

  void _handleCHA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_CHA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_CHA);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_CHA);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_CHA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleJA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_JA_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_JA);
        }
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_JA_STEM);
      case Location.MEDIAL:
        if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_JA_MVS);
        } else {
          renderedWord.add(Menksoft.MEDI_JA);
        }
        _glyphShapeBelow = Shape.STEM;
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_JA_FVS1);
          _glyphShapeBelow = Shape.TOOTH;
        } else {
          renderedWord.add(Menksoft.FINA_JA);
          _glyphShapeBelow = Shape.STEM;
        }
    }
  }

  void _handleYA(List<int> renderedWord, int positionInWord, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.ISOL_YA_FVS1);
        } else {
          renderedWord.add(Menksoft.ISOL_YA);
        }
      case Location.INITIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.INIT_YA_FVS1);
        } else {
          renderedWord.add(Menksoft.INIT_YA);
        }
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_YA_FVS1);
        } else if (_fvs == fvs2) {
          renderedWord.add(Menksoft.MEDI_YA_FVS2);
        } else if (_fvs == fvs3) {
          renderedWord.add(Menksoft.MEDI_YA);
        } else if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_YA_MVS);
        } else {
          renderedWord.add(Menksoft.MEDI_YA);
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_YA);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleRA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_RA);
      case Location.INITIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_RA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_RA_TOOTH);
        }
      case Location.MEDIAL:
        if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_RA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_RA_TOOTH);
        }
        _glyphShapeBelow = Shape.TOOTH;
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_RA);
        _glyphShapeBelow = Shape.STEM;
    }
  }

  void _handleWA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_WA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_WA);
      case Location.MEDIAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.MEDI_WA_FVS1);
          _glyphShapeBelow = Shape.STEM;
        } else if (charBelow == Unicode.MVS) {
          renderedWord.add(Menksoft.MEDI_WA_MVS);
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.add(Menksoft.MEDI_WA);
          _glyphShapeBelow = Shape.TOOTH;
        }
      case Location.FINAL:
        if (_fvs == fvs1) {
          renderedWord.add(Menksoft.FINA_WA_FVS1);
          _glyphShapeBelow = Shape.STEM;
        } else {
          renderedWord.add(Menksoft.FINA_WA);
          _glyphShapeBelow = Shape.TOOTH;
        }
    }
  }

  void _handleFA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_FA);
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.INIT_FA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.INIT_FA_STEM);
        } else {
          renderedWord.add(Menksoft.INIT_FA_TOOTH);
        }
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.MEDI_FA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_FA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_FA_TOOTH);
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_FA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleKA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_KA);
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.INIT_KA_OU);
        } else {
          renderedWord.add(Menksoft.INIT_KA);
        }
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.MEDI_KA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_KA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_KA_TOOTH);
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_KA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleKHA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_KHA);
      case Location.INITIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.INIT_KHA_OU);
        } else {
          renderedWord.add(Menksoft.INIT_KHA);
        }
      case Location.MEDIAL:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.MEDI_KHA_OU);
        } else if (_glyphShapeBelow == Shape.STEM) {
          renderedWord.add(Menksoft.MEDI_KHA_STEM);
        } else {
          renderedWord.add(Menksoft.MEDI_KHA_TOOTH);
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_KHA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleTSA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_TSA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_TSA);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_TSA);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_TSA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleZA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_ZA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_ZA);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_ZA);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_ZA);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleHAA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_HAA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_HAA);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_HAA);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_HAA);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleZRA(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_ZRA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_ZRA);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_ZRA);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_ZRA);
    }
    _glyphShapeBelow = Shape.STEM; // ROUND didn't look very good
  }

  void _handleLHA(List<int> renderedWord, int positionInWord, int charAbove) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_LHA);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_LHA);
      case Location.MEDIAL:
        if (_isRoundLetter(charAbove) || charAbove == Unicode.ANG) {
          renderedWord.add(Menksoft.MEDI_LHA_BP); // tail extended for round letter
        } else if (charAbove == Unicode.QA || charAbove == Unicode.GA) {
          if (_gender == Gender.NEUTER) {
            _gender = _getWordGenderAboveIndex(positionInWord, _inputWord);
          }
          if (_gender == Gender.FEMININE) {
            renderedWord.add(Menksoft.MEDI_LHA_BP); // tail extended for round letter
          } else {
            renderedWord.add(Menksoft.MEDI_LHA);
          }
        } else {
          renderedWord.add(Menksoft.MEDI_LHA);
        }
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_LHA);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleZHI(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_ZHI);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_ZHI);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_ZHI);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_ZHI);
    }
    _glyphShapeBelow = Shape.TOOTH;
  }

  void _handleCHI(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
        renderedWord.add(Menksoft.ISOL_CHI);
      case Location.INITIAL:
        renderedWord.add(Menksoft.INIT_CHI);
      case Location.MEDIAL:
        renderedWord.add(Menksoft.MEDI_CHI);
      case Location.FINAL:
        renderedWord.add(Menksoft.FINA_CHI);
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleNNBS(List<int> renderedWord) {
    renderedWord.add(Menksoft.NONBREAKING_SPACE);
  }

  void _handleNirugu(List<int> renderedWord) {
    switch (_location) {
      case Location.ISOLATE:
      case Location.MEDIAL:
        renderedWord.add(Menksoft.NIRUGU);
      case Location.INITIAL:
      case Location.FINAL:
        // drop it
        break;
    }
    _glyphShapeBelow = Shape.STEM;
  }

  void _handleNonPrintingChar(List<int> renderedWord) {
    // renderedWord.add(Unicode.WJ);
    // drop char
  }

  // If it is at the beginning of words then add space
  void _handleMvs(List<int> renderedWord, int index) {
    if (index == 0) {
      renderedWord.add(Menksoft.NONBREAKING_SPACE);
    } else {
      // drop it
    }
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
}
