import '../shared/gender.dart';
import '../shared/location.dart';
import '../menksoft/menksoft.dart';
import 'mongol.dart';

const _fvs1 = Mongol.fvs1;
const _fvs2 = Mongol.fvs2;
const _fvs3 = Mongol.fvs3;
const _fvs4 = Mongol.fvs4;

enum _Shape {
  TOOTH, // glyph slants to the left like a tooth (includes medial T/D, R, W, etc)
  STEM, // glyph starts with a vertical stem (includes B, O/U, CH, etc)
  ROUND, // glyph top is round (includes feminine Q/G)
}

/// A class that handles the conversion of a single Mongolian word from Unicode to Menksoft.
///
/// Assumptions:
/// 1. This is a valid Mongolian word.
/// 2. This is not a suffix or fixed word.
class MongolWord {
  Gender? _gender;
  late Location _location;
  late int _length;
  late List<int> _inputWord;
  late int _fvs;
  late _Shape _glyphShapeBelow;
  int _firstLetterIndex = -1;
  int _lastLetterIndex = -1;

  /// mongolWord is unicode
  MongolWord(List<int> mongolWord) {
    _inputWord = mongolWord;
    _gender = Gender.neuter;
    _length = mongolWord.length;
    _fvs = 0;
    _glyphShapeBelow = _Shape.STEM;
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
    if (_firstLetterIndex == _lastLetterIndex) return Location.isol;
    if (currentIndex <= _firstLetterIndex) return Location.init;
    if (currentIndex >= _lastLetterIndex) return Location.fina;
    return Location.medi;
  }

  List<int> convertToMenksoftCode() {
    if (_firstLetterIndex < 0 || _lastLetterIndex < 0) {
      return [];
    }
    final renderedWord = <int>[];
    var charBelow = 0;

    // start at the bottom of the word and work up
    // (easier to record glyph shape this way)
    for (var i = _length - 1; i >= 0; i--) {
      int currentChar = _inputWord[i];
      _location = _getLocation(i);
      int charAbove = _getCharAbove(i);

      // handle each letter separately
      switch (currentChar) {
        case Mongol.a:
          _handleA(renderedWord, charAbove, charBelow);
        case Mongol.e:
          _handleE(renderedWord, charAbove, charBelow);
        case Mongol.i:
          _handleI(renderedWord, i, charAbove, charBelow);
        case Mongol.o:
          _handleO(renderedWord, charAbove, charBelow);
        case Mongol.u:
          _handleU(renderedWord, charAbove, charBelow);
        case Mongol.oe:
          _handleOE(renderedWord, i, charAbove, charBelow);
        case Mongol.ue:
          _handleUE(renderedWord, i, charAbove, charBelow);
        case Mongol.ee:
          _handleEE(renderedWord);
        case Mongol.na:
          _handleNA(renderedWord, i, charBelow);
        case Mongol.ang:
          _handleANG(renderedWord);
        case Mongol.ba:
          _handleBA(renderedWord, charBelow);
        case Mongol.pa:
          _handlePA(renderedWord, charBelow);
        case Mongol.qa:
          _handleQA(renderedWord, i, charAbove, charBelow);
        case Mongol.ga:
          _handleGA(renderedWord, i, charAbove, charBelow);
        case Mongol.ma:
          _handleMA(renderedWord, i, charAbove, charBelow);
        case Mongol.la:
          _handleLA(renderedWord, i, charAbove, charBelow);
        case Mongol.sa:
          _handleSA(renderedWord, charBelow);
        case Mongol.sha:
          _handleSHA(renderedWord, charBelow);
        case Mongol.ta:
          _handleTA(renderedWord);
        case Mongol.da:
          _handleDA(renderedWord, charBelow);
        case Mongol.cha:
          _handleCHA(renderedWord);
        case Mongol.ja:
          _handleJA(renderedWord, charBelow);
        case Mongol.ya:
          _handleYA(renderedWord, i, charAbove, charBelow);
        case Mongol.ra:
          _handleRA(renderedWord, charBelow);
        case Mongol.wa:
          _handleWA(renderedWord, charBelow);
        case Mongol.fa:
          _handleFA(renderedWord, charBelow);
        case Mongol.ka:
          _handleKA(renderedWord, charBelow);
        case Mongol.kha:
          _handleKHA(renderedWord, charBelow);
        case Mongol.tsa:
          _handleTSA(renderedWord);
        case Mongol.za:
          _handleZA(renderedWord);
        case Mongol.haa:
          _handleHAA(renderedWord);
        case Mongol.zra:
          _handleZRA(renderedWord);
        case Mongol.lha:
          _handleLHA(renderedWord, i, charAbove);
        case Mongol.zhi:
          _handleZHI(renderedWord);
        case Mongol.chi:
          _handleCHI(renderedWord);
        case Mongol.nnbs:
          _handleNNBS(renderedWord);
        case Mongol.nirugu:
          _handleNirugu(renderedWord);
        case Mongol.zwj:
          _handleNonPrintingChar(renderedWord);
        case Mongol.mvs:
          _handleMvs(renderedWord, i);
        case Mongol.fvs1:
        case Mongol.fvs2:
        case Mongol.fvs3:
        case Mongol.fvs4:
          _handleNonPrintingChar(renderedWord);
          _fvs = currentChar;
          continue;
        case Mongol.birga:
          _handleBirga(renderedWord);
        default:
          // catch any other characters and just insert them directly
          renderedWord.add(currentChar);
      }

      charBelow = currentChar;
      _fvs = 0;
    }

    // Glyphs were added from the bottom up
    // so need to reverse them before returning.
    return renderedWord.reversed.toList();
  }

