import '../shared/gender.dart';
import 'mongol.dart';

class Suffix {
  static const String YIN = '\u180E\u1836\u1822\u1828';
  static const String UN = '\u180E\u1824\u1828';
  static const String UEN = '\u180E\u1826\u1828';
  static const String U = '\u180E\u1824';
  static const String UE = '\u180E\u1826';
  static const String I = '\u180E\u1822';
  static const String YI = '\u180E\u1836\u1822';
  static const String DU = '\u180E\u1833\u1824';
  static const String DUE = '\u180E\u1833\u1826';
  static const String TU = '\u180E\u1832\u1824';
  static const String TUE = '\u180E\u1832\u1826';
  static const String DUR = '\u180E\u1833\u1824\u1837';
  static const String DUER = '\u180E\u1833\u1826\u1837';
  static const String TUR = '\u180E\u1832\u1824\u1837';
  static const String TUER = '\u180E\u1832\u1826\u1837';
  static const String DAQI = '\u180E\u1833\u1820\u182C\u1822';
  static const String DEQI = '\u180E\u1833\u1821\u182C\u1822';
  static const String TAQI = '\u180E\u1832\u1820\u182C\u1822';
  static const String TEQI = '\u180E\u1832\u1821\u182C\u1822';
  static const String ACHA = '\u180E\u1820\u1834\u1820';
  static const String ECHE = '\u180E\u1821\u1834\u1821';
  static const String BAR = '\u180E\u182A\u1820\u1837';
  static const String BER = '\u180E\u182A\u1821\u1837';
  static const String IYAR = '\u180E\u1822\u1836\u1820\u1837';
  static const String IYER = '\u180E\u1822\u1836\u1821\u1837';
  static const String TAI = '\u180E\u1832\u1820\u1822';
  static const String TEI = '\u180E\u1832\u1821\u1822';
  static const String LUGA = '\u180E\u182F\u1824\u182D\u180E\u1820';
  static const String LUEGE = '\u180E\u182F\u1826\u182D\u1821';
  static const String BAN = '\u180E\u182A\u1820\u1828';
  static const String BEN = '\u180E\u182A\u1821\u1828';
  static const String IYAN = '\u180E\u1822\u1836\u1820\u1828';
  static const String IYEN = '\u180E\u1822\u1836\u1821\u1828';
  static const String YUGAN = '\u180E\u1836\u1824\u182D\u1820\u1828';
  static const String YUEGEN = '\u180E\u1836\u1826\u182D\u1821\u1828';
  static const String DAGAN = '\u180E\u1833\u1820\u182D\u1820\u1828';
  static const String DEGEN = '\u180E\u1833\u1821\u182D\u1821\u1828';
  static const String TAGAN = '\u180E\u1832\u1820\u182D\u1820\u1828';
  static const String TEGEN = '\u180E\u1832\u1821\u182D\u1821\u1828';
  static const String ACHAGAN = '\u180E\u1820\u1834\u1820\u182D\u1820\u1828';
  static const String ECHEGEN = '\u180E\u1821\u1834\u1821\u182D\u1821\u1828';
  static const String TAIGAN = '\u180E\u1832\u1820\u1822\u182D\u1820\u1828';
  static const String TEIGEN = '\u180E\u1832\u1821\u1822\u182D\u1821\u1828';
  static const String UD = '\u180E\u1824\u1833';
  static const String UED = '\u180E\u1826\u1833';
  static const String NUGUD = '\u180E\u1828\u1824\u182D\u1824\u1833';
  static const String NUEGUED = '\u180E\u1828\u1826\u182D\u1826\u1833';
  static const String NAR = '\u180E\u1828\u1820\u1837';
  static const String NER = '\u180E\u1828\u1821\u1837';
  static const String UU = '\u180E\u1824\u1824';
  static const String UEUE = '\u180E\u1826\u1826';
  static const String DA = '\u180E\u1833\u1820';
  static const String DE = '\u180E\u1833\u1821';
  static const String CHU = '\u180E\u1834\u1824';
  static const String CHUE = '\u180E\u1834\u1826';

