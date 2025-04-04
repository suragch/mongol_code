import 'package:mongol_code/alternative/models.dart';

import 'mongolian.dart';

class MongolianWord {
  MongolianWord(this.unicode) {
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
  int? _fvs;
  int? _mvs;
  Position _position = Position.init;
  int _firstLetterIndex = -1;
  int _lastLetterIndex = -1;

  bool get currentCharHasFvs => _fvs != null;
  bool get currentCharHasMvs => _mvs != null;
  Position position = Position.init;

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
      _fvs = nextChar;
      final nextNextChar = _valueAt(_currentIndex + 2);
      if (_isMvs(nextNextChar)) {
        _mvs = nextNextChar;
      } else {
        _mvs = null;
      }
    } else if (_isMvs(nextChar)) {
      _mvs = nextChar;
      _fvs = null;
    } else {
      _fvs = null;
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
}
