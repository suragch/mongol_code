import 'package:mongol_code/alternative/models.dart';

import '../src/shape.dart';
import 'mongolian.dart';

class MongolianWord {
  MongolianWord(this.unicode) {
    _preparePositionInfo();
  }

  void _preparePositionInfo() {
    for (int i = 0; i < unicode.length; i++) {
      if (!_isControlChar(unicode[i])) {
        _firstLetterIndex = i;
        break;
      }
    }
    for (int i = unicode.length - 1; i >= 0; i--) {
      if (!_isControlChar(unicode[i])) {
        _lastLetterIndex = i;
        break;
      }
    }
    if (_firstLetterIndex == -1 || _lastLetterIndex == -1) {
      throw Exception('Not a valid Mongolian word');
    }
  }

  final List<int> unicode;
  int _currentIndex = -1;
  int? fvs;
  int? _mvs;
  Position _position = Position.init;
  int _firstLetterIndex = -1;
  int _lastLetterIndex = -1;

  bool get currentCharHasFvs => fvs != null;
  bool get currentCharHasMvs => _mvs != null;
  Position get position => _position;

  int get currentChar => unicode[_currentIndex];

  bool nextChar() {
    for (int i = _currentIndex + 1; i < unicode.length; i++) {
      _currentIndex = i;

      if (_isControlChar(currentChar)) {
        // Ignore control chars that come before letters.
        // They can just disappear because they are malformed.
        // MVS at the beginning of words should have already been handled.
        continue;
      }
      _position = _getPosition();
      _setControlChars();
      return true;
    }
    return false;
  }

  Position _getPosition() {
    if (_firstLetterIndex == _lastLetterIndex) return Position.isol;
    if (_currentIndex <= _firstLetterIndex) return Position.init;
    if (_currentIndex >= _lastLetterIndex) return Position.fina;
    return Position.medi;
  }

  bool _isControlChar(int char) {
    // FVS or MVS
    return char >= 0x180b && char <= 0x180f;
  }

  void _setControlChars() {
    final nextChar = _valueAt(_currentIndex + 1);
    if (_isFvs(nextChar)) {
      fvs = nextChar;
      final nextNextChar = _valueAt(_currentIndex + 2);
      if (_isMvs(nextNextChar)) {
        _mvs = nextNextChar;
      } else {
        _mvs = null;
      }
    } else if (_isMvs(nextChar)) {
      _mvs = nextChar;
      fvs = null;
    } else {
      fvs = null;
      _mvs = null;
    }
  }

  int? _valueAt(int index) {
    if (index < 0 || index >= unicode.length) return null;
    return unicode[index];
  }

  bool _isFvs(int? char) {
    return char == Mongolian.FVS1 || char == Mongolian.FVS2 || char == Mongolian.FVS3 || char == Mongolian.FVS3;
  }

  bool _isMvs(int? char) {
    return char == Mongolian.MVS;
  }

  Shape getShape() {
    final char = unicode[_currentIndex];
    if (_isMasculineVowel(char)) {
      final previous = _letterBefore(_currentIndex);
      return (_isCombiningConsonant(previous)) ? Shape.ROUND : Shape.STEM;
    }
    if (_isFeminineVowel(char)) {
      final previous = _letterBefore(_currentIndex);
      return (_isCombiningConsonant(previous) || _isConditionalCombiningConsonant(previous)) ? Shape.ROUND : Shape.STEM;
    }
    if (char == Mongolian.NA) {
      final next = _letterAfter(_currentIndex);
    }

    // A vowel can be either ROUND or normal. The round form happens after a
    // if the current char is consonant, the shape depends on the next char
    return Shape.ROUND;
  }

  int? _letterBefore(int index) {
    for (var i = index - 1; i >= 0; i--) {
      final char = unicode[i];
      if (!_isControlChar(char)) {
        return char;
      }
    }
    return null;
  }

  int? _letterAfter(int index) {
    for (var i = index + 1; i < unicode.length; i++) {
      final char = unicode[i];
      if (!_isControlChar(char)) {
        return char;
      }
    }
    return null;
  }

  bool _isMasculineVowel(int? char) {
    return char == Mongolian.A || char == Mongolian.O || char == Mongolian.U;
  }

  bool _isFeminineVowel(int? char) {
    return char == Mongolian.E ||
        char == Mongolian.I ||
        char == Mongolian.OE ||
        char == Mongolian.UE ||
        char == Mongolian.EE;
  }

  bool _isCombiningConsonant(int? char) {
    return char == Mongolian.BA ||
        char == Mongolian.PA ||
        char == Mongolian.FA ||
        char == Mongolian.KA ||
        char == Mongolian.KHA;
  }

  bool _isConditionalCombiningConsonant(int? char) {
    return char == Mongolian.QA || char == Mongolian.GA;
  }
}
