import 'package:mongol_code/alternative/fixed_words.dart';

import '../mongol_code.dart';
import '../src/mongol_word.dart';
import 'maps.dart';

String convertUnicodeToMenksoft(String input) {
  final output = <int>[];
  final codeUnits = input.codeUnits;
  int i = 0;

  while (i < codeUnits.length) {
    // 1. Find the next Mongolian segment
    int segmentStart = i;
    // Pass through non-Mongolian word characters
    while (segmentStart < codeUnits.length &&
        !_isMongolianSegmentCharacter(codeUnits[segmentStart])) {
      var codeUnit = codeUnits[segmentStart];
      // do a direct map replacement for punctuation (Birga handled separately)
      if (unicodeToMenksoftPunctuation.keys.contains(codeUnit)) {
        codeUnit = unicodeToMenksoftPunctuation[codeUnit]!;
      }
      output.add(codeUnit);
      segmentStart++;
    }
    if (segmentStart == codeUnits.length) break;
    int segmentEnd = segmentStart;
    while (segmentEnd < codeUnits.length &&
        _isMongolianSegmentCharacter(codeUnits[segmentEnd])) {
      segmentEnd++;
    }

    // 2. Process the segment
    final segment = codeUnits.sublist(segmentStart, segmentEnd);
    final menksoftCode = _processMongolianSegment(segment);
    output.addAll(menksoftCode);

    // 3. Move past the processed segment
    i = segmentEnd;
  }

  return String.fromCharCodes(output);
}

// Include Todd, Sibe, and Manchu for now. These will be filtered out later,
// but including them allows building them into the collected word so that
// the control characters are not filtered out of the Todo+ words.
bool _isMongolianSegmentCharacter(int codeUnit) {
  return _isMongolianWordCharacter(codeUnit) ||
      _isTodoSibeManchu(codeUnit) ||
      _isBackSupportChar(codeUnit);
}

// Mongolian letter or control character or Birga
bool _isMongolianWordCharacter(int codeUnit) {
  return _isControlCharacter(codeUnit) ||
      _isMongolianLetter(codeUnit) ||
      codeUnit == Unicode.MONGOLIAN_BIRGA;
}

// FVS or MVS
bool _isControlCharacter(int codeUnit) {
  return codeUnit >= 0x180A && codeUnit <= 0x180F;
}

bool _isMongolianLetter(int codeUnit) {
  return codeUnit >= 0x1820 && codeUnit <= 0x1842;
}

bool _isBackSupportChar(int codeUnit) {
  return codeUnit == Unicode.NNBS;
}

bool _isTodoSibeManchu(int codeUnit) {
  return codeUnit >= 0x1843 && codeUnit <= 0x18AA;
}

// bool _isFVS(int? codeUnit) {
//   if (codeUnit == null) return false;
//   return codeUnit == Unicode.FVS1 || //
//       codeUnit == Unicode.FVS2 ||
//       codeUnit == Unicode.FVS3 ||
//       codeUnit == Unicode.FVS4;
// }

// A segment may include multiple words or suffixes separated by MVS
List<int> _processMongolianSegment(List<int> segment) {
  if (segment.isEmpty) return segment;

  // Return Todo, Sibe, and Manchu strings without processing
  if (_containsTodoSibeManchu(segment)) {
    return segment;
  }

  // Handle old NNBS and ZWJ
  _replaceDeprecatedChars(segment);

  // Split by MVS and process each word
  final outputMenksoft = <int>[];
  final words = _splitByMvsWords(segment);
  for (final word in words) {
    final menksoftCode = _processMongolianWord(word);
    outputMenksoft.addAll(menksoftCode);
  }

  return outputMenksoft;
}

bool _containsTodoSibeManchu(List<int> codeUnits) {
  for (int codeUnit in codeUnits) {
    if (_isTodoSibeManchu(codeUnit)) return true;
  }
  return false;
}

void _replaceDeprecatedChars(List<int> segment) {
  for (int i = 0; i < segment.length; i++) {
    if (segment[i] == Unicode.NNBS) {
      segment[i] = Unicode.MVS;
    } else if (segment[i] == Unicode.ZWJ) {
      segment[i] = Unicode.MONGOLIAN_NIRUGU;
    }
  }
}

List<List<int>> _splitByMvsWords(List<int> segment) {
  final words = <List<int>>[];
  var word = <int>[];
  for (int i = 0; i < segment.length; i++) {
    int codeUnit = segment[i];
    if (_isMvs(codeUnit)) {
      if (_isMvsAeWord(i, segment)) {
        // examples: bain-a, shin-e
        word.add(codeUnit);
        word.add(segment[i + 1]);
        words.add(word);
        word = [];
        i++;
      } else {
        // a case suffix, separate word, or invalid MVS
        if (word.isNotEmpty) {
          words.add(word);
          word = [];
        }
        word.add(codeUnit);
      }
    } else {
      word.add(codeUnit);
    }
  }
  if (word.isNotEmpty) {
    words.add(word);
  }
  return words;
}

bool _isMvs(int codeUnit) {
  return codeUnit == Unicode.MVS;
}

bool _isMvsAeWord(int index, List<int> segment) {
  // There must be at least one more letter
  if (index + 1 >= segment.length) return false;
  // That letter must be an A or E
  if (!_isMongolianAe(segment[index + 1])) return false;
  // That must be the end of the segment or the following letter must be an MVS
  return (index + 2 >= segment.length || _isMvs(segment[index + 2]));
}

bool _isMongolianAe(int codeUnit) {
  return codeUnit == Unicode.A || codeUnit == Unicode.E;
}

List<int> _processMongolianWord(List<int> unicode) {
  // --- Apply Rules in Priority Order ---

  // 1. Check Fixed Sequences (GBT+25914-2023 Appendix D)
  final fixedSequence = checkFixedSequence(unicode);
  if (fixedSequence != null) {
    return fixedSequence;
  }

  // 2. Apply FVS, MVS, and context rules
  final word = MongolWord(unicode);
  return word.convertToMenksoftCode();
}
