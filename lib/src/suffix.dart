
import 'gender.dart';
import 'mongol_code.dart';
import 'unicode.dart';

class Suffix {
  static const String YIN = "\u202F\u1836\u1822\u1828";
  static const String UN = "\u202F\u1824\u1828";
  static const String UEN = "\u202F\u1826\u1828";
  static const String U = "\u202F\u1824";
  static const String UE = "\u202F\u1826";
  static const String I = "\u202F\u1822";
  static const String YI = "\u202F\u1836\u1822";
  static const String DU = "\u202F\u1833\u1824";
  static const String DUE = "\u202F\u1833\u1826";
  static const String TU = "\u202F\u1832\u1824";
  static const String TUE = "\u202F\u1832\u1826";
  static const String DUR = "\u202F\u1833\u1824\u1837";
  static const String DUER = "\u202F\u1833\u1826\u1837";
  static const String TUR = "\u202F\u1832\u1824\u1837";
  static const String TUER = "\u202F\u1832\u1826\u1837";
  static const String DAQI = "\u202F\u1833\u1820\u182C\u1822";
  static const String DEQI = "\u202F\u1833\u1821\u182C\u1822";
  static const String TAQI = "\u202F\u1832\u1820\u182C\u1822";
  static const String TEQI = "\u202F\u1832\u1821\u182C\u1822";
  static const String ACHA = "\u202F\u1820\u1834\u1820";
  static const String ECHE = "\u202F\u1821\u1834\u1821";
  static const String BAR = "\u202F\u182A\u1820\u1837";
  static const String BER = "\u202F\u182A\u1821\u1837";
  static const String IYAR = "\u202F\u1822\u1836\u1820\u1837";
  static const String IYER = "\u202F\u1822\u1836\u1821\u1837";
  static const String TAI = "\u202F\u1832\u1820\u1822";
  static const String TEI = "\u202F\u1832\u1821\u1822";
  static const String LUGA = "\u202F\u182F\u1824\u182D\u180E\u1820";
  static const String LUEGE = "\u202F\u182F\u1826\u182D\u1821";
  static const String BAN = "\u202F\u182A\u1820\u1828";
  static const String BEN = "\u202F\u182A\u1821\u1828";
  static const String IYAN = "\u202F\u1822\u1836\u1820\u1828";
  static const String IYEN = "\u202F\u1822\u1836\u1821\u1828";
  static const String YUGAN = "\u202F\u1836\u1824\u182D\u1820\u1828";
  static const String YUEGEN = "\u202F\u1836\u1826\u182D\u1821\u1828";
  static const String DAGAN = "\u202F\u1833\u1820\u182D\u1820\u1828";
  static const String DEGEN = "\u202F\u1833\u1821\u182D\u1821\u1828";
  static const String TAGAN = "\u202F\u1832\u1820\u182D\u1820\u1828";
  static const String TEGEN = "\u202F\u1832\u1821\u182D\u1821\u1828";
  static const String ACHAGAN = "\u202F\u1820\u1834\u1820\u182D\u1820\u1828";
  static const String ECHEGEN = "\u202F\u1821\u1834\u1821\u182D\u1821\u1828";
  static const String TAIGAN = "\u202F\u1832\u1820\u1822\u182D\u1820\u1828";
  static const String TEIGEN = "\u202F\u1832\u1821\u1822\u182D\u1821\u1828";
  static const String UD = "\u202F\u1824\u1833";
  static const String UED = "\u202F\u1826\u1833";
  static const String NUGUD = "\u202F\u1828\u1824\u182D\u1824\u1833";
  static const String NUEGUED = "\u202F\u1828\u1826\u182D\u1826\u1833";
  static const String NAR = "\u202F\u1828\u1820\u1837";
  static const String NER = "\u202F\u1828\u1821\u1837";
  static const String UU = "\u202F\u1824\u1824";
  static const String UEUE = "\u202F\u1826\u1826";
  static const String DA = "\u202F\u1833\u1820";
  static const String DE = "\u202F\u1833\u1821";
  static const String CHU = "\u202F\u1834\u1824";
  static const String CHUE = "\u202F\u1834\u1826";


  /// YIN comes after a vowel, UN comes after a consonant, U comes after N.
  static String getSuffixYinUnU(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isVowel(previousWordLastChar)) {
      return Suffix.YIN;
    } else if (previousWordLastChar == Unicode.NA) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.U;
      } else {
        return Suffix.UE;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.UN;
      } else {
        return Suffix.UEN;
      }
    }
  }

  // TU after B, G, D, R, S. Others are DU.
  static String getSuffixTuDu(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.TU;
      } else {
        return Suffix.TUE;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.DU;
      } else {
        return Suffix.DUE;
      }
    }
  }

  static String getSuffixTaganDagan(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.TAGAN;
      } else {
        return Suffix.TEGEN;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.DAGAN;
      } else {
        return Suffix.DEGEN;
      }
    }
  }

  static String getSuffixTaqiDaqi(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isBGDRS(previousWordLastChar)) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.TAQI;
      } else {
        return Suffix.TEQI;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.DAQI;
      } else {
        return Suffix.DEQI;
      }
    }
  }

  // Yi comes after a vowel, I comes after a consonant.
  static String getSuffixYiI(int previousWordLastChar) {
    if (MongolCode.isVowel(previousWordLastChar)) {
      return Suffix.YI;
    }
    return Suffix.I;
  }

  // BAR comes after a vowel, IYAR comes after a consonant.
  static String getSuffixBarIyar(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isVowel(previousWordLastChar)) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.IYAR;
      } else {
        return Suffix.IYER;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.BAR;
      } else {
        return Suffix.BER;
      }
    }
  }

  // BAN comes after a vowel, IYAN comes after a consonant.
  static String getSuffixBanIyan(Gender previousWordGender, int previousWordLastChar) {
    if (MongolCode.isVowel(previousWordLastChar)) {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.IYAN;
      } else {
        return Suffix.IYEN;
      }
    } else {
      if (previousWordGender == Gender.MASCULINE) {
        return Suffix.BAN;
      } else {
        return Suffix.BEN;
      }
    }
  }

  static String getSuffixAchaEche(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.ACHA;
    } else {
      return Suffix.ECHE;
    }
  }

  static String getSuffixTaiTei(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.TAI;
    } else {
      return Suffix.TEI;
    }
  }

  static String getSuffixUu(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.UU;
    } else {
      return Suffix.UEUE;
    }
  }

  static String getSuffixUd(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.UD;
    } else {
      return Suffix.UED;
    }
  }

  static String getSuffixNugud(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.NUGUD;
    } else {
      return Suffix.NUEGUED;
    }
  }

  static String getSuffixChu(Gender previousWordGender) {
    if (previousWordGender == Gender.MASCULINE) {
      return Suffix.CHU;
    } else {
      return Suffix.CHUE;
    }
  }
}