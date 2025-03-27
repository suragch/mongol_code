class MongolianCharInfo {
  final int unicode;
  final String name;
  final CharType type;
  final Gender initialGender;
  // Add other relevant properties if needed

  MongolianCharInfo(this.unicode, this.name, this.type, this.initialGender);
}

enum CharType { Vowel, Consonant, FVS, MVS, NIRUGU, Punctuation, Digit, Other, WordBoundary }

enum Gender { Masculine, Feminine, Neutral }

enum Position { isol, init, medi, fina }
