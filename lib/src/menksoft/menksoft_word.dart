import 'package:mongol_code/src/menksoft/fixed_words_menk_uni.dart';

import '../shared/gender.dart';
import '../shared/location.dart';
import 'menksoft.dart';
import '../unicode/mongol.dart';

class MenksoftWord {
  static const int SPACE = 0x0020;

  late List<int> _inputWord;
  late Location _location;

  MenksoftWord(List<int> menksoftWord) {
    _inputWord = menksoftWord;
  }

  void _updateLocation(int charAbove, int charBelow) {
    final isTop = !Menksoft.isLetter(charAbove);
    final isBottom = !Menksoft.isLetter(charBelow);
    if (isTop) {
      if (isBottom) {
        _location = Location.isol;
      } else {
        _location = Location.init;
      }
    } else {
      if (isBottom) {
        _location = Location.fina;
      } else {
        _location = Location.medi;
      }
    }
  }

  List<int> convertToUnicode() {
    if (_inputWord.isEmpty) {
      return [];
    }

    final fixedSequence = checkFixedSequenceMenkToUni(_inputWord);
    if (fixedSequence != null) {
      return fixedSequence;
    }

    final outputString = <int>[];

    var charAbove = 0;
    var currentChar = _inputWord[0];
    final length = _inputWord.length;
    for (var i = 0; i < length; i++) {
      final charBelow = (i < length - 1) ? _inputWord[i + 1] : 0;

      _updateLocation(charAbove, charBelow);

      if (_isMenksoftSpaceChar(currentChar)) {
        // space
        _handleSpace(outputString, currentChar, charBelow);
      } else if (currentChar < Menksoft.aStart) {
        // punctuation
        _handlePunctuation(outputString, currentChar);
      } else if (currentChar < Menksoft.eStart) {
        // A
        _handleA(outputString, currentChar);
      } else if (currentChar < Menksoft.iStart) {
        // E
        _handleE(outputString, currentChar);
      } else if (currentChar < Menksoft.oStart) {
        // I
        _handleI(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.uStart) {
        // O
        _handleO(outputString, currentChar);
      } else if (currentChar < Menksoft.oeStart) {
        // U
        _handleU(outputString, currentChar);
      } else if (currentChar < Menksoft.ueStart) {
        // OE
        _handleOE(outputString, currentChar);
      } else if (currentChar < Menksoft.eeStart) {
        // UE
        _handleUE(outputString, currentChar);
      } else if (currentChar < Menksoft.naStart) {
        // EE
        _handleEE(outputString, currentChar, charAbove, charBelow);
      } else if (Menksoft.isAng(currentChar)) {
        // ANG
        // handling ANG before NA because NA is appears
        // before and after ANG
        _handleAng(outputString, currentChar);
      } else if (currentChar < Menksoft.baStart) {
        // NA
        _handleNa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.paStart) {
        // BA
        _handleBa(outputString, currentChar);
      } else if (currentChar < Menksoft.qaStart) {
        // PA
        _handlePa(outputString, currentChar);
      } else if (currentChar < Menksoft.gaStart) {
        // QA
        _handleQa(outputString, currentChar, charBelow);
      } else if (currentChar < Menksoft.maStart) {
        // GA
        _handleGa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.laStart) {
        // MA
        _handleMa(outputString, currentChar);
      } else if (currentChar < Menksoft.saStart) {
        // LA
        _handleLa(outputString, currentChar);
      } else if (currentChar < Menksoft.shaStart) {
        // SA
        _handleSa(outputString, currentChar);
      } else if (currentChar < Menksoft.taStart) {
        // SHA
        _handleSha(outputString, currentChar);
      } else if (currentChar < Menksoft.daStart) {
        // TA
        _handleTa(outputString, currentChar);
      } else if (currentChar < Menksoft.chaStart) {
        // DA
        _handleDa(outputString, currentChar, charBelow);
      } else if (currentChar < Menksoft.jaStart) {
        // CHA
        _handleCha(outputString, currentChar);
      } else if (currentChar < Menksoft.yaStart) {
        // JA
        _handleJa(outputString, currentChar);
      } else if (currentChar < Menksoft.raStart) {
        // YA
        _handleYa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.waStart) {
        // RA
        _handleRa(outputString, currentChar);
      } else if (currentChar < Menksoft.faStart) {
        // WA
        _handleWa(outputString, currentChar, charAbove, charBelow);
      } else if (currentChar < Menksoft.kaStart) {
        // FA
        _handleFa(outputString, currentChar);
      } else if (currentChar < Menksoft.khaStart) {
        // KA
        _handleKa(outputString, currentChar);
      } else if (currentChar < Menksoft.tsaStart) {
        // KHA
        _handleKha(outputString, currentChar);
      } else if (currentChar < Menksoft.zaStart) {
        // TSA
        _handleTsa(outputString, currentChar);
      } else if (currentChar < Menksoft.haaStart) {
        // ZA
        _handleZa(outputString, currentChar);
      } else if (currentChar < Menksoft.zraStart) {
        // HAA
        _handleHaa(outputString, currentChar);
      } else if (currentChar < Menksoft.lhaStart) {
        // ZRA
        _handleZra(outputString, currentChar);
      } else if (currentChar < Menksoft.zhiStart) {
        // LHA
        _handleLha(outputString, currentChar);
      } else if (currentChar < Menksoft.chiStart) {
        // ZHI
        _handleZhi(outputString);
      } else if (currentChar <= Menksoft.menksoftEnd) {
        // CHI
        _handleChi(outputString);
      }

      charAbove = currentChar;

      // fix missing space
      if (Menksoft.isFinalIsolateGlyph(currentChar) &&
          Menksoft.isInitialIsolateGlyph(charBelow)) {
        outputString.add(SPACE);
        charAbove = 0;
      }

      currentChar = charBelow;
    }

    return outputString;
  }

  void _handleA(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.aIsolFvs1:
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
          case Menksoft.aIsolFvs2:
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs2);
          case Menksoft.aInit:
            outputString.add(Mongol.a);
            outputString.add(Mongol.nirugu);
          case Menksoft.aInitFvs1:
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.aFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
          case Menksoft.aFinaBp:
          case Menksoft.aFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
          case Menksoft.aMedi:
          case Menksoft.aMediBp:
          case Menksoft.aMediUnknown:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
            outputString.add(Mongol.nirugu);
          case Menksoft.aMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.a);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.aMedi:
          case Menksoft.aMediBp:
          case Menksoft.aMediUnknown:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
          case Menksoft.aMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.a);
        }
      case Location.medi:
        outputString.add(Mongol.a);
        if (currentChar == Menksoft.aMediFvs1) {
          outputString.add(Mongol.fvs1);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.aFinaMvs:
            outputString.add(Mongol.mvs);
            outputString.add(Mongol.a);
          case Menksoft.aMedi:
          case Menksoft.aMediBp:
          case Menksoft.aMediUnknown:
            outputString.add(Mongol.a);
            outputString.add(Mongol.nirugu);
          case Menksoft.aMediFvs1:
            outputString.add(Mongol.a);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.a);
        }
    }
  }

  void _handleE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.eIsolFvs1:
            outputString.add(Mongol.e);
            outputString.add(Mongol.fvs1);
          case Menksoft.eInit:
            outputString.add(Mongol.e);
            outputString.add(Mongol.nirugu);
          case Menksoft.eInitFvs1:
            outputString.add(Mongol.e);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.eFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.e);
          case Menksoft.eFinaBp:
          case Menksoft.eFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.e);
            outputString.add(Mongol.fvs1);
          case Menksoft.eMedi:
          case Menksoft.eMediBp:
          case Menksoft.eMediUnknown:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.e);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.e);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.eInitFvs1:
            outputString.add(Mongol.e);
            outputString.add(Mongol.fvs1);
          case Menksoft.eMedi:
          case Menksoft.eMediBp:
          case Menksoft.eMediUnknown:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.e);
          default:
            outputString.add(Mongol.e);
        }
      case Location.medi:
        outputString.add(Mongol.e);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.eFinaMvs:
            outputString.add(Mongol.mvs);
            outputString.add(Mongol.e);
          case Menksoft.eMedi:
          case Menksoft.eMediBp:
          case Menksoft.eMediUnknown:
            outputString.add(Mongol.e);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.e);
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
      case Location.isol:
        switch (currentChar) {
          case Menksoft.iIsolFvs1:
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs1);
          case Menksoft.iInit:
            outputString.add(Mongol.i);
            outputString.add(Mongol.nirugu);
          case Menksoft.iFina:
          case Menksoft.iFinaBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
          case Menksoft.iMedi:
          case Menksoft.iMediBp:
          case Menksoft.iInitFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
            outputString.add(Mongol.nirugu);
          case Menksoft.iMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.iMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.i);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.iMedi:
          case Menksoft.iMediBp:
          case Menksoft.iInitFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
          case Menksoft.iMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs1);
          case Menksoft.iMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ya);
            outputString.add(Mongol.i);
          default:
            outputString.add(Mongol.i);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.iMedi:
          case Menksoft.iMediBp:
            if (Menksoft.isVowel(charAbove) && _isLongToothI(charBelow)) {
              // Drop the I. It isn't needed for diphthongs.
            } else {
              outputString.add(Mongol.i);
              if (_isMenksoftA(charAbove) && _isMenksoftM(charBelow)) {
                // override double tooth for words like NAIMA
                outputString.add(Mongol.fvs3);
              }
            }
          case Menksoft.iMediFvs1:
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.i);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.iMedi:
          case Menksoft.iMediBp:
          case Menksoft.iInitFvs1:
            outputString.add(Mongol.i);
            outputString.add(Mongol.nirugu);
          case Menksoft.iMediFvs1:
            outputString.add(Mongol.i);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.iMediFvs2:
            outputString.add(Mongol.ya);
            outputString.add(Mongol.i);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.i);
        }
    }
  }

  bool _isLongToothI(int character) {
    return character == Menksoft.iMedi ||
        character == Menksoft.iMediBp ||
        character == Menksoft.iInitFvs1 ||
        character == Menksoft.yaMediFvs1;
  }

  bool _isMenksoftA(int character) {
    return character >= Menksoft.aStart && character <= Menksoft.aMediUnknown;
  }

  bool _isMenksoftM(int character) {
    return character >= Menksoft.maInitTooth && character <= Menksoft.maMediBp;
  }

  void _handleO(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.oInit:
            outputString.add(Mongol.o);
            outputString.add(Mongol.nirugu);
          case Menksoft.oFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
          case Menksoft.oFinaFvs1:
          case Menksoft.oFinaFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
            outputString.add(Mongol.fvs1);
          case Menksoft.oMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.oMedi:
          case Menksoft.oMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.o);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.oMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
            outputString.add(Mongol.fvs1);
          case Menksoft.oMedi:
          case Menksoft.oMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.o);
          default:
            outputString.add(Mongol.o);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.oMediFvs1:
            outputString.add(Mongol.o);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.o);
        }
      case Location.fina:
        outputString.add(Mongol.o);
        switch (currentChar) {
          case Menksoft.oFinaFvs1:
            outputString.add(Mongol.fvs1);
          case Menksoft.oFina:
            if (_inputWord.length == 2) {
              outputString.add(Mongol.fvs2);
            }
          case Menksoft.oMediFvs1:
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.oMedi:
          case Menksoft.oMediBp:
            outputString.add(Mongol.nirugu);
        }
    }
  }

  void _handleU(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.uInit:
            outputString.add(Mongol.u);
            outputString.add(Mongol.nirugu);
          case Menksoft.uFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
          case Menksoft.uFinaFvs1:
          case Menksoft.uFinaFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
            outputString.add(Mongol.fvs1);
          case Menksoft.uMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.uMedi:
          case Menksoft.uMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.u);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.uMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
            outputString.add(Mongol.fvs1);
          case Menksoft.uMedi:
          case Menksoft.uMediBp:
            outputString.add(Mongol.u);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.u);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.uMediFvs1:
            outputString.add(Mongol.u);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.u);
        }
      case Location.fina:
        outputString.add(Mongol.u);
        switch (currentChar) {
          case Menksoft.uFinaFvs1:
            outputString.add(Mongol.fvs1);
          case Menksoft.uFina:
            if (_inputWord.length == 2) {
              outputString.add(Mongol.fvs2);
            }
          case Menksoft.uMediFvs1:
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.uMedi:
          case Menksoft.uMediBp:
            outputString.add(Mongol.nirugu);
        }
    }
  }

  void _handleOE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.oeIsolFvs1:
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs1);
          case Menksoft.oeInit:
            outputString.add(Mongol.oe);
            outputString.add(Mongol.nirugu);
          case Menksoft.oeFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
          case Menksoft.oeFinaFvs1:
          case Menksoft.oeFinaFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs1);
          case Menksoft.oeFinaFvs2:
          case Menksoft.oeFinaFvs2Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs2);
          case Menksoft.oeMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.oeMedi:
          case Menksoft.oeMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.nirugu);
          case Menksoft.oeMediFvs1:
          case Menksoft.oeMediFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.oe);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.oeMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs2);
          case Menksoft.oeMedi:
          case Menksoft.oeMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
          case Menksoft.oeMediFvs1:
          case Menksoft.oeMediFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.oe);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.oeMediFvs1:
          case Menksoft.oeMediFvs1Bp:
            outputString.add(Mongol.oe);
            final index = outputString.length - 1;
            if (!Mongol.needsLongToothU(outputString, index)) {
              outputString.add(Mongol.fvs1);
            }
          case Menksoft.oeMediFvs2:
            outputString.add(Mongol.oe);
            outputString.add(Mongol.fvs2);
          default:
            outputString.add(Mongol.oe);
        }
      case Location.fina:
        outputString.add(Mongol.oe);
        switch (currentChar) {
          case Menksoft.oeFinaFvs1:
          case Menksoft.oeFinaFvs1Bp:
            outputString.add(Mongol.fvs1);
          case Menksoft.oeFina:
            if (_inputWord.length == 2) {
              outputString.add(Mongol.fvs3);
            }
          case Menksoft.oeMediFvs2:
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.oeMedi:
          case Menksoft.oeMediBp:
            outputString.add(Mongol.nirugu);
          case Menksoft.oeMediFvs1:
          case Menksoft.oeMediFvs1Bp:
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
        }
    }
  }

  void _handleUE(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.ueIsolFvs1:
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs1);
          case Menksoft.ueInit:
            outputString.add(Mongol.ue);
            outputString.add(Mongol.nirugu);
          case Menksoft.ueFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
          case Menksoft.ueFinaFvs1:
          case Menksoft.ueFinaFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs1);
          case Menksoft.ueFinaFvs2:
          case Menksoft.ueFinaFvs2Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs2);
          case Menksoft.ueMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.ueMedi:
          case Menksoft.ueMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.nirugu);
          case Menksoft.ueMediFvs1:
          case Menksoft.ueMediFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ue);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.ueInitFvs1:
          case Menksoft.ueMedi:
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs1);
          case Menksoft.ueMediFvs1:
          case Menksoft.ueMediFvs1Bp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs1);
          case Menksoft.ueMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs2);
          default:
            outputString.add(Mongol.ue);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.ueMediFvs1:
          case Menksoft.ueMediFvs1Bp:
            outputString.add(Mongol.ue);
            final index = outputString.length - 1;
            if (!Mongol.needsLongToothU(outputString, index)) {
              outputString.add(Mongol.fvs1);
            }
          case Menksoft.ueMediFvs2:
            outputString.add(Mongol.ue);
            outputString.add(Mongol.fvs2);
          default:
            outputString.add(Mongol.ue);
        }
      case Location.fina:
        outputString.add(Mongol.ue);
        switch (currentChar) {
          case Menksoft.ueFinaFvs1:
          case Menksoft.ueFinaFvs1Bp:
            outputString.add(Mongol.fvs1);
          case Menksoft.ueFina:
            if (_inputWord.length == 2) {
              outputString.add(Mongol.fvs3);
            }
          case Menksoft.ueMediFvs2:
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.ueMedi:
          case Menksoft.ueMediBp:
            outputString.add(Mongol.nirugu);
          case Menksoft.ueMediFvs1:
          case Menksoft.ueMediFvs1Bp:
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
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
      case Location.isol:
        switch (currentChar) {
          case Menksoft.eeInit:
            outputString.add(Mongol.ee);
            outputString.add(Mongol.nirugu);
          case Menksoft.eeMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ee);
            outputString.add(Mongol.nirugu);
          case Menksoft.eeFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ee);
          default:
            outputString.add(Mongol.ee);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.eeMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ee);
          default:
            outputString.add(Mongol.ee);
        }
      case Location.medi:
        outputString.add(Mongol.ee);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.eeMedi:
            outputString.add(Mongol.ee);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ee);
        }
    }
  }

  void _handleAng(List<int> outputString, int currentChar) {
    if (_location == Location.isol && currentChar == Menksoft.angFina) {
      outputString.add(Mongol.nirugu);
    }
    outputString.add(Mongol.ang);
  }

  void _handleNa(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.naInitFvs1Stem:
          case Menksoft.naInitFvs1Tooth:
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.naFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.na);
          case Menksoft.naFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
          case Menksoft.naMediStem:
          case Menksoft.naMediTooth:
          case Menksoft.naMediNg:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.na);
            outputString.add(Mongol.nirugu);
          case Menksoft.naMediFvs1Stem:
          case Menksoft.naMediFvs1Tooth:
          case Menksoft.naMediFvs1Ng:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.na);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.naInitFvs1Stem:
          case Menksoft.naInitFvs1Tooth:
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.na);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.naMediNg:
          case Menksoft.naMediStem:
          case Menksoft.naMediTooth:
            outputString.add(Mongol.na);
            if (Menksoft.isVowel(charAbove) && Menksoft.isVowel(charBelow)) {
              outputString.add(Mongol.fvs2);
            }
          case Menksoft.naMediFvs1Ng:
          case Menksoft.naMediFvs1Stem:
          case Menksoft.naMediFvs1Tooth:
            outputString.add(Mongol.na);
            if (Menksoft.isConsonant(charBelow)) {
              outputString.add(Mongol.fvs1);
            }
          default:
            outputString.add(Mongol.na);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.naFinaFvs1:
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
          case Menksoft.naMediStem:
          case Menksoft.naMediTooth:
          case Menksoft.naMediNg:
            outputString.add(Mongol.na);
            outputString.add(Mongol.nirugu);
          case Menksoft.naMediFvs1Stem:
          case Menksoft.naMediFvs1Tooth:
          case Menksoft.naMediFvs1Ng:
            outputString.add(Mongol.na);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.na);
        }
    }
  }

  void _handleBa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.baFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ba);
          case Menksoft.baFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ba);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.ba);
        }
      case Location.init:
        outputString.add(Mongol.ba);
      case Location.medi:
        outputString.add(Mongol.ba);
      case Location.fina:
        outputString.add(Mongol.ba);
    }
  }

  void _handlePa(List<int> outputString, int currentChar) {
    if (_location == Location.isol && currentChar == Menksoft.paFina) {
      outputString.add(Mongol.nirugu);
    }
    outputString.add(Mongol.pa);
  }

  void _handleQa(List<int> outputString, int currentChar, int charBelow) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.qaIsolFvs1:
          case Menksoft.qaInitFvs1Tooth:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.ga);
          case Menksoft.qaIsolFvs2:
          case Menksoft.qaInitFvs2Ou:
          case Menksoft.qaMediFvs2Cons:
          case Menksoft.qaMediFvs2Ou:
          case Menksoft.qaMediFvs2:
            outputString.add(Mongol.qa);
            outputString.add(Mongol.fvs2);
          case Menksoft.qaIsolFvs4:
          case Menksoft.qaInitFvs4Ou:
          case Menksoft.qaMediFvs4:
          case Menksoft.qaMediFvs4Ou:
          case Menksoft.qaMediFvs4Cons:
            outputString.add(Mongol.qa);
            outputString.add(Mongol.fvs4);
          case Menksoft.qaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.qa);
          case Menksoft.qaFinaFvs1:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs3);
          case Menksoft.qaMediFvs1:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.qaMediStem:
          case Menksoft.qaMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.qa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.qa);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.qaInitFvs1Stem:
          case Menksoft.qaInitFvs1Tooth:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.ga);
          case Menksoft.qaMediStem:
          case Menksoft.qaMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.qa);
          default:
            outputString.add(Mongol.qa);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.qaMediStem:
          case Menksoft.qaMediTooth:
            // If a medial Q is being used like a G before
            // a consonant, then interpret it as a G.
            if (Menksoft.isConsonant(charBelow)) {
              outputString.add(Mongol.ga);
            } else {
              outputString.add(Mongol.qa);
            }
          case Menksoft.qaMediFvs1:
          case Menksoft.qaMediFvs1Mvs:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.ga);
          case Menksoft.qaMediFvs2:
          case Menksoft.qaMediFvs2Ou:
          case Menksoft.qaMediFvs2Cons:
            if (_inputWordContainsMasculineVowel() &&
                Menksoft.isConsonant(charBelow)) {
              // treat feminine QA before a consonant as a GA
              outputString.add(Mongol.ga);
              outputString.add(Mongol.fvs2);
            } else {
              outputString.add(Mongol.qa);
            }
          default:
            outputString.add(Mongol.qa);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.qaMediFvs2Cons:
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs3);
            outputString.add(Mongol.nirugu);
          case Menksoft.qaMediFvs1:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.ga);
            outputString.add(Mongol.nirugu);
          case Menksoft.qaMediFvs1Mvs:
            // treat the dotted masculine Q as a G
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.qaMediStem:
          case Menksoft.qaMediTooth:
            outputString.add(Mongol.qa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.qa);
        }
    }
  }

  void _handleGa(
    List<int> outputString,
    int currentChar,
    int charAbove,
    int charBelow,
  ) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.gaInitFvs1Stem:
          case Menksoft.gaInitFvs1Tooth:
            // treat the undotted masculine G as a Q
            outputString.add(Mongol.qa);
          case Menksoft.gaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
          case Menksoft.gaFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs1);
          case Menksoft.gaFinaFvs3:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs3);
          case Menksoft.gaMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.nirugu);
          case Menksoft.gaMediFvs1Stem:
          case Menksoft.gaMediFvs1Tooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.gaMediFvs2Stem:
          case Menksoft.faMediFvs2Tooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ga);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ga);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.gaInitFvs1Stem:
          case Menksoft.gaInitFvs1Tooth:
            // treat the undotted masculine G as a Q
            outputString.add(Mongol.qa);
          default:
            outputString.add(Mongol.ga);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.faMediFvs2Tooth:
          case Menksoft.gaMediFvs2Stem:
          case Menksoft.gaMediFvs2:
          case Menksoft.gaMediFvs2Ou:
            outputString.add(Mongol.ga);
            // If word contains masculine vowel and not surrounded by consonants
            if (_isNotFeminineOrI(charBelow) &&
                _inputWordContainsMasculineVowel() &&
                (_isVowel(charAbove) || _isVowel(charBelow))) {
              outputString.add(Mongol.fvs2);
            }
          default:
            outputString.add(Mongol.ga);
        }
      case Location.fina:
        outputString.add(Mongol.ga);
        final gender = genderOf(word: outputString);
        switch (currentChar) {
          case Menksoft.gaFinaFvs1:
            if (gender != Gender.masculine) {
              outputString.add(Mongol.fvs1);
            }
          case Menksoft.gaFinaFvs2:
            if (gender == Gender.masculine) {
              outputString.add(Mongol.fvs2);
            }
          case Menksoft.gaFinaFvs3:
            outputString.add(Mongol.fvs3);
          case Menksoft.gaMedi:
            outputString.add(Mongol.nirugu);
          case Menksoft.gaMediFvs1Stem:
          case Menksoft.gaMediFvs1Tooth:
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.gaMediFvs2Stem:
          case Menksoft.faMediFvs2Tooth:
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
        }
    }
  }

  bool _isNotFeminineOrI(int char) {
    return !Menksoft.isFeminineVowel(char) && !Menksoft.isI(char);
  }

  bool _inputWordContainsMasculineVowel() {
    for (int i = 0; i < _inputWord.length; i++) {
      if (Menksoft.isMasculineVowel(_inputWord[i])) {
        return true;
      }
    }
    return false;
  }

  bool _isVowel(int character) {
    return Menksoft.isVowel(character);
  }

  void _handleMa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.maFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ma);
          case Menksoft.maMediBp:
          case Menksoft.maMediStemLong:
          case Menksoft.maMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ma);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ma);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.maMediBp:
          case Menksoft.maMediStemLong:
          case Menksoft.maMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ma);
          default:
            outputString.add(Mongol.ma);
        }
      case Location.medi:
        outputString.add(Mongol.ma);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.maMediBp:
          case Menksoft.maMediStemLong:
          case Menksoft.maMediTooth:
            outputString.add(Mongol.ma);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ma);
        }
    }
  }

  void _handleLa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.laFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.la);
          case Menksoft.laMediBp:
          case Menksoft.laMediStemLong:
          case Menksoft.laMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.la);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.la);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.laMediBp:
          case Menksoft.laMediStemLong:
          case Menksoft.laMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.la);
          default:
            outputString.add(Mongol.la);
        }
      case Location.medi:
        outputString.add(Mongol.la);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.laMediBp:
          case Menksoft.laMediStemLong:
          case Menksoft.laMediTooth:
            outputString.add(Mongol.la);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.la);
        }
    }
  }

  void _handleSa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.saFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sa);
          case Menksoft.saFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sa);
            outputString.add(Mongol.fvs1);
          case Menksoft.saMediStem:
          case Menksoft.saMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.sa);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.saMediStem:
          case Menksoft.saMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sa);
          default:
            outputString.add(Mongol.sa);
        }
      case Location.medi:
        outputString.add(Mongol.sa);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.saMediStem:
          case Menksoft.saMediTooth:
            outputString.add(Mongol.sa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.sa);
        }
    }
  }

  void _handleSha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.shaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sha);
          case Menksoft.shaMediStem:
          case Menksoft.shaMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sha);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.sha);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.shaMediStem:
          case Menksoft.shaMediTooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.sha);
          default:
            outputString.add(Mongol.sha);
        }
      case Location.medi:
        outputString.add(Mongol.sha);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.shaMediStem:
          case Menksoft.shaMediTooth:
            outputString.add(Mongol.sha);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.sha);
        }
    }
  }

  void _handleTa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.taFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ta);
          case Menksoft.taMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ta);
            outputString.add(Mongol.nirugu);
          case Menksoft.taMediFvs1Stem:
          case Menksoft.taMediFvs1Tooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ta);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ta);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.taMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ta);
          case Menksoft.taMediFvs1Stem:
          case Menksoft.taMediFvs1Tooth:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ta);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.ta);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.taMediFvs1Stem:
          case Menksoft.taMediFvs1Tooth:
            outputString.add(Mongol.ta);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.ta);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.taMedi:
            outputString.add(Mongol.ta);
            outputString.add(Mongol.nirugu);
          case Menksoft.taMediFvs1Stem:
          case Menksoft.taMediFvs1Tooth:
            outputString.add(Mongol.ta);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ta);
        }
    }
  }

  void _handleDa(List<int> outputString, int currentChar, int charBelow) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.daInitStem:
          case Menksoft.daInitTooth:
            // replace isolated DA that looks like TA with actual TA
            outputString.add(Mongol.ta);
          case Menksoft.daFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.da);
          case Menksoft.daFinaFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.da);
            outputString.add(Mongol.fvs1);
          case Menksoft.daMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.da);
            outputString.add(Mongol.nirugu);
          case Menksoft.daMediFvs1:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.da);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.da);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.daMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.da);
          case Menksoft.daInitFvs1:
          case Menksoft.daMediFvs1:
            outputString.add(Mongol.da);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.da);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.daInitFvs1:
          case Menksoft.daMediFvs1:
            outputString.add(Mongol.da);
            if (Menksoft.isConsonant(charBelow)) {
              outputString.add(Mongol.fvs1);
            }
          case Menksoft.daMedi:
            outputString.add(Mongol.da);
            if (Menksoft.isVowel(charBelow)) {
              outputString.add(Mongol.fvs1);
            }
          default:
            outputString.add(Mongol.da);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.daMedi:
            outputString.add(Mongol.da);
            outputString.add(Mongol.nirugu);
          case Menksoft.daMediFvs1:
            outputString.add(Mongol.da);
            outputString.add(Mongol.fvs1);
            outputString.add(Mongol.nirugu);
          case Menksoft.daFinaFvs1:
            outputString.add(Mongol.da);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.da);
        }
    }
  }

  void _handleCha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.chaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.cha);
          default:
            outputString.add(Mongol.cha);
        }
      case Location.init:
        outputString.add(Mongol.cha);
      case Location.medi:
        outputString.add(Mongol.cha);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.chaMedi:
            outputString.add(Mongol.cha);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.cha);
        }
    }
  }

  void _handleJa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.jaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ja);
          case Menksoft.jaMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ja);
            outputString.add(Mongol.nirugu);
          case Menksoft.jaMediMvs:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.i);
          default:
            outputString.add(Mongol.ja);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.jaMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ja);
          default:
            outputString.add(Mongol.ja);
        }
      case Location.medi:
        outputString.add(Mongol.ja);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.jaMedi:
            outputString.add(Mongol.ja);
            outputString.add(Mongol.nirugu);
          case Menksoft.jaMediMvs:
            // ignoring ancient form,
            // it looks like a final I so make it one
            outputString.add(Mongol.i);
          default:
            outputString.add(Mongol.ja);
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
      case Location.isol:
        switch (currentChar) {
          case Menksoft.yaIsolFvs1:
            outputString.add(Mongol.ya);
            outputString.add(Mongol.fvs1);
          case Menksoft.yaMediFvs2:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ya);
            outputString.add(Mongol.fvs2);
            outputString.add(Mongol.nirugu);
          case Menksoft.yaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ya);
          default:
            outputString.add(Mongol.ya);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.yaInitFvs1:
            outputString.add(Mongol.ya);
            outputString.add(Mongol.fvs1);
          default:
            outputString.add(Mongol.ya);
        }
      case Location.medi:
        switch (currentChar) {
          case Menksoft.yaMediFvs1:
            if (Menksoft.isVowel(charAbove) && _isLongToothI(charBelow)) {
              // Drop the Y. It isn't needed for diphthongs.
            } else {
              outputString.add(Mongol.ya);
              outputString.add(Mongol.fvs1);
            }
          default:
            outputString.add(Mongol.ya);
        }
      case Location.fina:
        switch (currentChar) {
          case Menksoft.yaMedi:
            outputString.add(Mongol.ya);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ya);
        }
    }
  }

  void _handleRa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.raFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.ra);
          default:
            outputString.add(Mongol.ra);
        }
      case Location.init:
        outputString.add(Mongol.ra);
      case Location.medi:
        outputString.add(Mongol.ra);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.raMediStem:
          case Menksoft.raMediTooth:
            outputString.add(Mongol.ra);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.ra);
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
      case Location.isol:
        switch (currentChar) {
          case Menksoft.waFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.wa);
          case Menksoft.waFinaFvs1:
            // an isolate final WA looks like a final U so make it one
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.u);
          default:
            outputString.add(Mongol.wa);
        }
      case Location.init:
        outputString.add(Mongol.wa);
      case Location.medi:
        // We could replace W between two consonants with EE
        // if (Menksoft.isMenksoftConsonant(charAbove) &&
        //     Menksoft.isMenksoftConsonant(charBelow)) {
        //   outputString.add(Unicode.EE);
        // }
        outputString.add(Mongol.wa);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.waFinaFvs1:
            outputString.add(Mongol.wa);
            outputString.add(Mongol.fvs1);
          case Menksoft.waMedi:
            outputString.add(Mongol.wa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.wa);
        }
    }
  }

  void _handleFa(List<int> outputString, int currentChar) {
    if (_location == Location.isol && currentChar == Menksoft.faFina) {
      outputString.add(Mongol.nirugu);
    }
    outputString.add(Mongol.fa);
  }

  void _handleKa(List<int> outputString, int currentChar) {
    if (_location == Location.isol && currentChar == Menksoft.kaFina) {
      outputString.add(Mongol.nirugu);
    }
    outputString.add(Mongol.ka);
  }

  void _handleKha(List<int> outputString, int currentChar) {
    if (_location == Location.isol && currentChar == Menksoft.khaFina) {
      outputString.add(Mongol.nirugu);
    }
    outputString.add(Mongol.kha);
  }

  void _handleTsa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.tsaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.tsa);
          default:
            outputString.add(Mongol.tsa);
        }
      case Location.init:
        outputString.add(Mongol.tsa);
      case Location.medi:
        outputString.add(Mongol.tsa);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.tsaMedi:
            outputString.add(Mongol.tsa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.tsa);
        }
    }
  }

  void _handleZa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.zaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.za);
          default:
            outputString.add(Mongol.za);
        }
      case Location.init:
        outputString.add(Mongol.za);
      case Location.medi:
        outputString.add(Mongol.za);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.zaMedi:
            outputString.add(Mongol.za);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.za);
        }
    }
  }

  void _handleHaa(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.haaFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.haa);
          case Menksoft.haaMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.haa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.haa);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.haaMedi:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.haa);
          default:
            outputString.add(Mongol.haa);
        }
      case Location.medi:
        outputString.add(Mongol.haa);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.haaMedi:
            outputString.add(Mongol.haa);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.haa);
        }
    }
  }

  void _handleZra(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.zraFina:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.zra);
          default:
            outputString.add(Mongol.zra);
        }
      case Location.init:
        outputString.add(Mongol.zra);
      case Location.medi:
        outputString.add(Mongol.zra);
      case Location.fina:
        switch (currentChar) {
          case Menksoft.zraMedi:
            outputString.add(Mongol.zra);
            outputString.add(Mongol.nirugu);
          default:
            outputString.add(Mongol.zra);
        }
    }
  }

  void _handleLha(List<int> outputString, int currentChar) {
    switch (_location) {
      case Location.isol:
        switch (currentChar) {
          case Menksoft.lhaMedi:
          case Menksoft.lhaMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.lha);
          default:
            outputString.add(Mongol.lha);
        }
      case Location.init:
        switch (currentChar) {
          case Menksoft.lhaMedi:
          case Menksoft.lhaMediBp:
            outputString.add(Mongol.nirugu);
            outputString.add(Mongol.lha);
          default:
            outputString.add(Mongol.lha);
        }
      default:
        outputString.add(Mongol.lha);
    }
  }

  void _handleZhi(List<int> outputString) {
    outputString.add(Mongol.zhi);
  }

  void _handleChi(List<int> outputString) {
    outputString.add(Mongol.chi);
  }

  void _handleSpace(List<int> outputString, int currentChar, int charBelow) {
    if (currentChar == Menksoft.nonbreakingSpace &&
        Menksoft.isLetter(charBelow)) {
      outputString.add(Mongol.mvs);
    } else {
      outputString.add(SPACE);
    }
  }

  void _handlePunctuation(List<int> outputString, int currentChar) {
    switch (currentChar) {
      case Menksoft.birga:
        outputString.add(Mongol.birga);
      case Menksoft.ellipsis:
        outputString.add(Mongol.ellipsis);
      case Menksoft.comma:
        outputString.add(Mongol.comma);
      case Menksoft.fullStop:
        outputString.add(Mongol.fullStop);
      case Menksoft.colon:
        outputString.add(Mongol.colon);
      case Menksoft.fourDots:
        outputString.add(Mongol.fourDots);
      case Menksoft.todoSoftHyphen:
        outputString.add(Mongol.todoSoftHyphen);
      case Menksoft.sibeSyllableBoundaryMarker:
        outputString.add(Mongol.sibeSyllableBoundaryMarker);
      case Menksoft.manchuComma:
        outputString.add(Mongol.manchuComma);
      case Menksoft.manchuFullStop:
        outputString.add(Mongol.manchuFullStop);
      case Menksoft.nirugu:
        outputString.add(Mongol.nirugu);
      case Menksoft.birgaWithOrnament:
        outputString.addAll([Mongol.birga, Mongol.fvs1]);
      case Menksoft.rotatedBirga:
        outputString.addAll([Mongol.birga, Mongol.fvs2]);
      case Menksoft.doubleBirgaWithOrnament:
        outputString.addAll([Mongol.birga, Mongol.fvs3]);
      case Menksoft.tripleBirgaWithOrnament:
        outputString.addAll([Mongol.birga, Mongol.fvs4]);
      case Menksoft.middleDot:
        outputString.add(Mongol.middleDot);
      case Menksoft.zero:
        outputString.add(Mongol.digitZero);
      case Menksoft.one:
        outputString.add(Mongol.digitOne);
      case Menksoft.two:
        outputString.add(Mongol.digitTwo);
      case Menksoft.three:
        outputString.add(Mongol.digitThree);
      case Menksoft.four:
        outputString.add(Mongol.digitFour);
      case Menksoft.five:
        outputString.add(Mongol.digitFive);
      case Menksoft.six:
        outputString.add(Mongol.digitSix);
      case Menksoft.seven:
        outputString.add(Mongol.digitSeven);
      case Menksoft.eight:
        outputString.add(Mongol.digitEight);
      case Menksoft.nine:
        outputString.add(Mongol.digitNine);
      case Menksoft.questionExclamation:
        outputString.add(Mongol.questionExclamation);
      case Menksoft.exclamationQuestion:
        outputString.add(Mongol.exclamationQuestion);
      case Menksoft.exclamation:
        outputString.add(Mongol.fullwidthExclamation);
      case Menksoft.question:
        outputString.add(Mongol.fullwidthQuestion);
      case Menksoft.semicolon:
        outputString.add(Mongol.fullwidthSemicolon);
      case Menksoft.leftParenthesis:
        outputString.add(Mongol.fullwidthLeftParenthesis);
      case Menksoft.rightParenthesis:
        outputString.add(Mongol.fullwidthRightParenthesis);
      case Menksoft.leftAngleBracket:
        outputString.add(Mongol.leftAngleBracket);
      case Menksoft.rightAngleBracket:
        outputString.add(Mongol.rightAngleBracket);
      case Menksoft.leftTortoiseShellBracket:
        outputString.add(Mongol.verticalLeftTortoiseShellBracket);
      case Menksoft.rightTortoiseShellBracket:
        outputString.add(Mongol.verticalRightTortoiseShellBracket);
      case Menksoft.leftDoubleAngleBracket:
        outputString.add(Mongol.leftDoubleAngleBracket);
      case Menksoft.rightDoubleAngleBracket:
        outputString.add(Mongol.rightDoubleAngleBracket);
      case Menksoft.leftWhiteCornerBracket:
        outputString.add(Mongol.verticalLeftWhiteCornerBracket);
      case Menksoft.rightWhiteCornerBracket:
        outputString.add(Mongol.verticalRightWhiteCornerBracket);
      case Menksoft.fullWidthComma:
        outputString.add(Mongol.verticalComma);
      case Menksoft.x:
        outputString.add(0x00D7); // FIXME using the multiplication sign?
      case Menksoft.referenceMark:
        outputString.add(Mongol.referenceMark);
      case Menksoft.enDash:
        outputString.add(Mongol.verticalEnDash);
      case Menksoft.emDash:
        outputString.add(Mongol.verticalEmDash);
      default:
        outputString.add(currentChar);
    }
  }

  bool _isMenksoftSpaceChar(int character) {
    return character == SPACE ||
        character == Menksoft.nonbreakingSpace ||
        character == Menksoft.unknownSpace;
  }
}
