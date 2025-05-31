import 'gender.dart';
import 'location.dart';
import 'menksoft.dart';
import 'mongol_code.dart';
import 'unicode.dart';

class MenksoftWord {
  static const int SPACE = 0x0020;

  late List<int> _inputWord;
  late Location _location;

  MenksoftWord(List<int> menksoftWord) {
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

  List<int> convertToUnicode() {
    final outputString = <int>[];

    if (_inputWord.isEmpty) {
      return [];
    }

    var charAbove = 0;
    var currentChar = _inputWord[0];
    final length = _inputWord.length;
    for (var i = 0; i < length; i++) {
      final charBelow = (i < length - 1) ? _inputWord[i + 1] : 0;

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
      if (Menksoft.isMenksoftFinalIsolateGlyph(currentChar) &&
          Menksoft.isMenksoftInitialIsolateGlyph(charBelow)) {
        outputString.add(SPACE);
        charAbove = 0;
      }

      currentChar = charBelow;
    }

    return outputString;
  }

  bool _startsWithMvs(List<int> outputString) {
    return outputString.isNotEmpty && outputString[0] == Unicode.MVS;
  }

  void _handleA(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_A_FVS1:
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
          case Menksoft.ISOL_A_FVS2:
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS2);
          case Menksoft.INIT_A:
            outputString.add(Unicode.A);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.INIT_A_FVS1:
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_A:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
          case Menksoft.FINA_A_BP:
          case Menksoft.FINA_A_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_A_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.A);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
          case Menksoft.MEDI_A_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.A);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.A);
        if (currentChar == Menksoft.MEDI_A_FVS1) {
          outputString.add(Unicode.FVS1);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_A_MVS:
            outputString.add(Unicode.MVS);
            outputString.add(Unicode.A);
          case Menksoft.MEDI_A:
          case Menksoft.MEDI_A_BP:
          case Menksoft.MEDI_A_UNKNOWN:
            outputString.add(Unicode.A);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_A_FVS1:
            outputString.add(Unicode.A);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.A);
        }
    }
  }

  void _handleE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_E_FVS1:
            outputString.add(Unicode.E);
            outputString.add(Unicode.FVS1);
          case Menksoft.INIT_E:
            outputString.add(Unicode.E);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.INIT_E_FVS1:
            outputString.add(Unicode.E);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_E:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.E);
          case Menksoft.FINA_E_BP:
          case Menksoft.FINA_E_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.E);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.E);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.E);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_E_FVS1:
            outputString.add(Unicode.E);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.E);
          default:
            outputString.add(Unicode.E);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.E);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_E_MVS:
            outputString.add(Unicode.MVS);
            outputString.add(Unicode.E);
          case Menksoft.MEDI_E:
          case Menksoft.MEDI_E_BP:
          case Menksoft.MEDI_E_UNKNOWN:
            outputString.add(Unicode.E);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.E);
        }
    }
  }

  void _handleI(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_I_FVS1:
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS1);
          case Menksoft.INIT_I:
            outputString.add(Unicode.I);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_I:
          case Menksoft.FINA_I_BP:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.I);
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.I);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_I_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_I_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.I);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.I);
          case Menksoft.MEDI_I_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_I_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.YA);
            outputString.add(Unicode.I);
          default:
            outputString.add(Unicode.I);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
            outputString.add(Unicode.I);
            if (_isLikeIofNaima(charAbove, charBelow)) {
              // override double tooth for words like NAIMA
              outputString.add(Unicode.FVS2);
            }
          case Menksoft.MEDI_I_FVS1:
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.I);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_I:
          case Menksoft.MEDI_I_BP:
          case Menksoft.INIT_I_FVS1:
            outputString.add(Unicode.I);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_I_FVS1:
            outputString.add(Unicode.I);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_I_FVS2:
            outputString.add(Unicode.YA);
            outputString.add(Unicode.I);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.I);
        }
    }
  }

  bool _isLikeIofNaima(int charAbove, int charBelow) {
    return _isMenksoftA(charAbove) && _isMenksoftM(charBelow);
  }

  bool _isMenksoftA(int character) {
    return character >= Menksoft.A_START &&
        character <= Menksoft.MEDI_A_UNKNOWN;
  }

  bool _isMenksoftM(int character) {
    return character >= Menksoft.INIT_MA_TOOTH &&
        character <= Menksoft.MEDI_MA_BP;
  }

  void _handleO(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_O:
            outputString.add(Unicode.O);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_O:
            if (_startsWithMvs(outputString)) {
              // substituting more standard U suffix
              outputString.add(Unicode.U);
            } else {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
              outputString.add(Unicode.O);
            }
          case Menksoft.FINA_O_FVS1:
          case Menksoft.FINA_O_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.O);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_O_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.O);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.O);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.O);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_O_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.O);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.O);
          default:
            outputString.add(Unicode.O);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_O_FVS1:
            outputString.add(Unicode.O);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.O);
        }
      case Location.FINAL:
        outputString.add(Unicode.O);
        switch (currentChar) {
          case Menksoft.FINA_O_FVS1:
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_O_FVS1:
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_O:
          case Menksoft.MEDI_O_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
        }
    }
  }

  void _handleU(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_U:
            outputString.add(Unicode.U);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_U:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.U);
          case Menksoft.FINA_U_FVS1:
          case Menksoft.FINA_U_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.U);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_U_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.U);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.U);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.U);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_U_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.U);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.U);
          default:
            outputString.add(Unicode.U);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_U_FVS1:
            outputString.add(Unicode.U);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.U);
        }
      case Location.FINAL:
        outputString.add(Unicode.U);
        switch (currentChar) {
          case Menksoft.FINA_U_FVS1:
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_U_FVS1:
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_U:
          case Menksoft.MEDI_U_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
        }
    }
  }

  void _handleOE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_OE_FVS1:
            // substituting UE because it is defined in Unicode
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS1);
          case Menksoft.INIT_OE:
            outputString.add(Unicode.OE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_OE:
            if (_startsWithMvs(outputString)) {
              // substituting more standard UE suffix
              outputString.add(Unicode.UE);
            } else {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
              outputString.add(Unicode.OE);
            }
          case Menksoft.FINA_OE_FVS1:
          case Menksoft.FINA_OE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS1);
          case Menksoft.FINA_OE_FVS2:
          case Menksoft.FINA_OE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            // substituting because undefined in unicode
            outputString.add(Unicode.O);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_OE_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.OE);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_OE_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS2);
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.OE);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_OE_FVS2:
            outputString.add(Unicode.OE);
            outputString.add(Unicode.FVS2);
          default:
            outputString.add(Unicode.OE);
        }
      case Location.FINAL:
        outputString.add(Unicode.OE);
        switch (currentChar) {
          case Menksoft.FINA_OE_FVS1:
          case Menksoft.FINA_OE_FVS1_BP:
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_OE_FVS2:
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_OE:
          case Menksoft.MEDI_OE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_OE_FVS1:
          case Menksoft.MEDI_OE_FVS1_BP:
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
        }
    }
  }

  void _handleUE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_UE_FVS1:
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS1);
          case Menksoft.INIT_UE:
            outputString.add(Unicode.UE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_UE:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.UE);
          case Menksoft.FINA_UE_FVS1:
          case Menksoft.FINA_UE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS1);
          case Menksoft.FINA_UE_FVS2:
          case Menksoft.FINA_UE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            // substituting because undefined in unicode
            outputString.add(Unicode.U);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_UE_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.UE);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_UE_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS2);
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
            outputString.add(Unicode.UE);
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.UE);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_UE_FVS1:
            outputString.add(Unicode.UE);
            final index = outputString.length - 1;
            if (!MongolCode.needsLongToothU(outputString, index)) {
              outputString.add(Unicode.FVS1);
            }
          case Menksoft.MEDI_UE_FVS2:
            outputString.add(Unicode.UE);
            outputString.add(Unicode.FVS2);
          default:
            outputString.add(Unicode.UE);
        }
      case Location.FINAL:
        outputString.add(Unicode.UE);
        switch (currentChar) {
          case Menksoft.FINA_UE_FVS1:
          case Menksoft.FINA_UE_FVS1_BP:
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_UE_FVS2:
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_UE:
          case Menksoft.MEDI_UE_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_UE_FVS1:
          case Menksoft.MEDI_UE_FVS1_BP:
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
        }
    }
  }

  void _handleEE(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_EE:
            outputString.add(Unicode.EE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_EE:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.EE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_EE:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.EE);
          default:
            outputString.add(Unicode.EE);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_EE:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.EE);
          default:
            outputString.add(Unicode.EE);
        }
      case Location.MEDIAL:
        // replace EE between two vowels with W
        if (Menksoft.isMenksoftVowel(charAbove) &&
            Menksoft.isMenksoftVowel(charBelow)) {
          outputString.add(Unicode.WA);
        } else {
          outputString.add(Unicode.EE);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_EE:
            outputString.add(Unicode.EE);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.EE);
        }
    }
  }

  void _handleAng(List<int> outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_ANG) {
      outputString.add(Unicode.MONGOLIAN_NIRUGU);
    }
    outputString.add(Unicode.ANG);
  }

  void _handleNa(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_NA_FVS1_STEM:
          case Menksoft.INIT_NA_FVS1_TOOTH:
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_NA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.NA);
          case Menksoft.FINA_NA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
          case Menksoft.MEDI_NA_NG:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.NA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
          case Menksoft.MEDI_NA_FVS1_NG:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.NA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_NA_FVS1_STEM:
          case Menksoft.INIT_NA_FVS1_TOOTH:
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.NA);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_NA_NG:
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
            outputString.add(Unicode.NA);
            if (Menksoft.isMenksoftVowel(charAbove) &&
                Menksoft.isMenksoftVowel(charBelow)) {
              outputString.add(Unicode.MONGOLIAN_NIRUGU);
            }
          case Menksoft.MEDI_NA_FVS1_NG:
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
            outputString.add(Unicode.NA);
            if (Menksoft.isMenksoftConsonant(charBelow)) {
              outputString.add(Unicode.FVS1);
            }
          default:
            outputString.add(Unicode.NA);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.FINA_NA_FVS1:
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_NA_STEM:
          case Menksoft.MEDI_NA_TOOTH:
          case Menksoft.MEDI_NA_NG:
            outputString.add(Unicode.NA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_NA_FVS1_STEM:
          case Menksoft.MEDI_NA_FVS1_TOOTH:
          case Menksoft.MEDI_NA_FVS1_NG:
            outputString.add(Unicode.NA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.NA);
        }
    }
  }

  void _handleBa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_BA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.BA);
          case Menksoft.FINA_BA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.BA);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.BA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.BA);
      case Location.MEDIAL:
        outputString.add(Unicode.BA);
      case Location.FINAL:
        outputString.add(Unicode.BA);
    }
  }

  void _handlePa(List<int> outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_PA) {
      outputString.add(Unicode.MONGOLIAN_NIRUGU);
    }
    outputString.add(Unicode.PA);
  }

  void _handleQa(List<int> outputString, int currentChar, int charBelow) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_QA_FVS1:
          case Menksoft.INIT_QA_FVS1_TOOTH:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.GA);
          case Menksoft.ISOL_QA_FVS2:
          case Menksoft.INIT_QA_FVS2_OU:
          case Menksoft.MEDI_QA_FVS2_CONS:
          case Menksoft.MEDI_QA_FVS2_OU:
          case Menksoft.MEDI_QA_FVS2:
            outputString.add(Unicode.QA);
            outputString.add(Unicode.FVS2);
          case Menksoft.ISOL_QA_FVS4:
          case Menksoft.INIT_QA_FVS4_OU:
          case Menksoft.MEDI_QA_FVS4:
          case Menksoft.MEDI_QA_FVS4_OU:
          case Menksoft.MEDI_QA_FVS4_CONS:
            outputString.add(Unicode.QA);
            outputString.add(Unicode.FVS4);
          case Menksoft.FINA_QA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.QA);
          case Menksoft.FINA_QA_FVS1:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS3);
          case Menksoft.MEDI_QA_FVS1:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.QA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.QA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_QA_FVS1_STEM:
          case Menksoft.INIT_QA_FVS1_TOOTH:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.GA);
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.QA);
          default:
            outputString.add(Unicode.QA);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
          case Menksoft.MEDI_QA_FVS2_CONS:
            // If a medial Q is being used like a G before
            // a consonant, then interpret it as a G.
            if (Menksoft.isMenksoftConsonant(charBelow)) {
              outputString.add(Unicode.GA);
            } else {
              outputString.add(Unicode.QA);
            }
          case Menksoft.MEDI_QA_FVS1:
          case Menksoft.MEDI_QA_FVS1_MVS:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.GA);
          default:
            outputString.add(Unicode.QA);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_QA_FVS2_CONS:
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS3);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_QA_FVS1:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.GA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_QA_FVS1_MVS:
            // treat the dotted masculine Q as a G
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_QA_STEM:
          case Menksoft.MEDI_QA_TOOTH:
            outputString.add(Unicode.QA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.QA);
        }
    }
  }

  void _handleGa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_GA_FVS1_STEM:
          case Menksoft.INIT_GA_FVS1_TOOTH:
            // treat the undotted masculine G as a Q
            outputString.add(Unicode.QA);
          case Menksoft.FINA_GA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
          case Menksoft.FINA_GA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS1);
          case Menksoft.FINA_GA_FVS3:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS3);
          case Menksoft.MEDI_GA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_GA_FVS1_STEM:
          case Menksoft.MEDI_GA_FVS1_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_GA_FVS2_STEM:
          case Menksoft.MEDI_GA_FVS2_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.GA);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.GA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_GA_FVS1_STEM:
          case Menksoft.INIT_GA_FVS1_TOOTH:
            // treat the undotted masculine G as a Q
            outputString.add(Unicode.QA);
          default:
            outputString.add(Unicode.GA);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_GA_FVS2_TOOTH:
          case Menksoft.MEDI_GA_FVS2_STEM:
            outputString.add(Unicode.GA);

            final gender = MongolCode.genderOf(word: outputString);
            if (gender == Gender.MASCULINE) {
              outputString.add(Unicode.FVS3);
            }
          default:
            outputString.add(Unicode.GA);
        }
      case Location.FINAL:
        outputString.add(Unicode.GA);
        final gender = MongolCode.genderOf(word: outputString);
        switch (currentChar) {
          case Menksoft.FINA_GA_FVS1:
            if (gender == Gender.NEUTER) {
              outputString.add(Unicode.FVS1);
            }
          case Menksoft.FINA_GA_FVS2:
            if (gender == Gender.MASCULINE) {
              outputString.add(Unicode.FVS2);
            }
          case Menksoft.MEDI_GA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_GA_FVS1_STEM:
          case Menksoft.MEDI_GA_FVS1_TOOTH:
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_GA_FVS3_MVS:
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_GA_FVS2_STEM:
          case Menksoft.MEDI_GA_FVS2_TOOTH:
            outputString.add(Unicode.FVS3);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
        }
    }
  }

  void _handleMa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_MA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.MA);
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.MA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.MA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.MA);
          default:
            outputString.add(Unicode.MA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.MA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_MA_BP:
          case Menksoft.MEDI_MA_STEM_LONG:
          case Menksoft.MEDI_MA_TOOTH:
            outputString.add(Unicode.MA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.MA);
        }
    }
  }

  void _handleLa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_LA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.LA);
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.LA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.LA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.LA);
          default:
            outputString.add(Unicode.LA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.LA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_LA_BP:
          case Menksoft.MEDI_LA_STEM_LONG:
          case Menksoft.MEDI_LA_TOOTH:
            outputString.add(Unicode.LA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.LA);
        }
    }
  }

  void _handleSa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_SA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SA);
          case Menksoft.FINA_SA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SA);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.SA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SA);
          default:
            outputString.add(Unicode.SA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.SA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_SA_STEM:
          case Menksoft.MEDI_SA_TOOTH:
            outputString.add(Unicode.SA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.SA);
        }
    }
  }

  void _handleSha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_SHA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SHA);
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SHA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.SHA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.SHA);
          default:
            outputString.add(Unicode.SHA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.SHA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_SHA_STEM:
          case Menksoft.MEDI_SHA_TOOTH:
            outputString.add(Unicode.SHA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.SHA);
        }
    }
  }

  void _handleTa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_TA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TA);
          case Menksoft.MEDI_TA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.TA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TA);
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TA);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.TA);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.add(Unicode.TA);
            outputString.add(Unicode.FVS1);
          default:
            outputString.add(Unicode.TA);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_TA:
            outputString.add(Unicode.TA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_TA_FVS1_STEM:
          case Menksoft.MEDI_TA_FVS1_TOOTH:
            outputString.add(Unicode.TA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.TA);
        }
    }
  }

  void _handleDa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.INIT_DA_STEM:
          case Menksoft.INIT_DA_TOOTH:
            // replace isolated DA that looks like TA with actual TA
            outputString.add(Unicode.TA);
          case Menksoft.FINA_DA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.DA);
          case Menksoft.FINA_DA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.DA);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_DA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.DA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_DA_FVS1:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.DA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.DA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_DA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.DA);
          case Menksoft.INIT_DA_FVS1:
          case Menksoft.MEDI_DA_FVS1:
            outputString.add(Unicode.DA);
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.FVS1);
            }
          default:
            outputString.add(Unicode.DA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.DA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_DA:
            outputString.add(Unicode.DA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_DA_FVS1:
            outputString.add(Unicode.DA);
            outputString.add(Unicode.FVS1);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.DA);
        }
    }
  }

  void _handleCha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_CHA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.CHA);
          default:
            outputString.add(Unicode.CHA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.CHA);
      case Location.MEDIAL:
        outputString.add(Unicode.CHA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_CHA:
            outputString.add(Unicode.CHA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.CHA);
        }
    }
  }

  void _handleJa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_JA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.JA);
          case Menksoft.MEDI_JA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.JA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_JA_MVS:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.I);
          default:
            outputString.add(Unicode.JA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.INIT_JA_STEM:
          case Menksoft.INIT_JA_TOOTH:
            // if user used a JA to write a YA suffix then replace it
            if (_startsWithMvs(outputString)) {
              outputString.add(Unicode.YA);
            } else {
              outputString.add(Unicode.JA);
            }
          case Menksoft.MEDI_JA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.JA);
          default:
            outputString.add(Unicode.JA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.JA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_JA:
            outputString.add(Unicode.JA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.MEDI_JA_MVS:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.add(Unicode.I);
          default:
            outputString.add(Unicode.JA);
        }
    }
  }

  void _handleYa(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.ISOL_YA_FVS1:
            outputString.add(Unicode.YA);
            outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_YA_FVS2:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.YA);
            outputString.add(Unicode.FVS2);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          case Menksoft.FINA_YA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.YA);
          default:
            outputString.add(Unicode.YA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA:
            outputString.add(Unicode.YA);
            if (!_startsWithMvs(outputString)) {
              outputString.add(Unicode.FVS1);
            }
          default:
            outputString.add(Unicode.YA);
        }
      case Location.MEDIAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA_FVS1:
            outputString.add(Unicode.YA);
            if (Menksoft.isMenksoftVowel(charAbove) &&
                Menksoft.isMenksoftI(charBelow)) {
              // override context rule that would make a normal Y straight
              outputString.add(Unicode.FVS1);
            }
          default:
            outputString.add(Unicode.YA);
        }
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_YA:
            outputString.add(Unicode.YA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.YA);
        }
    }
  }

  void _handleRa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_RA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.RA);
          default:
            outputString.add(Unicode.RA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.RA);
      case Location.MEDIAL:
        outputString.add(Unicode.RA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_RA_STEM:
          case Menksoft.MEDI_RA_TOOTH:
            outputString.add(Unicode.RA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.RA);
        }
    }
  }

  void _handleWa(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_WA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.WA);
          case Menksoft.FINA_WA_FVS1:
            // an isolate final WA looks like a final U so make it one
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.U);
          default:
            outputString.add(Unicode.WA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.WA);
      case Location.MEDIAL:
        // replace W between two consonants with EE
        if (Menksoft.isMenksoftConsonant(charAbove) &&
            Menksoft.isMenksoftConsonant(charBelow)) {
          outputString.add(Unicode.EE);
        } else {
          outputString.add(Unicode.WA);
        }
      case Location.FINAL:
        switch (currentChar) {
          // case Menksoft.FINA_WA_MVS:
          //   outputString.add(Unicode.WA);
          //   outputString.add(Unicode.FVS1);
          case Menksoft.MEDI_WA:
            outputString.add(Unicode.WA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.WA);
        }
    }
  }

  void _handleFa(List<int> outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_FA) {
      outputString.add(Unicode.MONGOLIAN_NIRUGU);
    }
    outputString.add(Unicode.FA);
  }

  void _handleKa(List<int> outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_KA) {
      outputString.add(Unicode.MONGOLIAN_NIRUGU);
    }
    outputString.add(Unicode.KA);
  }

  void _handleKha(List<int> outputString, int currentChar) {
    if (_location == Location.ISOLATE && currentChar == Menksoft.FINA_KHA) {
      outputString.add(Unicode.MONGOLIAN_NIRUGU);
    }
    outputString.add(Unicode.KHA);
  }

  void _handleTsa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_TSA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.TSA);
          default:
            outputString.add(Unicode.TSA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.TSA);
      case Location.MEDIAL:
        outputString.add(Unicode.TSA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_TSA:
            outputString.add(Unicode.TSA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.TSA);
        }
    }
  }

  void _handleZa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_ZA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.ZA);
          default:
            outputString.add(Unicode.ZA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.ZA);
      case Location.MEDIAL:
        outputString.add(Unicode.ZA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_ZA:
            outputString.add(Unicode.ZA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.ZA);
        }
    }
  }

  void _handleHaa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_HAA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.HAA);
          case Menksoft.MEDI_HAA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.HAA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.HAA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_HAA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.HAA);
          default:
            outputString.add(Unicode.HAA);
        }
      case Location.MEDIAL:
        outputString.add(Unicode.HAA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_HAA:
            outputString.add(Unicode.HAA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.HAA);
        }
    }
  }

  void _handleZra(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.FINA_ZRA:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.ZRA);
          default:
            outputString.add(Unicode.ZRA);
        }
      case Location.INITIAL:
        outputString.add(Unicode.ZRA);
      case Location.MEDIAL:
        outputString.add(Unicode.ZRA);
      case Location.FINAL:
        switch (currentChar) {
          case Menksoft.MEDI_ZRA:
            outputString.add(Unicode.ZRA);
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
          default:
            outputString.add(Unicode.ZRA);
        }
    }
  }

  void _handleLha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.ISOLATE:
        switch (currentChar) {
          case Menksoft.MEDI_LHA:
          case Menksoft.MEDI_LHA_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.LHA);
          default:
            outputString.add(Unicode.LHA);
        }
      case Location.INITIAL:
        switch (currentChar) {
          case Menksoft.MEDI_LHA:
          case Menksoft.MEDI_LHA_BP:
            outputString.add(Unicode.MONGOLIAN_NIRUGU);
            outputString.add(Unicode.LHA);
          default:
            outputString.add(Unicode.LHA);
        }
      default:
        outputString.add(Unicode.LHA);
    }
  }

  void _handleZhi(List<int> outputString) {
    outputString.add(Unicode.ZHI);
  }

  void _handleChi(List<int> outputString) {
    outputString.add(Unicode.CHI);
  }

  void _handleSpace(List<int> outputString, int currentChar, int charBelow) {
    if (currentChar == Menksoft.NONBREAKING_SPACE &&
        Menksoft.isMenksoftLetter(charBelow)) {
      outputString.add(Unicode.MVS);
    } else {
      outputString.add(SPACE);
    }
  }

  void _handlePunctuation(List<int> outputString, int currentChar) {
    switch (currentChar) {
      case Menksoft.BIRGA:
        outputString.add(Unicode.MONGOLIAN_BIRGA);
      case Menksoft.ELLIPSIS:
        outputString.add(Unicode.MONGOLIAN_ELLIPSIS);
      case Menksoft.COMMA:
        outputString.add(Unicode.MONGOLIAN_COMMA);
      case Menksoft.FULL_STOP:
        outputString.add(Unicode.MONGOLIAN_FULL_STOP);
      case Menksoft.COLON:
        outputString.add(Unicode.MONGOLIAN_COLON);
      case Menksoft.FOUR_DOTS:
        outputString.add(Unicode.MONGOLIAN_FOUR_DOTS);
      case Menksoft.TODO_SOFT_HYPHEN:
        outputString.add(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      case Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER:
        outputString.add(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      case Menksoft.MANCHU_COMMA:
        outputString.add(Unicode.MONGOLIAN_MANCHU_COMMA);
      case Menksoft.MANCHU_FULL_STOP:
        outputString.add(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      case Menksoft.NIRUGU:
        outputString.add(Unicode.MONGOLIAN_NIRUGU);
      case Menksoft.BIRGA_WITH_ORNAMENT:
        outputString.addAll([Unicode.MONGOLIAN_BIRGA, Unicode.FVS1]);
      case Menksoft.ROTATED_BIRGA:
        outputString.addAll([Unicode.MONGOLIAN_BIRGA, Unicode.FVS2]);
      case Menksoft.DOUBLE_BIRGA_WITH_ORNAMENT:
        outputString.addAll([Unicode.MONGOLIAN_BIRGA, Unicode.FVS3]);
      case Menksoft.TRIPLE_BIRGA_WITH_ORNAMENT:
        outputString.addAll([Unicode.MONGOLIAN_BIRGA, Unicode.FVS4]);
      case Menksoft.MIDDLE_DOT:
        outputString.add(Unicode.MIDDLE_DOT);
      case Menksoft.ZERO:
        outputString.add(Unicode.MONGOLIAN_DIGIT_ZERO);
      case Menksoft.ONE:
        outputString.add(Unicode.MONGOLIAN_DIGIT_ONE);
      case Menksoft.TWO:
        outputString.add(Unicode.MONGOLIAN_DIGIT_TWO);
      case Menksoft.THREE:
        outputString.add(Unicode.MONGOLIAN_DIGIT_THREE);
      case Menksoft.FOUR:
        outputString.add(Unicode.MONGOLIAN_DIGIT_FOUR);
      case Menksoft.FIVE:
        outputString.add(Unicode.MONGOLIAN_DIGIT_FIVE);
      case Menksoft.SIX:
        outputString.add(Unicode.MONGOLIAN_DIGIT_SIX);
      case Menksoft.SEVEN:
        outputString.add(Unicode.MONGOLIAN_DIGIT_SEVEN);
      case Menksoft.EIGHT:
        outputString.add(Unicode.MONGOLIAN_DIGIT_EIGHT);
      case Menksoft.NINE:
        outputString.add(Unicode.MONGOLIAN_DIGIT_NINE);
      case Menksoft.QUESTION_EXCLAMATION:
        outputString.add(Unicode.QUESTION_EXCLAMATION);
      case Menksoft.EXCLAMATION_QUESTION:
        outputString.add(Unicode.EXCLAMATION_QUESTION);
      case Menksoft.EXCLAMATION:
        outputString.add(Unicode.FULLWIDTH_EXCLAMATION);
      case Menksoft.QUESTION:
        outputString.add(Unicode.FULLWIDTH_QUESTION);
      case Menksoft.SEMICOLON:
        outputString.add(Unicode.FULLWIDTH_SEMICOLON);
      case Menksoft.LEFT_PARENTHESIS:
        outputString.add(Unicode.FULLWIDTH_LEFT_PARENTHESIS);
      case Menksoft.RIGHT_PARENTHESIS:
        outputString.add(Unicode.FULLWIDTH_RIGHT_PARENTHESIS);
      case Menksoft.LEFT_ANGLE_BRACKET:
        outputString.add(Unicode.LEFT_ANGLE_BRACKET);
      case Menksoft.RIGHT_ANGLE_BRACKET:
        outputString.add(Unicode.RIGHT_ANGLE_BRACKET);
      case Menksoft.LEFT_TORTOISE_SHELL_BRACKET:
        outputString.add(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      case Menksoft.RIGHT_TORTOISE_SHELL_BRACKET:
        outputString.add(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      case Menksoft.LEFT_DOUBLE_ANGLE_BRACKET:
        outputString.add(Unicode.LEFT_DOUBLE_ANGLE_BRACKET);
      case Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET:
        outputString.add(Unicode.RIGHT_DOUBLE_ANGLE_BRACKET);
      case Menksoft.LEFT_WHITE_CORNER_BRACKET:
        outputString.add(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      case Menksoft.RIGHT_WHITE_CORNER_BRACKET:
        outputString.add(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      case Menksoft.FULL_WIDTH_COMMA:
        outputString.add(Unicode.VERTICAL_COMMA);
      case Menksoft.X:
        outputString.add(0x00D7); // FIXME using the multiplication sign?
      case Menksoft.REFERENCE_MARK:
        outputString.add(Unicode.REFERENCE_MARK);
      case Menksoft.EN_DASH:
        outputString.add(Unicode.VERTICAL_EN_DASH);
      case Menksoft.EM_DASH:
        outputString.add(Unicode.VERTICAL_EM_DASH);
      default:
        outputString.add(currentChar);
    }
  }

  bool _isMenksoftSpaceChar(int character) {
    return character == SPACE ||
        character == Menksoft.NONBREAKING_SPACE ||
        character == Menksoft.UNKNOWN_SPACE;
  }
}