  int _getCharAbove(int index) {
    final charAbove = (index > 0) ? _inputWord[index - 1] : 0;
    if (Mongol.isFVS(charAbove)) {
      return (index > 1) ? _inputWord[index - 2] : 0;
    } else {
      return charAbove;
    }
  }

  void _handleA(List<int> renderedWord, int charAbove, int charBelow) {
    _gender = Gender.masculine;
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.aIsolFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.aIsolFvs2);
        } else if (_fvs == _fvs3) {
          renderedWord.add(Menksoft.aIsol);
        } else {
          renderedWord.add(Menksoft.aIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.aInitFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.aInit);
        } else {
          renderedWord.add(Menksoft.aInit);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.aMediFvs1);
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.aFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.aFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.aMediBp);
          } else {
            renderedWord.add(Menksoft.aMedi);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.aFinaFvs1); // left sweeping tail
          _glyphShapeBelow = _Shape.STEM;
        } else if (charAbove == _fvs2) {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.aFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.aFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        } else if (charAbove == Mongol.mvs) {
          renderedWord.add(Menksoft.aFinaMvs);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.aFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.aFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        }
    }
  }

  void _handleE(List<int> renderedWord, int charAbove, int charBelow) {
    _gender = Gender.feminine;
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.eIsolFvs1); // double tooth
        } else {
          renderedWord.add(Menksoft.eIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.eInitFvs1); // double tooth
        } else {
          renderedWord.add(Menksoft.eInit);
        }
      case Location.medi:
        if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.eFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.eFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.eMediBp);
          } else {
            renderedWord.add(Menksoft.eMedi);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.eFinaFvs1); // left sweeping tail
          _glyphShapeBelow = _Shape.STEM;
        } else if (_fvs == _fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.eFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.eFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        } else if (charAbove == Mongol.mvs) {
          renderedWord.add(Menksoft.eFinaMvs);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.eFinaBp);
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.eFina);
            _glyphShapeBelow = _Shape.STEM;
          }
        }
    }
  }

  void _handleI(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.iIsolFvs1);
        } else {
          // FVS2 is defined as dotted I but no glyph so using normal
          renderedWord.add(Menksoft.iIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.iInitFvs1);
        } else {
          renderedWord.add(Menksoft.iInit);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.iMediFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.iMediFvs2);
        } else if (_fvs == _fvs3) {
          renderedWord.add(Menksoft.iMedi);
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.iFina);
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.iMediBp);
          } else if (_contextCallsForDoubleToothI(
            positionInWord,
            charAbove,
            charBelow,
          )) {
            // *** AI, EI, OI, UI, OEI, UEI
            // medial double tooth I diphthong rule ***
            renderedWord.add(Menksoft.iMediFvs2); // double tooth
          } else {
            // normal single tooth I
            renderedWord.add(Menksoft.iMedi);
          }
        }
      case Location.fina:
        if (_isRoundLetterIncludingQG(charAbove)) {
          renderedWord.add(Menksoft.iFinaBp);
        } else {
          renderedWord.add(Menksoft.iFina);
        }
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  bool _contextCallsForDoubleToothI(
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    if (charBelow == Mongol.i) return false;
    if (charAbove == Mongol.a ||
        charAbove == Mongol.e ||
        charAbove == Mongol.o ||
        charAbove == Mongol.u) {
      return true;
    }
    // or non long toothed OE/UE
    return ((charAbove == Mongol.oe || charAbove == Mongol.ue) &&
        !Mongol.needsLongToothU(_inputWord, positionInWord - 1));
  }

  void _handleO(List<int> renderedWord, int charAbove, int charBelow) {
    _gender = Gender.masculine;
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.oIsol);
      case Location.init:
        renderedWord.add(Menksoft.oInit);
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.oMediFvs1); // tooth + O
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.oFinaFvs1Bp);
          } else {
            renderedWord.add(Menksoft.oFina);
          }
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.oMediBp);
          } else {
            renderedWord.add(Menksoft.oMedi);
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.oFinaFvs1); // round o
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.oFina);
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.oFinaFvs1Bp);
          } else {
            renderedWord.add(Menksoft.oFina);
          }
        }
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleU(List<int> renderedWord, int charAbove, int charBelow) {
    _gender = Gender.masculine;
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.uIsolFvs1);
        } else {
          // FVS2 is defined as dotted U but no glyph so using normal
          renderedWord.add(Menksoft.uIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.uInitFvs1);
        } else {
          renderedWord.add(Menksoft.uInit);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.uMediFvs1); // tooth + O
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.uFinaFvs1Bp);
          } else {
            renderedWord.add(Menksoft.uFina);
          }
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.uMediBp);
          } else {
            renderedWord.add(Menksoft.uMedi);
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.uFinaFvs1Bp);
          } else {
            renderedWord.add(Menksoft.uFinaFvs1); // round o
          }
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.uFina);
        } else {
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.uFinaFvs1Bp);
          } else {
            renderedWord.add(Menksoft.uFina);
          }
        }
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleOE(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    _gender = Gender.feminine;
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.oeIsolFvs1);
        } else {
          renderedWord.add(Menksoft.oeIsol);
        }
      case Location.init:
        renderedWord.add(Menksoft.oeInit);
      case Location.medi:
        if (_fvs == _fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(
              Menksoft.oeMediFvs1Bp,
            ); // first syllable long tooth OE after BPFK
          } else {
            renderedWord.add(
              Menksoft.oeMediFvs1,
            ); // first syllable long tooth OE
          }
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.oeMediFvs2); // extra tooth for 2 part name
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.oeFinaFvs2Bp);
          } else {
            renderedWord.add(Menksoft.oeFina);
          }
        } else {
          if (Mongol.needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.add(
                Menksoft.oeMediFvs1Bp,
              ); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.add(
                Menksoft.oeMediFvs1,
              ); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.oeMediBp);
          } else {
            renderedWord.add(Menksoft.oeMedi);
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(
              Menksoft.oeFinaFvs1Bp,
            ); // round o with tail after BPFK
          } else {
            renderedWord.add(Menksoft.oeFinaFvs1); // round o with tail
          }
        } else if (_fvs == _fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.oeFinaFvs2Bp);
          } else {
            renderedWord.add(Menksoft.oeFinaFvs2);
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.oeFinaBp);
          } else {
            renderedWord.add(Menksoft.oeFina);
          }
        }
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleUE(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    _gender = Gender.feminine;
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.ueIsolFvs1); // like E+UE
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.ueIsolFvs2);
        } else {
          renderedWord.add(Menksoft.ueIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.ueInitFvs1);
        } else {
          renderedWord.add(Menksoft.ueInit);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(
              Menksoft.ueMediFvs1Bp,
            ); // first syllable long tooth UE after BPFK
          } else {
            renderedWord.add(
              Menksoft.ueMediFvs1,
            ); // first syllable long tooth UE
          }
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.ueMediFvs2); // extra tooth for 2 part name
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          if (_isRoundLetter(charAbove)) {
            renderedWord.add(Menksoft.ueFinaFvs2Bp);
          } else {
            renderedWord.add(Menksoft.ueFina);
          }
        } else {
          if (Mongol.needsLongToothU(_inputWord, positionInWord)) {
            // *** first syllable long tooth rule ***
            if (_isRoundLetterIncludingQG(charAbove)) {
              renderedWord.add(
                Menksoft.ueMediFvs1Bp,
              ); // first syllable long tooth UE after BPFK
            } else {
              renderedWord.add(
                Menksoft.ueMediFvs1,
              ); // first syllable long tooth UE
            }
          } else if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.ueMediBp);
          } else {
            renderedWord.add(Menksoft.ueMedi);
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(
              Menksoft.ueFinaFvs1Bp,
            ); // round o with tail after BPFK
          } else {
            renderedWord.add(Menksoft.ueFinaFvs1); // round o with tail
          }
        } else if (_fvs == _fvs2) {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.ueFinaFvs2Bp);
          } else {
            renderedWord.add(Menksoft.ueFinaFvs2);
          }
        } else {
          if (_isRoundLetterIncludingQG(charAbove)) {
            renderedWord.add(Menksoft.ueFinaBp);
          } else {
            renderedWord.add(Menksoft.ueFina);
          }
        }
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleEE(List<int> renderedWord) {
    _gender = Gender.feminine;
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.eeIsol);
      case Location.init:
        renderedWord.add(Menksoft.eeInit);
      case Location.medi:
        renderedWord.add(Menksoft.eeMedi);
      case Location.fina:
        renderedWord.add(Menksoft.eeFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleNA(List<int> renderedWord, int positionInWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.naIsolFvs1);
        } else {
          renderedWord.add(Menksoft.naIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.naInitFvs1Stem);
          } else {
            renderedWord.add(Menksoft.naInitFvs1Tooth);
          }
        } else {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.naInitStem); // normal stem
          } else {
            renderedWord.add(Menksoft.naInitTooth); // normal tooth
          }
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          if (charBelow == Mongol.mvs) {
            renderedWord.add(Menksoft.naMediFvs1Mvs);
            _glyphShapeBelow = _Shape.STEM;
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.naMediFvs1Stem); // dotted stem
            } else {
              renderedWord.add(Menksoft.naMediFvs1Tooth); // dotted tooth
            }
            _glyphShapeBelow = _Shape.TOOTH;
          }
        } else if (_fvs == _fvs2) {
          if (charBelow == Mongol.mvs) {
            renderedWord.add(Menksoft.naMediFvs2Mvs);
            _glyphShapeBelow = _Shape.STEM;
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.naMediStem); // normal non-dotted stem
            } else {
              renderedWord.add(Menksoft.naMediTooth); // normal non-dotted tooth
            }
            _glyphShapeBelow = _Shape.TOOTH;
          }
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.naMediFvs1Mvs);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          // *** dot N before vowel rule ***
          if (Mongol.isVowel(charBelow)) {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.naMediFvs1Stem); // dotted stem
            } else {
              renderedWord.add(Menksoft.naMediFvs1Tooth); // dotted tooth
            }
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.naMediStem); // normal non-dotted stem
            } else {
              renderedWord.add(Menksoft.naMediTooth); // normal non-dotted tooth
            }
          }
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.naFinaFvs1);
        } else {
          renderedWord.add(Menksoft.naFina);
        }
        _glyphShapeBelow = _Shape.STEM;
    }
  }

  void _handleANG(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.angIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.ROUND) {
          renderedWord.add(Menksoft.angInitRound);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.angInitStem);
        } else {
          renderedWord.add(Menksoft.angInitTooth);
        }
      case Location.medi:
        if (_glyphShapeBelow == _Shape.ROUND) {
          renderedWord.add(Menksoft.angMediRound);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.angMediStem);
        } else {
          renderedWord.add(Menksoft.angMediTooth);
        }
      case Location.fina:
        renderedWord.add(Menksoft.angFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleBA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.baIsol);
      case Location.init:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.baInitOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.baInitStem);
        } else {
          renderedWord.add(Menksoft.baInitTooth);
        }
      case Location.medi:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.baMediOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.baMediStem);
        } else {
          renderedWord.add(Menksoft.baMediTooth);
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.baFinaFvs1); // o with left sweep
        } else {
          renderedWord.add(Menksoft.baFina);
        }
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handlePA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.paIsol);
      case Location.init:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.paInitOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.paInitStem);
        } else {
          renderedWord.add(Menksoft.paInitTooth);
        }
      case Location.medi:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.paMediOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.paMediStem);
        } else {
          renderedWord.add(Menksoft.paMediTooth);
        }
      case Location.fina:
        renderedWord.add(Menksoft.paFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleQA(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.qaIsolFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.qaIsolFvs2);
        } else if (_fvs == _fvs4) {
          renderedWord.add(Menksoft.qaIsolFvs4);
        } else {
          renderedWord.add(Menksoft.qaIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          // dotted masculine
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.qaInitFvs1Stem); // dotted masculine stem
          } else {
            renderedWord.add(
              Menksoft.qaInitFvs1Tooth,
            ); // dotted masculine tooth
          }
        } else if (_fvs == _fvs2) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.qaInitFvs2Ou); // feminine for OU
          } else {
            renderedWord.add(Menksoft.qaInitFvs2); // feminine
          }
        } else if (_fvs == _fvs3) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.qaInitStem); // normal (masculine) stem
          } else {
            renderedWord.add(Menksoft.qaInitTooth); // normal (masculine) tooth
          }
        } else if (_fvs == _fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.qaInitFvs4Ou);
          } else {
            renderedWord.add(Menksoft.qaInitFvs4);
          }
        } else {
          if (Mongol.isFeminineVowel(charBelow) || charBelow == Mongol.i) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.qaInitFvs2Ou); // feminine for OU
            } else {
              renderedWord.add(Menksoft.qaInitFvs2); // feminine
            }
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.qaInitStem); // normal (masculine) stem
            } else {
              renderedWord.add(
                Menksoft.qaInitTooth,
              ); // normal (masculine) tooth
            }
          }
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          if (charBelow == Mongol.mvs) {
            // dotted masculine MVS
            renderedWord.add(Menksoft.qaMediFvs1Mvs);
          } else {
            // dotted masculine
            renderedWord.add(Menksoft.qaMediFvs1);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_fvs == _fvs2) {
          if (Mongol.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.qaMediFvs2Cons);
          } else if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.qaMediFvs2Ou);
          } else {
            renderedWord.add(Menksoft.qaMediFvs2);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_fvs == _fvs3) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(
              Menksoft.qaMediStem,
            ); // normal stem (masculine double tooth)
          } else {
            renderedWord.add(
              Menksoft.qaMediTooth,
            ); // normal tooth (masculine double tooth)
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_fvs == _fvs4) {
          // dotted feminine
          if (Mongol.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.qaMediFvs4Cons);
          } else if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.qaMediFvs4Ou);
          } else {
            renderedWord.add(Menksoft.qaMediFvs4);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.qaMediMvs);
          _glyphShapeBelow = _Shape.TOOTH;
        } else {
          if (Mongol.isFeminineVowel(charBelow) || charBelow == Mongol.i) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.qaMediFvs2Ou); // feminine for OU
            } else {
              renderedWord.add(Menksoft.qaMediFvs2); // feminine
            }
            _glyphShapeBelow = _Shape.ROUND;
          } else if (Mongol.isMasculineVowel(charBelow)) {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(
                Menksoft.qaMediStem,
              ); // normal stem (masculine double tooth)
            } else {
              renderedWord.add(
                Menksoft.qaMediTooth,
              ); // normal tooth (masculine double tooth)
            }
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            // consonant
            // does medial QA before a consonant ever happen
            // in a real word?
            if (_gender == Gender.neuter) {
              _gender = genderOf(word: _inputWord, beforeIndex: positionInWord);
            }
            if (_gender == Gender.feminine ||
                (_gender == Gender.neuter && charAbove == Mongol.i)) {
              renderedWord.add(
                Menksoft.qaMediFvs2Cons,
              ); // feminine final before consonant
            } else {
              if (_glyphShapeBelow == _Shape.STEM) {
                renderedWord.add(
                  Menksoft.qaMediStem,
                ); // normal stem (masculine double tooth)
              } else {
                renderedWord.add(
                  Menksoft.qaMediTooth,
                ); // normal tooth (masculine double tooth)
              }
            }
            _glyphShapeBelow = _Shape.TOOTH;
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.qaFinaFvs1);
        } else {
          renderedWord.add(Menksoft.qaFina);
        }
        _glyphShapeBelow = _Shape.TOOTH;
    }
  }

  void _handleGA(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.gaIsolFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.gaIsolFvs2);
        } else if (_fvs == _fvs4) {
          renderedWord.add(Menksoft.gaIsolFvs4);
        } else {
          renderedWord.add(Menksoft.gaIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(
              Menksoft.gaInitFvs1Stem,
            ); // undotted masculine stem
          } else {
            renderedWord.add(
              Menksoft.gaInitFvs1Tooth,
            ); // undotted masculine tooth
          }
        } else if (_fvs == _fvs2) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.gaInitFvs2Ou);
          } else {
            renderedWord.add(Menksoft.gaInitFvs2);
          }
          _glyphShapeBelow = _Shape.ROUND;
        } else if (_fvs == _fvs3) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.gaInitStem); // normal (masculine) stem
          } else {
            renderedWord.add(Menksoft.gaInitTooth); // normal (masculine) tooth
          }
        } else if (_fvs == _fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.gaInitFvs4Ou);
          } else {
            renderedWord.add(Menksoft.gaInitFvs4);
          }
          _glyphShapeBelow = _Shape.ROUND;
        } else {
          if (Mongol.isFeminineVowel(charBelow) || charBelow == Mongol.i) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.gaInitFvs2Ou); // feminine for OU
            } else {
              renderedWord.add(Menksoft.gaInitFvs2); // feminine
            }
            _glyphShapeBelow = _Shape.ROUND;
          } else {
            if (Mongol.isConsonant(charBelow)) {
              // *** feminine form before consonant in foreign words ***
              renderedWord.add(Menksoft.gaInitFvs2); // feminine
              _glyphShapeBelow = _Shape.ROUND;
            } else if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.gaInitStem); // normal (masculine) stem
            } else {
              renderedWord.add(
                Menksoft.gaInitTooth,
              ); // normal (masculine) tooth
            }
          }
        }
        _adjustMaLaAfterRoundedGa(renderedWord);
      case Location.medi:
        if (_fvs == _fvs1) {
          if (charBelow == Mongol.mvs) {
            renderedWord.add(Menksoft.gaMediFvs1Mvs); // dotted mvs
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(
                Menksoft.gaMediFvs1Stem,
              ); // dotted masculine stem
            } else {
              renderedWord.add(
                Menksoft.gaMediFvs1Tooth,
              ); // dotted masculine tooth
            }
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_fvs == _fvs2) {
          if (Mongol.isVowel(charBelow)) {
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.gaMediFvs2Ou);
            } else {
              renderedWord.add(Menksoft.gaMediFvs2);
            }
          } else if (charBelow == Mongol.na ||
              charBelow == Mongol.ma ||
              charBelow == Mongol.la) {
            if (_isFinalNaMaLa(renderedWord.last)) {
              // make exception for words like CHECHEGM_A
              renderedWord.add(Menksoft.gaMediFvs2Stem);
            } else {
              // BIG Fem G looks better for medial N, M, L
              renderedWord.add(Menksoft.gaMediFvs2);
            }
          } else {
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(Menksoft.gaMediFvs2Stem);
            } else {
              renderedWord.add(Menksoft.faMediFvs2Tooth);
            }
          }
          _glyphShapeBelow = _Shape.ROUND;
        } else if (_fvs == _fvs3) {
          if (charBelow == Mongol.mvs) {
            renderedWord.add(Menksoft.gaMediFvs3Mvs);
          } else {
            renderedWord.add(Menksoft.gaMedi);
          }
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_fvs == _fvs4) {
          if (_isOuVowel(charBelow)) {
            renderedWord.add(Menksoft.gaMediFvs4Ou);
          } else if (Mongol.isConsonant(charBelow)) {
            renderedWord.add(Menksoft.gaMediFvs4Cons);
          } else {
            renderedWord.add(Menksoft.gaMediFvs4);
          }
          _glyphShapeBelow = _Shape.ROUND;
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.gaMediFvs3Mvs);
          _glyphShapeBelow = _Shape.TOOTH;
        } else {
          // no FVS, just apply context rules
          if (Mongol.isFeminineVowel(charBelow) || charBelow == Mongol.i) {
            // *** feminine GA rule ***
            if (_isOuVowel(charBelow)) {
              renderedWord.add(Menksoft.gaMediFvs2Ou); // feminine for OU
            } else {
              renderedWord.add(Menksoft.gaMediFvs2); // feminine
            }
            _glyphShapeBelow = _Shape.ROUND;
          } else if (Mongol.isMasculineVowel(charBelow)) {
            // *** dotted masculine GA rule ***
            if (_glyphShapeBelow == _Shape.STEM) {
              renderedWord.add(
                Menksoft.gaMediFvs1Stem,
              ); // dotted masculine stem
            } else {
              renderedWord.add(
                Menksoft.gaMediFvs1Tooth,
              ); // dotted masculine tooth
            }
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            // consonant
            if (_gender == Gender.neuter ||
                Mongol.isMasculineVowel(charAbove)) {
              _gender = genderOf(word: _inputWord, beforeIndex: positionInWord);
            }
            // *** medial GA before consonant rule ***
            if (_gender == Gender.feminine ||
                // Defaulting to feminine form for I
                (_gender == Gender.neuter && charAbove == Mongol.i) ||
                // treat a G between two consonants as feminine (as in ANGGLI)
                Mongol.isConsonant(charAbove) ||
                charAbove == Mongol.nirugu) {
              if (charBelow == Mongol.na ||
                  charBelow == Mongol.ma ||
                  charBelow == Mongol.la) {
                if (_isFinalNaMaLa(renderedWord.last)) {
                  // make exception for words like CHECHEGM_A
                  renderedWord.add(
                    Menksoft.gaMediFvs2Stem,
                  ); // feminine before consonant stem
                } else {
                  renderedWord.add(
                    Menksoft.gaMediFvs2,
                  ); // BIG Fem G looks better for medial N, M, L
                }
              } else if (_glyphShapeBelow == _Shape.STEM) {
                renderedWord.add(
                  Menksoft.gaMediFvs2Stem,
                ); // feminine before consonant stem
              } else {
                renderedWord.add(
                  Menksoft.faMediFvs2Tooth,
                ); // feminine before consonant tooth
              }
              _glyphShapeBelow = _Shape.ROUND;
            } else {
              renderedWord.add(Menksoft.gaMedi); // normal (undotted masculine)
              _glyphShapeBelow = _Shape.TOOTH;
            }
          }
        }
        _adjustMaLaAfterRoundedGa(renderedWord);
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.gaFinaFvs1); // masculine
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.gaFinaFvs2); // feminine
        } else if (_fvs == _fvs3) {
          renderedWord.add(Menksoft.gaFinaFvs3); // dotted masculine
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.gaMediFvs3Mvs);
        } else {
          _gender = genderOf(word: _inputWord, beforeIndex: positionInWord);
          if (_gender == Gender.masculine) {
            renderedWord.add(Menksoft.gaFinaFvs1); // masculine
          } else {
            // Defaulting to feminine form for I
            renderedWord.add(Menksoft.gaFina); // feminine
          }
        }
        _glyphShapeBelow = _Shape.TOOTH;
    }
  }

  bool _isFinalNaMaLa(int character) {
    return character == Menksoft.maFina ||
        character == Menksoft.laFina ||
        character == Menksoft.naFina ||
        character == Menksoft.naFinaFvs1;
  }

  void _adjustMaLaAfterRoundedGa(List<int> renderedWord) {
    final length = renderedWord.length;
    if (_glyphShapeBelow == _Shape.ROUND && length > 1) {
      final renderedChar = renderedWord[length - 2];
      if (renderedChar == Menksoft.maMediTooth ||
          renderedChar == Menksoft.maMediStemLong) {
        renderedWord[length - 2] = Menksoft.maMediBp;
      } else if (renderedChar == Menksoft.laMediTooth ||
          renderedChar == Menksoft.laMediStemLong) {
        renderedWord[length - 2] = Menksoft.laMediBp;
      }
    }
  }

  void _handleMA(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.maIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.maInitStemLong);
        } else {
          renderedWord.add(Menksoft.maInitTooth);
        }
      case Location.medi:
        if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.maMediMvs);
          _glyphShapeBelow = _Shape.STEM;
          break;
        }
        // It's quite complicated to check if there is a rounded G above. So
        // instead, later if we have a rounded GA, we'll replace the tooth or
        // stem M with the MEDI_MA_BP. See medial GA logic.
        if (_isRoundLetter(charAbove) || charAbove == Mongol.ang) {
          // tail extended for round letter
          renderedWord.add(Menksoft.maMediBp);
        } else if (_glyphShapeBelow != _Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Mongol.ma ||
            charBelow == Mongol.la ||
            charBelow == Mongol.lha) {
          renderedWord.add(Menksoft.maMediStemLong);
        } else {
          renderedWord.add(Menksoft.maMediTooth);
        }
        _glyphShapeBelow = _Shape.TOOTH;
      case Location.fina:
        renderedWord.add(Menksoft.maFina);
        _glyphShapeBelow = _Shape.STEM;
    }
  }

  void _handleLA(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.laIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.laInitStemLong);
        } else {
          renderedWord.add(Menksoft.laInitTooth);
        }
      case Location.medi:
        if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.laMediMvs);
          _glyphShapeBelow = _Shape.STEM;
          break;
        }
        // It's quite complicated to check if there is a rounded G above. So
        // instead, later if we have a rounded GA, we'll replace the tooth or
        // stem L with the MEDI_LA_BP. See medial GA logic.
        if (_isRoundLetter(charAbove) || charAbove == Mongol.ang) {
          // tail extended for round letter
          renderedWord.add(Menksoft.laMediBp);
        } else if (_glyphShapeBelow != _Shape.TOOTH ||
            // use the longer stem if M/L is below
            charBelow == Mongol.ma ||
            charBelow == Mongol.la ||
            charBelow == Mongol.lha) {
          renderedWord.add(Menksoft.laMediStemLong);
        } else {
          renderedWord.add(Menksoft.laMediTooth);
        }
        _glyphShapeBelow = _Shape.TOOTH;
      case Location.fina:
        renderedWord.add(Menksoft.laFina);
        _glyphShapeBelow = _Shape.STEM;
    }
  }

  void _handleSA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.saIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.saInitStem);
        } else {
          renderedWord.add(Menksoft.saInitTooth);
        }
      case Location.medi:
        if (_fvs == _fvs1 && charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.saMediFvs1Mvs); // short tail
          _glyphShapeBelow = _Shape.STEM;
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.saMediMvs);
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.saMediStem);
          _glyphShapeBelow = _Shape.TOOTH;
        } else {
          renderedWord.add(Menksoft.saMediTooth);
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.saFinaFvs1); // short tail
          _glyphShapeBelow = _Shape.STEM;
        } else {
          renderedWord.add(Menksoft.saFina);
          _glyphShapeBelow = _Shape.TOOTH;
        }
    }
  }

  void _handleSHA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.shaIsolFvs1);
        } else {
          renderedWord.add(Menksoft.shaIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.shaInitFvs1Stem);
          } else {
            renderedWord.add(Menksoft.shaInitFvs1Tooth);
          }
        } else {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.shaInitStem);
          } else {
            renderedWord.add(Menksoft.shaInitTooth);
          }
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.shaMediFvs1Stem);
          } else {
            renderedWord.add(Menksoft.shaMediFvs1Tooth);
          }
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.shaMediMvs);
        } else {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.shaMediStem);
          } else {
            renderedWord.add(Menksoft.shaMediTooth);
          }
        }
      case Location.fina:
        renderedWord.add(Menksoft.shaFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleTA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.taIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.taInitStem);
        } else {
          renderedWord.add(Menksoft.taInitTooth);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.taMediFvs1Stem);
          } else {
            renderedWord.add(Menksoft.taMediFvs1Tooth);
          }
          _glyphShapeBelow = _Shape.STEM;
        } else {
          renderedWord.add(Menksoft.taMedi);
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        renderedWord.add(Menksoft.taFina);
        _glyphShapeBelow = _Shape.STEM;
    }
  }

  void _handleDA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.daIsolFvs1);
        } else {
          renderedWord.add(Menksoft.daIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.daInitFvs1); // left slanting
        } else {
          if (_glyphShapeBelow == _Shape.STEM) {
            renderedWord.add(Menksoft.daInitStem);
          } else {
            renderedWord.add(Menksoft.daInitTooth);
          }
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.daMediFvs1); // left slanting
          _glyphShapeBelow = _Shape.TOOTH;
        } else if (charBelow == Mongol.mvs) {
          // Not defined in Chinese standard
          renderedWord.add(Menksoft.daFina);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          if (Mongol.isVowel(charBelow)) {
            renderedWord.add(Menksoft.daMediFvs1); // left slanting
            _glyphShapeBelow = _Shape.TOOTH;
          } else {
            renderedWord.add(Menksoft.daMedi); // normal (before consonant)
            _glyphShapeBelow = _Shape.STEM;
          }
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.daFinaFvs1); // left slanting
          _glyphShapeBelow = _Shape.TOOTH;
        } else {
          renderedWord.add(Menksoft.daFina); // normal (like o-n)
          _glyphShapeBelow = _Shape.STEM;
        }
    }
  }

  void _handleCHA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.chaIsol);
      case Location.init:
        renderedWord.add(Menksoft.chaInit);
      case Location.medi:
        renderedWord.add(Menksoft.chaMedi);
      case Location.fina:
        renderedWord.add(Menksoft.chaFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleJA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.jaIsolFvs1);
        } else {
          renderedWord.add(Menksoft.jaIsol);
        }
      case Location.init:
        renderedWord.add(Menksoft.jaInitStem);
      case Location.medi:
        if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.jaMediMvs);
        } else {
          renderedWord.add(Menksoft.jaMedi);
        }
        _glyphShapeBelow = _Shape.STEM;
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.jaFinaFvs1);
          _glyphShapeBelow = _Shape.TOOTH;
        } else {
          renderedWord.add(Menksoft.jaFina);
          _glyphShapeBelow = _Shape.STEM;
        }
    }
  }

  void _handleYA(
    List<int> renderedWord,
    int positionInWord,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.yaIsolFvs1);
        } else {
          renderedWord.add(Menksoft.yaIsol);
        }
      case Location.init:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.yaInitFvs1);
        } else {
          renderedWord.add(Menksoft.yaInit);
        }
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.yaMediFvs1);
        } else if (_fvs == _fvs2) {
          renderedWord.add(Menksoft.yaMediFvs2);
        } else if (_fvs == _fvs3) {
          renderedWord.add(Menksoft.yaMedi);
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.yaMediMvs);
        } else {
          renderedWord.add(Menksoft.yaMedi);
        }
      case Location.fina:
        renderedWord.add(Menksoft.yaFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleRA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.raIsol);
      case Location.init:
        if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.raInitStem);
        } else {
          renderedWord.add(Menksoft.raInitTooth);
        }
      case Location.medi:
        if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.raMediMvs);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.raMediStem);
        } else {
          renderedWord.add(Menksoft.raMediTooth);
        }
        _glyphShapeBelow = _Shape.TOOTH;
      case Location.fina:
        renderedWord.add(Menksoft.raFina);
        _glyphShapeBelow = _Shape.STEM;
    }
  }

  void _handleWA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.waIsol);
      case Location.init:
        renderedWord.add(Menksoft.waInit);
      case Location.medi:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.waMediFvs1);
          _glyphShapeBelow = _Shape.STEM;
        } else if (charBelow == Mongol.mvs) {
          renderedWord.add(Menksoft.waMediMvs);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          renderedWord.add(Menksoft.waMedi);
          _glyphShapeBelow = _Shape.TOOTH;
        }
      case Location.fina:
        if (_fvs == _fvs1) {
          renderedWord.add(Menksoft.waFinaFvs1);
          _glyphShapeBelow = _Shape.STEM;
        } else {
          renderedWord.add(Menksoft.waFina);
          _glyphShapeBelow = _Shape.TOOTH;
        }
    }
  }

  void _handleFA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.faIsol);
      case Location.init:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.faInitOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.faInitStem);
        } else {
          renderedWord.add(Menksoft.faInitTooth);
        }
      case Location.medi:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.faMediOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.faMediStem);
        } else {
          renderedWord.add(Menksoft.faMediTooth);
        }
      case Location.fina:
        renderedWord.add(Menksoft.faFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleKA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.kaIsol);
      case Location.init:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.kaInitOu);
        } else {
          renderedWord.add(Menksoft.kaInit);
        }
      case Location.medi:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.kaMediOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.kaMediStem);
        } else {
          renderedWord.add(Menksoft.kaMediTooth);
        }
      case Location.fina:
        renderedWord.add(Menksoft.kaFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleKHA(List<int> renderedWord, int charBelow) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.khaIsol);
      case Location.init:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.khaInitOu);
        } else {
          renderedWord.add(Menksoft.initKha);
        }
      case Location.medi:
        if (_isOuVowel(charBelow)) {
          renderedWord.add(Menksoft.khaMediOu);
        } else if (_glyphShapeBelow == _Shape.STEM) {
          renderedWord.add(Menksoft.khaMediStem);
        } else {
          renderedWord.add(Menksoft.khaMediTooth);
        }
      case Location.fina:
        renderedWord.add(Menksoft.khaFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleTSA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.tsaIsol);
      case Location.init:
        renderedWord.add(Menksoft.tsaInit);
      case Location.medi:
        renderedWord.add(Menksoft.tsaMedi);
      case Location.fina:
        renderedWord.add(Menksoft.tsaFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleZA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.zaIsol);
      case Location.init:
        renderedWord.add(Menksoft.zaInit);
      case Location.medi:
        renderedWord.add(Menksoft.zaMedi);
      case Location.fina:
        renderedWord.add(Menksoft.zaFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleHAA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.haaIsol);
      case Location.init:
        renderedWord.add(Menksoft.haaInit);
      case Location.medi:
        renderedWord.add(Menksoft.haaMedi);
      case Location.fina:
        renderedWord.add(Menksoft.haaFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleZRA(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.zraIsol);
      case Location.init:
        renderedWord.add(Menksoft.zraInit);
      case Location.medi:
        renderedWord.add(Menksoft.zraMedi);
      case Location.fina:
        renderedWord.add(Menksoft.zraFina);
    }
    _glyphShapeBelow = _Shape.STEM; // ROUND didn't look very good
  }

  void _handleLHA(List<int> renderedWord, int positionInWord, int charAbove) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.lhaIsol);
      case Location.init:
        renderedWord.add(Menksoft.lhaInit);
      case Location.medi:
        if (_isRoundLetter(charAbove) || charAbove == Mongol.ang) {
          renderedWord.add(
            Menksoft.lhaMediBp,
          ); // tail extended for round letter
        } else if (charAbove == Mongol.qa || charAbove == Mongol.ga) {
          if (_gender == Gender.neuter) {
            _gender = genderOf(word: _inputWord, beforeIndex: positionInWord);
          }
          if (_gender == Gender.feminine) {
            renderedWord.add(
              Menksoft.lhaMediBp,
            ); // tail extended for round letter
          } else {
            renderedWord.add(Menksoft.lhaMedi);
          }
        } else {
          renderedWord.add(Menksoft.lhaMedi);
        }
      case Location.fina:
        renderedWord.add(Menksoft.lhaFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleZHI(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.zhiIsol);
      case Location.init:
        renderedWord.add(Menksoft.zhiInit);
      case Location.medi:
        renderedWord.add(Menksoft.zhiMedi);
      case Location.fina:
        renderedWord.add(Menksoft.zhiFina);
    }
    _glyphShapeBelow = _Shape.TOOTH;
  }

  void _handleCHI(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
        renderedWord.add(Menksoft.chiIsol);
      case Location.init:
        renderedWord.add(Menksoft.chiInit);
      case Location.medi:
        renderedWord.add(Menksoft.chiMedi);
      case Location.fina:
        renderedWord.add(Menksoft.chiFina);
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleNNBS(List<int> renderedWord) {
    renderedWord.add(Menksoft.nonbreakingSpace);
  }

  void _handleNirugu(List<int> renderedWord) {
    switch (_location) {
      case Location.isol:
      case Location.medi:
        renderedWord.add(Menksoft.nirugu);
      case Location.init:
      case Location.fina:
        // drop it
        break;
    }
    _glyphShapeBelow = _Shape.STEM;
  }

  void _handleBirga(List<int> renderedWord) {
    switch (_fvs) {
      case Mongol.fvs1:
        renderedWord.add(Menksoft.birgaWithOrnament);
      case Mongol.fvs2:
        renderedWord.add(Menksoft.rotatedBirga);
      case Mongol.fvs3:
        renderedWord.add(Menksoft.doubleBirgaWithOrnament);
      case Mongol.fvs4:
        renderedWord.add(Menksoft.tripleBirgaWithOrnament);
      default:
        renderedWord.add(Menksoft.birga);
    }
  }

  void _handleNonPrintingChar(List<int> renderedWord) {
    // drop char
  }

  // If it is at the beginning of words then add space
  void _handleMvs(List<int> renderedWord, int index) {
    if (index == 0) {
      renderedWord.add(Menksoft.nonbreakingSpace);
    } else {
      // drop it
    }
  }

  bool _isRoundLetterIncludingQG(int character) {
    return (character == Mongol.ba ||
        character == Mongol.pa ||
        character == Mongol.qa ||
        character == Mongol.ga ||
        character == Mongol.fa ||
        character == Mongol.ka ||
        character == Mongol.kha);
  }

  bool _isRoundLetter(int character) {
    return (character == Mongol.ba ||
        character == Mongol.pa ||
        character == Mongol.fa ||
        character == Mongol.ka ||
        character == Mongol.kha);
  }

  static bool _isOuVowel(int character) {
    return (character >= Mongol.o && character <= Mongol.ue);
  }
}
