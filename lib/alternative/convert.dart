import '../mongol_code.dart';
import 'fsv_rules.dart';
import 'maps.dart';
import 'models.dart';
import 'mvs_rules.dart';

String convertUnicodeToMenksoft(String input) {
  final output = StringBuffer();
  final codeUnits = input.codeUnits;
  int i = 0;

  while (i < codeUnits.length) {
    // 1. Find the next Mongolian segment
    int segmentStart = i;
    // Pass through non-Mongolian word characters
    while (segmentStart < codeUnits.length && !_isMongolianSegmentCharacter(codeUnits[segmentStart])) {
      var codeUnit = codeUnits[segmentStart];
      // do a direct map replacement for punctuation
      if (unicodeToMenksoftPunctuation.keys.contains(codeUnit)) {
        codeUnit = unicodeToMenksoftPunctuation[codeUnit]!;
      }
      output.writeCharCode(codeUnit);
      segmentStart++;
    }
    if (segmentStart == codeUnits.length) break;
    int segmentEnd = segmentStart;
    while (segmentEnd < codeUnits.length && _isMongolianSegmentCharacter(codeUnits[segmentEnd])) {
      segmentEnd++;
    }

    // 2. Process the segment
    final segment = codeUnits.sublist(segmentStart, segmentEnd);
    final menksoftCode = _processMongolianSegment(segment);
    output.write(menksoftCode);

    // 3. Move past the processed segment
    i = segmentEnd;
  }

  return output.toString();
}

// Include Todd, Sibe, and Manchu for now. These will be filtered out later,
// but including them allows building them into the collected word so that
// the control characters are not filtered out of the Todo+ words.
bool _isMongolianSegmentCharacter(int codeUnit) {
  return _isMongolianWordCharacter(codeUnit) || _isTodoSibeManchu(codeUnit);
}

// Mongolian letter or control character
bool _isMongolianWordCharacter(int codeUnit) {
  return _isControlCharacter(codeUnit) || _isMongolianLetter(codeUnit);
}

// FVS or MVS
bool _isControlCharacter(int codeUnit) {
  return codeUnit >= 0x180A && codeUnit <= 0x180F;
}

bool _isMongolianLetter(int codeUnit) {
  return codeUnit >= 0x1820 && codeUnit <= 0x1842;
}

bool _isTodoSibeManchu(int codeUnit) {
  return codeUnit >= 0x1843 && codeUnit <= 0x18AA;
}

// CharType _getCharType(int codeUnit) {
//   return charInfoMap[codeUnit]?.type ?? (_isMongolianScript(codeUnit) ? CharType.Other : CharType.WordBoundary);
// }

// bool _isMongolianScript(int codeUnit) {
//   return (codeUnit >= 0x1800 && codeUnit <= 0x18AA) ||
//       (codeUnit >= 0x11660 && codeUnit <= 0x1167F); // Mongolian Supplement
// }

bool _isFVS(int? codeUnit) {
  if (codeUnit == null) return false;
  return codeUnit == Unicode.FVS1 || //
      codeUnit == Unicode.FVS2 ||
      codeUnit == Unicode.FVS3 ||
      codeUnit == Unicode.FVS4;
}

Position _getPosition(int index, int segmentLength) {
  if (segmentLength == 1) return Position.isol;
  if (index == 0) return Position.init;
  if (index == segmentLength - 1) return Position.fina;
  return Position.medi;
}

// Placeholder - Needs actual implementation based on Appendix C
Gender _getGenderContext(List<int> segmentRunes, int currentIndex) {
  // Scan backwards in the segment (word) for vowels
  // Apply rules from Appendix C
  // For simplicity, default to Neutral or guess based on first vowel?
  // This needs careful implementation matching the standard.
  for (int i = currentIndex - 1; i >= 0; i--) {
    final rune = segmentRunes[i];
    final info = charInfoMap[rune];
    if (info != null && info.type == CharType.Vowel && info.initialGender != Gender.Neutral) {
      return info.initialGender;
    }
  }
  // Default if no determining vowel found before
  return Gender.Neutral; // Or perhaps Masculine as a default? Check standard practice.
}

// A segment may include multiple words or suffixes separated by MVS
String _processMongolianSegment(List<int> segment) {
  if (segment.isEmpty) return '';

  // Return Todo, Sibe, and Manchu strings without processing
  if (_containsTodoSibeManchu(segment)) {
    return String.fromCharCodes(segment);
  }

  // Split by MVS and process each word
  final outputMenksoft = <int>[];
  final words = _splitByMvsWords(segment);
  for (final word in words) {
    final menksoftCode = _processMongolianWord(word);
    outputMenksoft.addAll(menksoftCode);
  }

  return String.fromCharCodes(outputMenksoft);
}

