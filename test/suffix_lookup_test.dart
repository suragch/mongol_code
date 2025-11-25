import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

void main() {
  group('Unicode suffix lookup', () {
    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_A', () async {
      final wordLastChar = Mongol.a;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_E', () async {
      final wordLastChar = Mongol.e;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_I', () async {
      final wordLastChar = Mongol.i;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_O', () async {
      final wordLastChar = Mongol.o;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_U', () async {
      final wordLastChar = Mongol.u;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_OE', () async {
      final wordLastChar = Mongol.oe;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_UE', () async {
      final wordLastChar = Mongol.ue;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_EE', () async {
      final wordLastChar = Mongol.ee;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_A', () async {
      final wordLastChar = Mongol.a;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_E', () async {
      final wordLastChar = Mongol.e;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_I', () async {
      final wordLastChar = Mongol.i;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_O', () async {
      final wordLastChar = Mongol.o;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_U', () async {
      final wordLastChar = Mongol.u;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_OE', () async {
      final wordLastChar = Mongol.oe;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_UE', () async {
      final wordLastChar = Mongol.ue;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_EE', () async {
      final wordLastChar = Mongol.ee;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithN', () async {
      final wordLastChar = Mongol.na;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.U;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithN', () async {
      final wordLastChar = Mongol.na;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.UE;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithConsonant', () async {
      final wordLastChar = Mongol.ga;
      final result = Suffix.yinUnU(Gender.masculine, wordLastChar);
      final expected = Suffix.UN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithConsonant', () async {
      final wordLastChar = Mongol.ga;
      final result = Suffix.yinUnU(Gender.feminine, wordLastChar);
      final expected = Suffix.UEN;
      expect(result, expected);
    });

    /// BAR comes after a vowel, IYAR comes after a consonant.
    test('getSuffixBarIyar_forMasculineWordEndingWithVowel', () async {
      final wordLastChar = Mongol.a;
      final result = Suffix.barIyar(Gender.masculine, wordLastChar);
      final expected = Suffix.BAR;
      expect(result, expected);
    });

    test('getSuffixBarIyar_forFeminineWordEndingWithVowel', () async {
      final wordLastChar = Mongol.ga;
      final result = Suffix.barIyar(Gender.feminine, wordLastChar);
      final expected = Suffix.IYER;
      expect(result, expected);
    });

    test('getSuffixBanIyan_forMasculineWordEndingWithVowel', () async {
      final wordLastChar = Mongol.ra;
      final result = Suffix.banIyan(Gender.masculine, wordLastChar);
      final expected = Suffix.IYAN;
      expect(result, expected);
    });

    test('getSuffixBanIyan_forFeminineWordEndingWithVowel', () async {
      final wordLastChar = Mongol.e;
      final result = Suffix.banIyan(Gender.feminine, wordLastChar);
      final expected = Suffix.BEN;
      expect(result, expected);
    });

    test('getSuffixAchaEche_forMasculineWord', () async {
      final result = Suffix.achaEche(Gender.masculine);
      final expected = Suffix.ACHA;
      expect(result, expected);
    });

    test('getSuffixAchaEche_forFeminineWord', () async {
      final result = Suffix.achaEche(Gender.feminine);
      final expected = Suffix.ECHE;
      expect(result, expected);
    });

    test('getSuffixTaiTei_forMasculineWord', () async {
      final result = Suffix.taiTei(Gender.masculine);
      final expected = Suffix.TAI;
      expect(result, expected);
    });

    test('getSuffixTaiTei_forFeminineWord', () async {
      final result = Suffix.taiTei(Gender.feminine);
      final expected = Suffix.TEI;
      expect(result, expected);
    });

    test('getSuffixUu_forMasculineWord', () async {
      final result = Suffix.uu(Gender.masculine);
      final expected = Suffix.UU;
      expect(result, expected);
    });

    test('getSuffixUu_forFeminineWord', () async {
      final result = Suffix.uu(Gender.feminine);
      final expected = Suffix.UEUE;
      expect(result, expected);
    });
  });
}