  /// YIN comes after a vowel, UN comes after a consonant, U comes after N.
  ///
  /// Return the proper form of the suffix YIN/UN/U based on the gender and ending
  /// of the previous word.
  static String yinUnU(Gender previousWordGender, int previousWordLastChar) {
    if (Mongol.isVowel(previousWordLastChar)) {
      return Suffix.YIN;
    } else if (previousWordLastChar == Mongol.na) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.U;
      } else {
        return Suffix.UE;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.UN;
      } else {
        return Suffix.UEN;
      }
    }
  }

  /// TU after B, G, D, R, S. Others are DU.
  ///
  /// Return the proper form of the suffix TU/DU based on the gender and ending
  /// of the previous word.
  static String tuDu(Gender previousWordGender, int previousWordLastChar) {
    if (_isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.TU;
      } else {
        return Suffix.TUE;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.DU;
      } else {
        return Suffix.DUE;
      }
    }
  }

  static bool _isBGDRS(int codeUnit) {
    return (codeUnit == Mongol.ba ||
        codeUnit == Mongol.ga ||
        codeUnit == Mongol.da ||
        codeUnit == Mongol.ra ||
        codeUnit == Mongol.sa);
  }

  /// Return the proper form of the suffix TAGAN/DAGAN/TEGAN/DEGAN based on the
  /// gender and ending of the previous word.
  static String taganDagan(
    Gender previousWordGender,
    int previousWordLastChar,
  ) {
    if (_isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.TAGAN;
      } else {
        return Suffix.TEGEN;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.DAGAN;
      } else {
        return Suffix.DEGEN;
      }
    }
  }

  /// Return the proper form of the suffix TAQI/DAQI based on the gender and
  /// ending of the previous word.
  static String taqiDaqi(Gender previousWordGender, int previousWordLastChar) {
    if (_isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.TAQI;
      } else {
        return Suffix.TEQI;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.DAQI;
      } else {
        return Suffix.DEQI;
      }
    }
  }

  /// Yi comes after a vowel, I comes after a consonant.
  ///
  /// Return the proper form of the suffix YI/I based on the last character of
  /// the previous word.
  static String yiI(int previousWordLastChar) {
    if (Mongol.isVowel(previousWordLastChar)) {
      return Suffix.YI;
    }
    return Suffix.I;
  }

  /// BAR comes after a vowel, IYAR comes after a consonant.
  ///
  /// Return the proper form of the suffix BAR/IYAR based on the gender and ending
  /// of the previous word.
  static String barIyar(Gender previousWordGender, int previousWordLastChar) {
    if (Mongol.isVowel(previousWordLastChar)) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.IYAR;
      } else {
        return Suffix.IYER;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.BAR;
      } else {
        return Suffix.BER;
      }
    }
  }

  /// BAN comes after a vowel, IYAN comes after a consonant.
  ///
  /// Return the proper form of the suffix BAN/IYAN based on the gender and ending
  /// of the previous word.
  static String banIyan(Gender previousWordGender, int previousWordLastChar) {
    if (Mongol.isVowel(previousWordLastChar)) {
      if (previousWordGender == Gender.masculine) {
        return Suffix.IYAN;
      } else {
        return Suffix.IYEN;
      }
    } else {
      if (previousWordGender == Gender.masculine) {
        return Suffix.BAN;
      } else {
        return Suffix.BEN;
      }
    }
  }

  /// Return the proper form of the suffix ACHA/ECHE based on the gender of the
  /// previous word.
  static String achaEche(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.ACHA;
    } else {
      return Suffix.ECHE;
    }
  }

  /// Return the proper form of the suffix TAI_TEI based on the gender of the
  /// previous word.
  static String taiTei(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.TAI;
    } else {
      return Suffix.TEI;
    }
  }

  /// Return the proper form of the suffix UU based on the gender of the
  /// previous word.
  static String uu(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.UU;
    } else {
      return Suffix.UEUE;
    }
  }

  /// Return the proper form of the suffix UD based on the gender of the
  /// previous word.
  static String ud(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.UD;
    } else {
      return Suffix.UED;
    }
  }

  static String suffixNugud(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.NUGUD;
    } else {
      return Suffix.NUEGUED;
    }
  }

  static String suffixChu(Gender previousWordGender) {
    if (previousWordGender == Gender.masculine) {
      return Suffix.CHU;
    } else {
      return Suffix.CHUE;
    }
  }
}
