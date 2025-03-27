import '../mongol_code.dart';
import 'maps.dart';
import 'models.dart';

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

CharType _getCharType(int codeUnit) {
  return charInfoMap[codeUnit]?.type ?? (_isMongolianScript(codeUnit) ? CharType.Other : CharType.WordBoundary);
}

bool _isMongolianScript(int codeUnit) {
  return (codeUnit >= 0x1800 && codeUnit <= 0x18AA) ||
      (codeUnit >= 0x11660 && codeUnit <= 0x1167F); // Mongolian Supplement
}

bool _isFVS(int? codeUnit) {
  if (codeUnit == null) return false;
  return codeUnit == Unicode.FVS1 || //
      codeUnit == Unicode.FVS2 ||
      codeUnit == Unicode.FVS3 ||
      codeUnit == Unicode.FVS4;
}

Position _getPosition(int index, int segmentLength) {
  if (segmentLength == 1) return Position.isol;
  if (index == 0) return Position.initial;
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

    int consumed = 0;
    int? menksoftGlyph;

    // 2. Check FVS
    if (_isFVS(nextChar)) {
      // Lookup rule for (currentChar, FVS=nextChar, position, genderContext) -> presentationId
      menksoftGlyph = _findFvsRule(currentChar, nextChar, position, genderContext);
      if (menksoftGlyph != null) {
        consumed = 2;
      }
    }

    // 3. Check MVS (U+180E)
    if (consumed == 0 && currentChar == 0x180E) {
      // Determine MVS form (narrow/wide/invalid) based on context (Chapter 9)
      menksoftGlyph = _getMvsPresentationId(word, currentIndex); // e.g., returns 0x00DE, 0x00DF, or 0x00DD
      consumed = 1;
    }

    // 4. Check NIRUGU (U+180A)
    if (consumed == 0 && currentChar == 0x180A) {
      menksoftGlyph = 0x00A7; // Default NIRUGU presentation ID from Table 4
      // Apply specific NIRUGU context rules if any (Chapter 9)
      consumed = 1;
    }

    // 5. Check Mandatory Ligatures (Appendix E)
    if (consumed == 0 && nextChar != null) {
      int ligatureKey = (currentChar << 16) | nextChar;
      if (mandatoryLigatures.containsKey(ligatureKey)) {
        menksoftGlyph = mandatoryLigatures[ligatureKey];
        // Add check: Make sure FVS didn't override this ligature possibility
        // (This requires knowing if the currentChar had an FVS applied just before it)
        consumed = 2;
      }
    }

    // 6. Apply General Contextual Rules (Appendix B)
    if (consumed == 0) {
      // Lookup rule for (currentChar, position, genderContext, neighbors) -> presentationId
      menksoftGlyph = _findContextualRule(word, currentIndex, position, genderContext);
      consumed = 1;
    }

    // 7. Fallback
    if (consumed == 0) {
      print("Warning: No rule found for U+${currentChar.toRadixString(16)} at index $currentIndex in segment.");
      // Output default or error
      outputMenksoft.add(0xFFFD); // Unicode Replacement Character
      consumed = 1;
    } else if (menksoftGlyph != null) {
      final puaCode = presentationIdToPua[menksoftGlyph];
      if (puaCode != null) {
        outputMenksoft.add(puaCode);
      } else {
        print("Warning: No PUA mapping for presentation ID 0x${menksoftGlyph.toRadixString(16)}");
        outputMenksoft.add(0xFFFD); // Or fallback to nominal char?
      }
    }
    // Else: Control char like FVS might have been consumed without direct output

    currentIndex += consumed;
  }

  return outputMenksoft;
}

// Returns Menksoft code if found, null otherwise
List<int>? _replaceFixedSequenceWord(List<int> unicodeSequence) {}

// --- Placeholder Rule Lookup Functions (Need FULL implementation) ---

// Finds presentation ID based on FVS
int? _findFvsRule(int charCode, int fvsCode, Position position, Gender gender) {
  // !!! Implement lookup based on Appendix B / Appendix A !!!
  // This is complex, needs detailed rule encoding.
  // Example structure: Map<(int char, int fvs), int presentationId> fvsRules;
  print("Lookup FVS rule for U+${charCode.toRadixString(16)} + FVS${(fvsCode & 0xF)}");
  // Placeholder: just return a default medial 'a' for A+FVS1 for testing
  if (charCode == 0x1820 && fvsCode == 0x180B) return 0x0005;
  return _findDefaultRule(charCode, position); // Fallback if no specific FVS rule found
}

// Finds presentation ID for MVS based on context
int _getMvsPresentationId(List<int> segmentRunes, int currentIndex) {
  // !!! Implement logic from Chapter 9a) !!!
  // Check if it's separating A/E at end of word -> narrow (0x00DE)
  // Check if it's used as non-breaking space -> wide (0x00DF)
  // Check if separating additional components -> wide (0x00DF)
  // Otherwise -> invalid (0x00DD)
  print("Determine MVS form at index $currentIndex");
  // Extremely simplified placeholder:
  bool isAtWordEnd = currentIndex == segmentRunes.length - 1;
  bool prevIsConsonant = currentIndex > 0 && _getCharType(segmentRunes[currentIndex - 1]) == CharType.Consonant;
  bool nextIsVowelAE =
      currentIndex + 1 < segmentRunes.length &&
      (segmentRunes[currentIndex + 1] == 0x1820 || segmentRunes[currentIndex + 1] == 0x1821);

  // Rough logic based on Chapter 9a first bullet point
  if (prevIsConsonant && nextIsVowelAE && isAtWordEnd) {
    // This isn't quite right, MVS goes *between* cons and A/E.
    // Let's assume MVS is *at* currentIndex. Need to check char *before* MVS and char *after* MVS.
    if (currentIndex > 0 && currentIndex + 1 < segmentRunes.length) {
      bool charBeforeIsCons = _getCharType(segmentRunes[currentIndex - 1]) == CharType.Consonant;
      bool charAfterIsAE = segmentRunes[currentIndex + 1] == 0x1820 || segmentRunes[currentIndex + 1] == 0x1821;
      bool isFinalPair = currentIndex + 1 == segmentRunes.length - 1; // Is the A/E the last char?
      if (charBeforeIsCons && charAfterIsAE && isFinalPair) {
        return 0x00DE; // Narrow
      }
    }
  }

  // Rough logic for non-breaking space/component separator (needs more context)
  // Assuming wide form is the common case otherwise? Check standard.
  // Let's default to wide for now if not narrow.
  // return 0x00DF; // Wide (Placeholder)

  // Defaulting to invalid if context not fully matched
  return 0x00DD; // Invalid (Placeholder)
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
      case Position.initial:
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
      case Position.initial:
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
