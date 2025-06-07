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
  });
}
