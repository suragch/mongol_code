/// Convenience class for the Mongolian Unicode values used in this package.
class Mongol {
  @Deprecated('Use nirugu instead')
  static const int zwj = 0x200D; // Zero-width joiner

  @Deprecated('Use mvs instead')
  static const int nnbs = 0x202F; // Narrow No-Break Space

  // punctuation
  static const int space = 0x0020;
  static const int percent = 0x0025;
  static const int plus = 0x002B;
  static const int minus = 0x002D;
  static const int equals = 0x003D;
  static const int tilde = 0x007E;
  static const int middleDot = 0x00B7;
  static const int questionExclamation = 0x2048;
  static const int exclamationQuestion = 0x2049;
  static const int fullwidthSemicolon = 0xFF1B;
  static const int fullwidthExclamation = 0xFF01;
  static const int fullwidthQuestion = 0xFF1F;
  static const int fullwidthHyphenMinus = 0xFF0D;
  static const int fullwidthLeftParenthesis = 0xFF08;
  static const int fullwidthRightParenthesis = 0xFF09;
  static const int leftDoubleAngleBracket = 0x300A;
  static const int rightDoubleAngleBracket = 0x300B;
  static const int leftAngleBracket = 0x3008;
  static const int rightAngleBracket = 0x3009;
  static const int fullwidthLeftSquareBracket = 0xFF3B;
  static const int fullwidthRightSquareBracket = 0xFF3D;

  // Additional punctuation not defined by the 2023 standard
  static const int verticalComma = 0xFE10;
  static const int verticalColon = 0xFE13;
  static const int verticalEmDash = 0xFE31;
  static const int verticalEnDash = 0xFE32;
  static const int verticalLeftTortoiseShellBracket = 0xFE39;
  static const int verticalRightTortoiseShellBracket = 0xFE3A;
  static const int verticalLeftWhiteCornerBracket = 0xFE43;
  static const int verticalRightWhiteCornerBracket = 0xFE44;
  static const int referenceMark = 0x203B;
  static const int punctuationX = 0x00D7;

  // Unicode Mongolian Values
  static const int birga = 0x1800;
  static const int ellipsis = 0x1801;
  static const int comma = 0x1802;
  static const int fullStop = 0x1803;
  static const int colon = 0x1804;
  static const int fourDots = 0x1805;
  static const int todoSoftHyphen = 0x1806;
  static const int sibeSyllableBoundaryMarker = 0x1807;
  static const int manchuComma = 0x1808;
  static const int manchuFullStop = 0x1809;
  static const int nirugu = 0x180a;
  static const int fvs1 = 0x180b;
  static const int fvs2 = 0x180c;
  static const int fvs3 = 0x180d;
  static const int mvs = 0x180e; // MONGOLIAN_VOWEL_SEPARATOR
  static const int fvs4 = 0x180f;
  static const int digitZero = 0x1810;
  static const int digitOne = 0x1811;
  static const int digitTwo = 0x1812;
  static const int digitThree = 0x1813;
  static const int digitFour = 0x1814;
  static const int digitFive = 0x1815;
  static const int digitSix = 0x1816;
  static const int digitSeven = 0x1817;
  static const int digitEight = 0x1818;
  static const int digitNine = 0x1819;
  static const int a = 0x1820;
  static const int e = 0x1821;
  static const int i = 0x1822;
  static const int o = 0x1823;
  static const int u = 0x1824;
  static const int oe = 0x1825;
  static const int ue = 0x1826;
  static const int ee = 0x1827;
  static const int na = 0x1828;
  static const int ang = 0x1829;
  static const int ba = 0x182A;
  static const int pa = 0x182B;
  static const int qa = 0x182C;
  static const int ga = 0x182D;
  static const int ma = 0x182E;
  static const int la = 0x182F;
  static const int sa = 0x1830;
  static const int sha = 0x1831;
  static const int ta = 0x1832;
  static const int da = 0x1833;
  static const int cha = 0x1834;
  static const int ja = 0x1835;
  static const int ya = 0x1836;
  static const int ra = 0x1837;
  static const int wa = 0x1838;
  static const int fa = 0x1839;
  static const int ka = 0x183A;
  static const int kha = 0x183B;
  static const int tsa = 0x183C;
  static const int za = 0x183D;
  static const int haa = 0x183E;
  static const int zra = 0x183F;
  static const int lha = 0x1840;
  static const int zhi = 0x1841;
  static const int chi = 0x1842;

  static bool isConsonant(int codeUnit) {
    return (codeUnit >= Mongol.na && codeUnit <= Mongol.chi);
  }

  static bool isVowel(int codeUnit) {
    return (codeUnit >= Mongol.a && codeUnit <= Mongol.ee);
  }

  static bool isMasculineVowel(int codeUnit) {
    return (codeUnit == Mongol.a ||
        codeUnit == Mongol.o ||
        codeUnit == Mongol.u);
  }

  static bool isFeminineVowel(int codeUnit) {
    return (codeUnit == Mongol.e ||
        codeUnit == Mongol.ee ||
        codeUnit == Mongol.oe ||
        codeUnit == Mongol.ue);
  }

  static bool isFVS(int codeUnit) {
    return codeUnit == fvs1 ||
        codeUnit == fvs2 ||
        codeUnit == fvs3 ||
        codeUnit == fvs4;
  }

  /// Whether the U or OE at the given index needs a long tooth.
  static bool needsLongToothU(List<int> word, int index) {
    if (index < 0) return false;

    if (word[index] != Mongol.oe && word[index] != Mongol.ue) {
      return false;
    }

    if (index == 0) return true;

    if (index == 1) {
      if (isConsonant(word[0])) {
        return true;
      }
    }

    if (index == 2) {
      return isConsonant(word[0]) && isFVS(word[1]);
    }

    return false;
  }
}
