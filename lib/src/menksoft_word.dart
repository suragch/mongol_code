import 'gender.dart';
import 'location.dart';
import 'menksoft.dart';
import 'mongol_code.dart';
import 'unicode.dart';

class MenksoftWord {
  static const int SPACE = 0x0020;

  late String _inputWord;
  late Location _location;

  MenksoftWord(String menksoftWord) {
    _inputWord = menksoftWord;
  }

  void _updateLocation(int charAbove, int charBelow) {
    final isTop = !Menksoft.isMenksoftLetter(charAbove);
    final isBottom = !Menksoft.isMenksoftLetter(charBelow);
    if (isTop) {
      if (isBottom) {
        _location = Location.ISOLATE;
      } else {
        _location = Location.INITIAL;
      }
    } else {
      if (isBottom) {
        _location = Location.FINAL;
      } else {
        _location = Location.MEDIAL;
      }
    }
  }

  String convertToUnicode() {
    final outputString = StringBuffer();

    if (_inputWord.isEmpty) {
      return '';
    }

    var charAbove = 0;
    var currentChar = _inputWord.codeUnitAt(0);
    final length = _inputWord.length;
    for (var i = 0; i < length; i++) {
      final charBelow = (i < length - 1) ? _inputWord.codeUnitAt(i + 1) : 0;

      _updateLocation(charAbove, charBelow);

      if (_isMenksoftSpaceChar(currentChar)) {
        // space
        _handleSpace(outputString, currentChar, charBelow);
      } else if (currentChar < Menksoft.A_START) {
        // punctuation
        _handlePunctuation(outputString, currentChar);
      } else if (currentChar < Menksoft.E_START) {
        // A
        _handleA(outputString, currentChar);
      } else if (currentChar < Menksoft.I_START) {
        // E
        _handleE(outputString, currentChar);
      } else if (currentChar < Menksoft.O_START) {
        // I
        _handleI(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.U_START) {
        // O
        _handleO(outputString, currentChar);
      } else if (currentChar < Menksoft.OE_START) {
        // U
        _handleU(outputString, currentChar);
      } else if (currentChar < Menksoft.UE_START) {
        // OE
        _handleOE(outputString, currentChar);
      } else if (currentChar < Menksoft.EE_START) {
        // UE
        _handleUE(outputString, currentChar);
      } else if (currentChar < Menksoft.NA_START) {
        // EE
        _handleEE(outputString, currentChar, charAbove, charBelow);
      } else if (Menksoft.isMenksoftANG(currentChar)) {
        // ANG
        // handling ANG before NA because NA is appears
        // before and after ANG
        _handleAng(outputString, currentChar);
      } else if (currentChar < Menksoft.BA_START) {
        // NA
        _handleNa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.PA_START) {
        // BA
        _handleBa(outputString, currentChar);
      } else if (currentChar < Menksoft.QA_START) {
        // PA
        _handlePa(outputString, currentChar);
      } else if (currentChar < Menksoft.GA_START) {
        // QA
        _handleQa(outputString, currentChar, charBelow);
      } else if (currentChar < Menksoft.MA_START) {
        // GA
        _handleGa(outputString, currentChar);
      } else if (currentChar < Menksoft.LA_START) {
        // MA
        _handleMa(outputString, currentChar);
      } else if (currentChar < Menksoft.SA_START) {
        // LA
        _handleLa(outputString, currentChar);
      } else if (currentChar < Menksoft.SHA_START) {
        // SA
        _handleSa(outputString, currentChar);
      } else if (currentChar < Menksoft.TA_START) {
        // SHA
        _handleSha(outputString, currentChar);
      } else if (currentChar < Menksoft.DA_START) {
        // TA
        _handleTa(outputString, currentChar);
      } else if (currentChar < Menksoft.CHA_START) {
        // DA
        _handleDa(outputString, currentChar);
      } else if (currentChar < Menksoft.JA_START) {
        // CHA
        _handleCha(outputString, currentChar);
      } else if (currentChar < Menksoft.YA_START) {
        // JA
        _handleJa(outputString, currentChar);
      } else if (currentChar < Menksoft.RA_START) {
        // YA
        _handleYa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.WA_START) {
        // RA
        _handleRa(outputString, currentChar);
      } else if (currentChar < Menksoft.FA_START) {
        // WA
        _handleWa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.KA_START) {
        // FA
        _handleFa(outputString, currentChar);
      } else if (currentChar < Menksoft.KHA_START) {
        // KA
        _handleKa(outputString, currentChar);
      } else if (currentChar < Menksoft.TSA_START) {
        // KHA
        _handleKha(outputString, currentChar);
      } else if (currentChar < Menksoft.ZA_START) {
        // TSA
        _handleTsa(outputString, currentChar);
      } else if (currentChar < Menksoft.HAA_START) {
        // ZA
        _handleZa(outputString, currentChar);
      } else if (currentChar < Menksoft.ZRA_START) {
        // HAA
        _handleHaa(outputString, currentChar);
      } else if (currentChar < Menksoft.LHA_START) {
        // ZRA
        _handleZra(outputString, currentChar);
      } else if (currentChar < Menksoft.ZHI_START) {
        // LHA
        _handleLha(outputString, currentChar);
      } else if (currentChar < Menksoft.CHI_START) {
        // ZHI
        _handleZhi(outputString);
      } else if (currentChar <= Menksoft.MENKSOFT_END) {
        // CHI
        _handleChi(outputString);
      }

      charAbove = currentChar;

      // fix missing space
      if (Menksoft.isMenksoftFinalIsolateGlyph(currentChar) && Menksoft.isMenksoftInitialIsolateGlyph(charBelow)) {
        outputString.writeCharCode(SPACE);
        charAbove = 0;
      }

      currentChar = charBelow;
    }

    return outputString.toString();
  }

  bool _startsWithNnbsSuffix(StringBuffer outputString) {
    return (outputString.length != 0) && outputString.codeUnitAt(0) == Unicode.NNBS;
  }

  void _handleA(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_A_FVS1:
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.INIT_A:
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.INIT_A_FVS1:
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_A:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            break;
          case Menksoft.FINA_A_BP:
          case Menksoft.FINA_A_FVS1:
          case Menksoft.FINA_A_MVS:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_A_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.A);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            break;
          case Menksoft.MEDI_A_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.A);
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.A);
        if (currentChar == Menksoft.MEDI_A_FVS1) {
          outputString.writeCharCode(Unicode.FVS1);
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_A_MVS:
            outputString.writeCharCode(Unicode.MVS);
            outputString.writeCharCode(Unicode.A);
            break;
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_A_FVS1:
            outputString.writeCharCode(Unicode.A);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.A);
        }
        break;
    }
  }

  void _handleE(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_E:
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.INIT_E_FVS1:
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_E:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.E);
            break;
          case Menksoft.FINA_E_BP:
          case Menksoft.FINA_E_FVS1:
          case Menksoft.FINA_E_MVS:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.E);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_E_FVS1:
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.E);
            break;
          default:
            outputString.writeCharCode(Unicode.E);
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.E);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_E_MVS:
            outputString.writeCharCode(Unicode.MVS);
            outputString.writeCharCode(Unicode.E);
            break;
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.writeCharCode(Unicode.E);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.E);
        }
        break;
    }
  }

  void _handleI(StringBuffer outputString, int currentChar, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_I:
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_I:
          case Menksoft.FINA_I_BP:
          case Menksoft.ISOL_I_FVS1:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.I);
            break;
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_I_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_I_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.YA);
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.I);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.I);
            break;
          case Menksoft.MEDI_I_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_I_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.YA);
            outputString.writeCharCode(Unicode.I);
            break;
          default:
            outputString.writeCharCode(Unicode.I);
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
            outputString.writeCharCode(Unicode.I);
            if (_isLikeIofNaima(charAbove, charBelow)) {
              // override double tooth for words like NAIMA
              outputString.writeCharCode(Unicode.FVS2);
            }
            break;
          case Menksoft.MEDI_I_FVS1:
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.I);
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_I_FVS1:
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_I_FVS2:
            outputString.writeCharCode(Unicode.YA);
            outputString.writeCharCode(Unicode.I);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.I);
        }
        break;
    }
  }

  bool _isLikeIofNaima(int charAbove, int charBelow) {
    return _isMenksoftA(charAbove) && _isMenksoftM(charBelow);
  }

  bool _isMenksoftA(int character) {
    return character >= Menksoft.A_START && character <= Menksoft.MEDI_A_UNKNOWN;
  }

  bool _isMenksoftM(int character) {
    return character >= Menksoft.INIT_MA_TOOTH && character <= Menksoft.MEDI_MA_BP;
  }

  void _handleO(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_O:
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_O:
            if (_startsWithNnbsSuffix(outputString)) {
              // substituting more standard U suffix
              outputString.writeCharCode(Unicode.U);
            } else {
              outputString.writeCharCode(Unicode.ZWJ);
              outputString.writeCharCode(Unicode.O);
            }
            break;
          case Menksoft.FINA_O_FVS1:
          case Menksoft.FINA_O_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_O_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.O);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_O_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.O);
            break;
          default:
            outputString.writeCharCode(Unicode.O);
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_O_FVS1:
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.O);
        }
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.O);
        switch (currentChar) {
          case Menksoft.FINA_O_FVS1:
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_O_FVS1:
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            break;
        }
        break;
    }
  }

  void _handleU(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_U:
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_U:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.U);
            break;
          case Menksoft.FINA_U_FVS1:
          case Menksoft.FINA_U_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_U_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.U);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_U_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.U);
            break;
          default:
            outputString.writeCharCode(Unicode.U);
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_U_FVS1:
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.U);
        }
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.U);
        switch (currentChar) {
          case Menksoft.FINA_U_FVS1:
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_U_FVS1:
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            break;
        }
        break;
    }
  }

  void _handleOE(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_OE_FVS1:
            // substituting UE because it is defined in Unicode
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.INIT_OE:
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_OE:
            if (_startsWithNnbsSuffix(outputString)) {
              // substituting more standard UE suffix
              outputString.writeCharCode(Unicode.UE);
            } else {
              outputString.writeCharCode(Unicode.ZWJ);
              outputString.writeCharCode(Unicode.OE);
            }
            break;
          case Menksoft.FINA_OE_FVS1:
          case Menksoft.FINA_OE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.FINA_OE_FVS2:
          case Menksoft.FINA_OE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            // substituting because undefined in unicode
            outputString.writeCharCode(Unicode.O);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_OE_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.OE);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_OE_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS2);
            break;
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            break;
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.OE);
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_OE_FVS2:
            outputString.writeCharCode(Unicode.OE);
            outputString.writeCharCode(Unicode.FVS2);
            break;
          default:
            outputString.writeCharCode(Unicode.OE);
        }
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.OE);
        switch (currentChar) {
          case Menksoft.FINA_OE_FVS1:
          case Menksoft.FINA_OE_FVS1_BP:
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_OE_FVS2:
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
        }
        break;
    }
  }

  void _handleUE(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_UE_FVS1:
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.INIT_UE:
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_UE:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.UE);
            break;
          case Menksoft.FINA_UE_FVS1:
          case Menksoft.FINA_UE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.FINA_UE_FVS2:
          case Menksoft.FINA_UE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            // substituting because undefined in unicode
            outputString.writeCharCode(Unicode.U);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_UE_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.UE);
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_UE_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS2);
            break;
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            outputString.writeCharCode(Unicode.UE);
            break;
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.UE);
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_UE_FVS1:
            outputString.writeCharCode(Unicode.UE);
            final index = outputString.length - 1;
            if (!MongolCode.needsLongToothU(outputString.toString(), index)) {
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          case Menksoft.MEDI_UE_FVS2:
            outputString.writeCharCode(Unicode.UE);
            outputString.writeCharCode(Unicode.FVS2);
            break;
          default:
            outputString.writeCharCode(Unicode.UE);
        }
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.UE);
        switch (currentChar) {
          case Menksoft.FINA_UE_FVS1:
          case Menksoft.FINA_UE_FVS1_BP:
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_UE_FVS2:
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
        }
        break;
    }
  }

  void _handleEE(StringBuffer outputString, int currentChar, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_EE:
            outputString.writeCharCode(Unicode.EE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_EE:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.EE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_EE:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.EE);
            break;
          default:
            outputString.writeCharCode(Unicode.EE);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_EE:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.EE);
            break;
          default:
            outputString.writeCharCode(Unicode.EE);
            break;
        }
        break;
      case Location.MEDIAL:
        // replace EE between two vowels with W
        if (Menksoft.isMenksoftVowel(charAbove) && Menksoft.isMenksoftVowel(charBelow)) {
          outputString.writeCharCode(Unicode.WA);
        } else {
          outputString.writeCharCode(Unicode.EE);
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_EE:
            outputString.writeCharCode(Unicode.EE);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.EE);
            break;
        }
        break;
    }
  }

  void _handleAng(StringBuffer outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_ANG) {
      outputString.writeCharCode(Unicode.ZWJ);
    }
    outputString.writeCharCode(Unicode.ANG);
  }

  void _handleNa(StringBuffer outputString, int currentChar, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_NA_FVS1_STEM:
          case Menksoft.INIT_NA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.FINA_NA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.NA);
            break;
          case Menksoft.MEDI_NA_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
          case Menksoft.MEDI_NA_NG:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
          case Menksoft.MEDI_NA_FVS1_NG:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.NA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_NA_FVS1_STEM:
          case Menksoft.INIT_NA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.NA);
            break;
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_NA_NG:
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
            outputString.writeCharCode(Unicode.NA);
            if (Menksoft.isMenksoftVowel(charAbove) && Menksoft.isMenksoftVowel(charBelow)) {
              outputString.writeCharCode(Unicode.ZWJ);
            }
            break;
          case Menksoft.MEDI_NA_FVS1_NG:
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.NA);
            if (Menksoft.isMenksoftConsonant(charBelow)) {
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          default:
            outputString.writeCharCode(Unicode.NA);
            break;
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_NA_FVS2:
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
          case Menksoft.MEDI_NA_NG:
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
          case Menksoft.MEDI_NA_FVS1_NG:
            outputString.writeCharCode(Unicode.NA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.NA);
            break;
        }
        break;
    }
  }

  void _handleBa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_BA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.BA);
            break;
          case Menksoft.FINA_BA_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.BA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.BA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.BA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.BA);
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.BA);
        break;
    }
  }

  void _handlePa(StringBuffer outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_PA) {
      outputString.writeCharCode(Unicode.ZWJ);
    }
    outputString.writeCharCode(Unicode.PA);
  }

  void _handleQa(StringBuffer outputString, int currentChar, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_QA_FVS1:
          case Menksoft.INIT_QA_FVS4_OU:
          case Menksoft.MEDI_QA_FVS4:
          case Menksoft.MEDI_QA_FVS4_OU:
          case Menksoft.MEDI_QA_FVS4_CONS:
            outputString.writeCharCode(Unicode.QA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.INIT_QA_FVS1_STEM:
          case Menksoft.INIT_QA_FVS1_TOOTH:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.GA);
            break;
          case Menksoft.FINA_QA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.QA);
            break;
          case Menksoft.MEDI_QA_FVS2_CONS:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS3);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_FVS1:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_FVS1_MVS:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.QA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.QA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_QA_FVS1_STEM:
          case Menksoft.INIT_QA_FVS1_TOOTH:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.GA);
            break;
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.QA);
            break;
          default:
            outputString.writeCharCode(Unicode.QA);
            break;
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
          case Menksoft.MEDI_QA_FVS2_CONS:
            // If a medial Q is being used like a G before
            // a consonant, then interpret it as a G.
            if (Menksoft.isMenksoftConsonant(charBelow)) {
              outputString.writeCharCode(Unicode.GA);
            } else {
              outputString.writeCharCode(Unicode.QA);
            }
            break;
          case Menksoft.MEDI_QA_FVS1:
          case Menksoft.MEDI_QA_FVS1_MVS:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.GA);
            break;
          default:
            outputString.writeCharCode(Unicode.QA);
            break;
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_QA_FVS2_CONS:
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS3);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_FVS1:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_FVS1_MVS:
            // treat the dotted masculine Q as a G
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.writeCharCode(Unicode.QA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.QA);
            break;
        }
        break;
    }
  }

  void _handleGa(StringBuffer outputString, int currentChar) {
    final gender = MongolCode.getWordGender(outputString.toString());
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_GA_FVS1_STEM:
          case Menksoft.INIT_GA_FVS1_TOOTH:
            // treat the undotted masculine G as a Q
            outputString.writeCharCode(Unicode.QA);
            break;
          case Menksoft.FINA_GA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            break;
          case Menksoft.FINA_GA_FVS2:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS2);
            break;
          case Menksoft.MEDI_GA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS1_STEM:
          case Menksoft.MEDI_GA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS3_MVS:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS2_STEM:
          case Menksoft.MEDI_GA_FVS2_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.GA);
            outputString.writeCharCode(Unicode.FVS3);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.GA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_GA_FVS1_STEM:
          case Menksoft.INIT_GA_FVS1_TOOTH:
            // treat the undotted masculine G as a Q
            outputString.writeCharCode(Unicode.QA);
            break;
          default:
            outputString.writeCharCode(Unicode.GA);
            break;
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_GA_FVS2_TOOTH:
          case Menksoft.MEDI_GA_FVS2_STEM:
            outputString.writeCharCode(Unicode.GA);
            if (gender == Gender.MASCULINE) {
              outputString.writeCharCode(Unicode.FVS3);
            }
            break;
          default:
            outputString.writeCharCode(Unicode.GA);
            break;
        }
        break;
      case Location.FINAL:
        outputString.writeCharCode(Unicode.GA);
        switch (currentChar) {
          case Menksoft.FINA_GA_FVS1:
            if (gender == Gender.NEUTER) {
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          case Menksoft.FINA_GA_FVS2:
            if (gender == Gender.MASCULINE) {
              outputString.writeCharCode(Unicode.FVS2);
            }
            break;
          case Menksoft.MEDI_GA:
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS1_STEM:
          case Menksoft.MEDI_GA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS3_MVS:
            outputString.writeCharCode(Unicode.FVS2);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_GA_FVS2_STEM:
          case Menksoft.MEDI_GA_FVS2_TOOTH:
            outputString.writeCharCode(Unicode.FVS3);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
        }
        break;
    }
  }

  void _handleMa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_MA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.MA);
            break;
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.MA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.MA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.MA);
            break;
          default:
            outputString.writeCharCode(Unicode.MA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.MA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.writeCharCode(Unicode.MA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.MA);
            break;
        }
        break;
    }
  }

  void _handleLa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_LA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.LA);
            break;
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.LA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.LA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.LA);
            break;
          default:
            outputString.writeCharCode(Unicode.LA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.LA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.writeCharCode(Unicode.LA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.LA);
            break;
        }
        break;
    }
  }

  void _handleSa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_SA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SA);
            break;
          case Menksoft.FINA_SA_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.SA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SA);
            break;
          default:
            outputString.writeCharCode(Unicode.SA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.SA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.writeCharCode(Unicode.SA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.SA);
            break;
        }
        break;
    }
  }

  void _handleSha(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_SHA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SHA);
            break;
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SHA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.SHA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.SHA);
            break;
          default:
            outputString.writeCharCode(Unicode.SHA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.SHA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.writeCharCode(Unicode.SHA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.SHA);
            break;
        }
        break;
    }
  }

  void _handleTa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_TA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TA);
            break;
          case Menksoft.MEDI_TA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.TA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TA);
            break;
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.TA);
            break;
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          default:
            outputString.writeCharCode(Unicode.TA);
            break;
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA:
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.writeCharCode(Unicode.TA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.TA);
            break;
        }
        break;
    }
  }

  void _handleDa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_DA_STEM:
          case Menksoft.INIT_DA_TOOTH:
            // replace isolated DA that looks like TA with actual TA
            outputString.writeCharCode(Unicode.TA);
            break;
          case Menksoft.FINA_DA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.DA);
            break;
          case Menksoft.FINA_DA_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.DA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_DA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.DA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_DA_FVS1:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.DA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.DA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_DA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.DA);
            break;
          case Menksoft.INIT_DA_FVS1:
          case Menksoft.MEDI_DA_FVS1:
            outputString.writeCharCode(Unicode.DA);
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          default:
            outputString.writeCharCode(Unicode.DA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.DA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_DA:
            outputString.writeCharCode(Unicode.DA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_DA_FVS1:
            outputString.writeCharCode(Unicode.DA);
            outputString.writeCharCode(Unicode.FVS1);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.DA);
            break;
        }
        break;
    }
  }

  void _handleCha(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_CHA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.CHA);
            break;
          default:
            outputString.writeCharCode(Unicode.CHA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.CHA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.CHA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_CHA:
            outputString.writeCharCode(Unicode.CHA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.CHA);
            break;
        }
        break;
    }
  }

  void _handleJa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_JA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.JA);
            break;
          case Menksoft.MEDI_JA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.JA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_JA_MVS:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.I);
            break;
          default:
            outputString.writeCharCode(Unicode.JA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_JA_STEM:
          case Menksoft.INIT_JA_TOOTH:
            // if user used a JA to write a YA suffix then replace it
            if (_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.YA);
            } else {
              outputString.writeCharCode(Unicode.JA);
            }
            break;
          case Menksoft.MEDI_JA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.JA);
            break;
          default:
            outputString.writeCharCode(Unicode.JA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.JA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_JA:
            outputString.writeCharCode(Unicode.JA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          case Menksoft.MEDI_JA_MVS:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.writeCharCode(Unicode.I);
            break;
          default:
            outputString.writeCharCode(Unicode.JA);
            break;
        }
    }
  }

  void _handleYa(StringBuffer outputString, int currentChar, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_YA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.YA);
            break;
          case Menksoft.MEDI_YA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.YA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.YA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA:
            outputString.writeCharCode(Unicode.YA);
            if (!_startsWithNnbsSuffix(outputString)) {
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          default:
            outputString.writeCharCode(Unicode.YA);
            break;
        }
        break;
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA_FVS1:
            outputString.writeCharCode(Unicode.YA);
            if (Menksoft.isMenksoftVowel(charAbove) && Menksoft.isMenksoftI(charBelow)) {
              // override context rule that would make a normal Y straight
              outputString.writeCharCode(Unicode.FVS1);
            }
            break;
          default:
            outputString.writeCharCode(Unicode.YA);
            break;
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA:
            outputString.writeCharCode(Unicode.YA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.YA);
            break;
        }
        break;
    }
  }

  void _handleRa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_RA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.RA);
            break;
          default:
            outputString.writeCharCode(Unicode.RA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.RA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.RA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_RA_STEM:
          case Menksoft.MEDI_RA_TOOTH:
            outputString.writeCharCode(Unicode.RA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.RA);
            break;
        }
        break;
    }
  }

  void _handleWa(StringBuffer outputString, int currentChar, int charAbove, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_WA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.WA);
            break;
          case Menksoft.FINA_WA_MVS:
            // an isolate final WA looks like a final U so make it one
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.U);
            break;
          default:
            outputString.writeCharCode(Unicode.WA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.WA);
        break;
      case Location.MEDIAL:
        // replace W between two consonants with EE
        if (Menksoft.isMenksoftConsonant(charAbove) && Menksoft.isMenksoftConsonant(charBelow)) {
          outputString.writeCharCode(Unicode.EE);
        } else {
          outputString.writeCharCode(Unicode.WA);
        }
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_WA_MVS:
            outputString.writeCharCode(Unicode.WA);
            outputString.writeCharCode(Unicode.FVS1);
            break;
          case Menksoft.MEDI_WA:
            outputString.writeCharCode(Unicode.WA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.WA);
            break;
        }
        break;
    }
  }

  void _handleFa(StringBuffer outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_FA) {
      outputString.writeCharCode(Unicode.ZWJ);
    }
    outputString.writeCharCode(Unicode.FA);
  }

  void _handleKa(StringBuffer outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_KA) {
      outputString.writeCharCode(Unicode.ZWJ);
    }
    outputString.writeCharCode(Unicode.KA);
  }

  void _handleKha(StringBuffer outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_KHA) {
      outputString.writeCharCode(Unicode.ZWJ);
    }
    outputString.writeCharCode(Unicode.KHA);
  }

  void _handleTsa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_TSA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.TSA);
            break;
          default:
            outputString.writeCharCode(Unicode.TSA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.TSA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.TSA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_TSA:
            outputString.writeCharCode(Unicode.TSA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.TSA);
            break;
        }
        break;
    }
  }

  void _handleZa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_ZA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.ZA);
            break;
          default:
            outputString.writeCharCode(Unicode.ZA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.ZA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.ZA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_ZA:
            outputString.writeCharCode(Unicode.ZA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.ZA);
            break;
        }
        break;
    }
  }

  void _handleHaa(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_HAA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.HAA);
            break;
          case Menksoft.MEDI_HAA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.HAA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.HAA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_HAA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.HAA);
            break;
          default:
            outputString.writeCharCode(Unicode.HAA);
            break;
        }
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.HAA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_HAA:
            outputString.writeCharCode(Unicode.HAA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.HAA);
            break;
        }
        break;
    }
  }

  void _handleZra(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_ZRA:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.ZRA);
            break;
          default:
            outputString.writeCharCode(Unicode.ZRA);
            break;
        }
        break;
      case Location.INITIAL:
        outputString.writeCharCode(Unicode.ZRA);
        break;
      case Location.MEDIAL:
        outputString.writeCharCode(Unicode.ZRA);
        break;
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_ZRA:
            outputString.writeCharCode(Unicode.ZRA);
            outputString.writeCharCode(Unicode.ZWJ);
            break;
          default:
            outputString.writeCharCode(Unicode.ZRA);
            break;
        }
        break;
    }
  }

  void _handleLha(StringBuffer outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.MEDI_LHA:
          case Menksoft.MEDI_LHA_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.LHA);
            break;
          default:
            outputString.writeCharCode(Unicode.LHA);
            break;
        }
        break;
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_LHA:
          case Menksoft.MEDI_LHA_BP:
            outputString.writeCharCode(Unicode.ZWJ);
            outputString.writeCharCode(Unicode.LHA);
            break;
          default:
            outputString.writeCharCode(Unicode.LHA);
            break;
        }
        break;
      default:
        outputString.writeCharCode(Unicode.LHA);
        break;
    }
  }

  void _handleZhi(StringBuffer outputString) {
    outputString.writeCharCode(Unicode.ZHI);
  }

  void _handleChi(StringBuffer outputString) {
    outputString.writeCharCode(Unicode.CHI);
  }

  void _handleSpace(StringBuffer outputString, int currentChar, int charBelow) {
    if (currentChar == Menksoft.SUFFIX_SPACE) {
      outputString.writeCharCode(Unicode.NNBS);
      return;
    }

    switch (charBelow) {
      case Menksoft.INIT_A_FVS1:
      case Menksoft.FINA_I:
      case Menksoft.MEDI_I:
      case Menksoft.INIT_I_FVS1:
      case Menksoft.ISOL_I_FVS1:
      case Menksoft.MEDI_O:
      case Menksoft.MEDI_O_BP:
      case Menksoft.FINA_O:
      case Menksoft.MEDI_U:
      case Menksoft.MEDI_U_BP:
      case Menksoft.FINA_U:
      case Menksoft.MEDI_OE:
      case Menksoft.MEDI_OE_BP:
      case Menksoft.FINA_OE:
      case Menksoft.MEDI_UE:
      case Menksoft.MEDI_UE_BP:
      case Menksoft.FINA_UE:
      case Menksoft.FINA_YA:
      case Menksoft.INIT_YA_FVS1:
        outputString.writeCharCode(Unicode.NNBS);
        break;
      default:
        outputString.writeCharCode(SPACE);
    }
  }

  void _handlePunctuation(StringBuffer outputString, int currentChar) {
    switch (currentChar) {
      case Menksoft.BIRGA:
        outputString.writeCharCode(Unicode.MONGOLIAN_BIRGA);
        break;
      case Menksoft.ELLIPSIS:
        outputString.writeCharCode(Unicode.MONGOLIAN_ELLIPSIS);
        break;
      case Menksoft.COMMA:
        outputString.writeCharCode(Unicode.MONGOLIAN_COMMA);
        break;
      case Menksoft.FULL_STOP:
        outputString.writeCharCode(Unicode.MONGOLIAN_FULL_STOP);
        break;
      case Menksoft.COLON:
        outputString.writeCharCode(Unicode.MONGOLIAN_COLON);
        break;
      case Menksoft.FOUR_DOTS:
        outputString.writeCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
        break;
      case Menksoft.TODO_SOFT_HYPHEN:
        outputString.writeCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
        break;
      case Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER:
        outputString.writeCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
        break;
      case Menksoft.MANCHU_COMMA:
        outputString.writeCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
        break;
      case Menksoft.MANCHU_FULL_STOP:
        outputString.writeCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
        break;
      case Menksoft.NIRUGU:
        outputString.writeCharCode(Unicode.MONGOLIAN_NIRUGU);
        break;
      case Menksoft.BIRGA_WITH_ORNAMENT:
        outputString.write('\uD805\uDE60'); // U+11660
        break;
      case Menksoft.ROTATED_BIRGA:
        outputString.write('\uD805\uDE61'); // U+11661
        break;
      case Menksoft.DOUBLE_BIRGA_WITH_ORNAMENT:
        outputString.write('\uD805\uDE62'); // U+11662
        break;
      case Menksoft.TRIPLE_BIRGA_WITH_ORNAMENT:
        outputString.write('\uD805\uDE63'); // U+11663
        break;
      case Menksoft.MIDDLE_DOT:
        outputString.writeCharCode(Unicode.MIDDLE_DOT);
        break;
      case Menksoft.ZERO:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
        break;
      case Menksoft.ONE:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
        break;
      case Menksoft.TWO:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
        break;
      case Menksoft.THREE:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
        break;
      case Menksoft.FOUR:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
        break;
      case Menksoft.FIVE:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
        break;
      case Menksoft.SIX:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
        break;
      case Menksoft.SEVEN:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
        break;
      case Menksoft.EIGHT:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
        break;
      case Menksoft.NINE:
        outputString.writeCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
        break;
      case Menksoft.QUESTION_EXCLAMATION:
        outputString.writeCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
        break;
      case Menksoft.EXCLAMATION_QUESTION:
        outputString.writeCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
        break;
      case Menksoft.EXCLAMATION:
        outputString.writeCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
        break;
      case Menksoft.QUESTION:
        outputString.writeCharCode(Unicode.VERTICAL_QUESTION_MARK);
        break;
      case Menksoft.SEMICOLON:
        outputString.writeCharCode(Unicode.VERTICAL_SEMICOLON);
        break;
      case Menksoft.LEFT_PARENTHESIS:
        outputString.writeCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
        break;
      case Menksoft.RIGHT_PARENTHESIS:
        outputString.writeCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
        break;
      case Menksoft.LEFT_ANGLE_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
        break;
      case Menksoft.RIGHT_ANGLE_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
        break;
      case Menksoft.LEFT_TORTOISE_SHELL_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
        break;
      case Menksoft.RIGHT_TORTOISE_SHELL_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
        break;
      case Menksoft.LEFT_DOUBLE_ANGLE_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
        break;
      case Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
        break;
      case Menksoft.LEFT_WHITE_CORNER_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
        break;
      case Menksoft.RIGHT_WHITE_CORNER_BRACKET:
        outputString.writeCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
        break;
      case Menksoft.FULL_WIDTH_COMMA:
        outputString.writeCharCode(Unicode.VERTICAL_COMMA);
        break;
      case Menksoft.X:
        outputString.writeCharCode(0x00D7); // FIXME using the multiplication sign?
        break;
      case Menksoft.REFERENCE_MARK:
        outputString.writeCharCode(Unicode.REFERENCE_MARK);
        break;
      case Menksoft.EN_DASH:
        outputString.writeCharCode(Unicode.VERTICAL_EN_DASH);
        break;
      case Menksoft.EM_DASH:
        outputString.writeCharCode(Unicode.VERTICAL_EM_DASH);
        break;
      default:
        outputString.writeCharCode(currentChar);
    }
  }

  bool _isMenksoftSpaceChar(int character) {
    return character == SPACE || character == Menksoft.SUFFIX_SPACE || character == Menksoft.UNKNOWN_SPACE;
  }
}