bool _containsTodoSibeManchu(List<int> codeUnits) {
  for (int codeUnit in codeUnits) {
    if (_isTodoSibeManchu(codeUnit)) return true;
  }
  return false;
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
  return (index + 2 >= segment.length || !_isMvs(segment[index + 2]));
}

bool _isMongolianAe(int codeUnit) {
  return codeUnit == Unicode.A || codeUnit == Unicode.E;
}

List<int> _processMongolianWord(List<int> word) {
  // --- Apply Rules in Priority Order ---

  // 1. Check Fixed Sequences (GBT+25914-2023 Appendix D)
  final fixedSequence = _replaceFixedSequenceWord(word);
  if (fixedSequence != null) {
    return fixedSequence;
  }

  final outputMenksoft = <int>[];
  int currentIndex = 0;

  while (currentIndex < word.length) {
    final currentChar = word[currentIndex];
    final position = _getPosition(currentIndex, word.length);
    final genderContext = _getGenderContext(word, currentIndex);
    final nextChar = (currentIndex + 1 < word.length) ? word[currentIndex + 1] : null;
    // final prevChar = (currentIndex > 0) ? segmentRunes[currentIndex - 1] : null; // Need careful handling of consumed chars

    // int consumed = 0;
    // int? menksoftGlyph;

    // 2. Check FVS
    if (_isFVS(nextChar)) {
      final glyph = applyFvsRule(unicodeChar: currentChar, fvs: nextChar!, position: position, shape: Shape.TOOTH);
      if (glyph != null) {
        outputMenksoft.add(glyph);
        currentIndex += 2;
        continue;
      }
    }

    // 3. Check MVS
    if (currentChar == Unicode.MVS) {
      final glyph = Menksoft.NONBREAKING_SPACE;
      outputMenksoft.add(glyph);
      currentIndex += 1;
      continue;
    }
    if (nextChar == Unicode.MVS) {
      final glyphs = applyMvsRule(word, currentIndex);
      if (glyphs != null) {
        outputMenksoft.addAll(glyphs);
        currentIndex += 2;
        continue;
      }
    }

    // 4. Check NIRUGU
    if (currentChar == Unicode.MONGOLIAN_NIRUGU) {
      outputMenksoft.add(Menksoft.NIRUGU);
      currentIndex += 1;
      continue;
    }

    // 5. Apply General Contextual Rules (Appendix B)

    // Lookup rule for (currentChar, position, genderContext, neighbors) -> presentationId
    final glyph = _findContextualRule(word, currentIndex, position, genderContext);
    if (glyph != null) {
      outputMenksoft.add(glyph);
      currentIndex += 1;
      continue;
    }

    // 7. Fallback
    print("Warning: No rule found for U+${currentChar.toRadixString(16)} at index $currentIndex in segment.");
    // Output default or error
    outputMenksoft.add(0xFFFD); // Unicode Replacement Character
    // Else: Control char like FVS might have been consumed without direct output
  }

  return outputMenksoft;
}

// Finds presentation ID based on context (position, neighbors, gender)
int? _findContextualRule(List<int> segmentRunes, int currentIndex, Position position, Gender gender) {
  // !!! Implement lookup based on Appendix B rules !!!
  // This is the most complex part. Needs matching based on position,
  // preceding/succeeding char types, specific char checks, gender.
  final charCode = segmentRunes[currentIndex];
  print("Lookup Context rule for U+${charCode.toRadixString(16)} at pos $position, gender $gender");

  // Example: Find rule for 'A' (0x1820)
  if (charCode == 0x1820) {
    switch (position) {
      case Position.init:
        return 0x0004; // ml. a first initial form
      case Position.medi:
        return 0x0005; // ml. a first medial form
      case Position.fina:
        return 0x0008; // ml. a first final form
      case Position.isol:
        return 0x00B2; // ml. a first isolate form
    }
  }
  // Add rules for ALL other characters...

  // Fallback to a default if no specific rule found (should be rare)
  return _findDefaultRule(charCode, position);
}

// Finds a very basic default presentation ID based only on char + position
int? _findDefaultRule(int charCode, Position position) {
  // Extremely simplified fallback - use with caution!
  print("Fallback rule for U+${charCode.toRadixString(16)} at pos $position");
  if (charCode == 0x1820) {
    // 'A'
    switch (position) {
      case Position.init:
        return 0x0004;
      case Position.medi:
        return 0x0005;
      case Position.fina:
        return 0x0008;
      case Position.isol:
        return 0x00B2;
    }
  }
  // Add other basic defaults...
  return null; // No default found
}
