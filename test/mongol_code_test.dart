import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:mongol_code/alternative/convert_unicode.dart';
import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

MongolCode converter = MongolCode.instance;

String convertToUnicodeAndBackAgain(String menksoft) {
  final unicode = convertMenksoftToUnicode(menksoft);
  return convertUnicodeToMenksoft(unicode);
}

void main() {
  group('Menksoft -> Unicode: Suffixes', () {
    test('yinSuffix', () async {
      final menksoft = '\uE263\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢᠨ'; //
      expect(result, expected);
    });

    test('unSuffix', () async {
      final menksoft = '\uE263\uE292\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠨ'; //
      expect(result, expected);
    });

    test('uenSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠨ'; //
      expect(result, expected);
    });

    test('uSuffix', () async {
      final menksoft = '\uE263\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤ'; //
      expect(result, expected);
    });

    test('ueSuffix', () async {
      final menksoft = '\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦ'; //
      expect(result, expected);
    });

    test('iSuffix', () async {
      final menksoft = '\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢ'; //
      expect(result, expected);
    });

    test('yiSuffix', () async {
      final menksoft = '\uE263\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢ'; //
      expect(result, expected);
    });

    test('duSuffix', () async {
      final menksoft = '\uE263\uE310\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤ'; //
      expect(result, expected);
    });

    test('dueSuffix', () async {
      final menksoft = '\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦ'; //
      expect(result, expected);
    });

    test('tuSuffix', () async {
      final menksoft = '\uE263\uE309\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤ'; //
      expect(result, expected);
    });

    test('tueSuffix', () async {
      final menksoft = '\uE263\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦ'; //
      expect(result, expected);
    });

    test('durSuffix', () async {
      final menksoft = '\uE263\uE310\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤᠷ'; //
      expect(result, expected);
    });

    test('duerSuffix', () async {
      final menksoft = '\uE263\uE310\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦᠷ'; //
      expect(result, expected);
    });

    test('turSuffix', () async {
      final menksoft = '\uE263\uE309\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤᠷ'; //
      expect(result, expected);
    });

    test('tuerSuffix', () async {
      final menksoft = '\uE263\uE309\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦᠷ'; //
      expect(result, expected);
    });

    test('daqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820ᠬᠢ'; //
      expect(result, expected);
    });

    test('deqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠬᠢ'; //
      expect(result, expected);
    });

    test('achaSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' \u1820ᠴ\u1820'; //
      expect(result, expected);
    });

    test('echeSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡ'; //
      expect(result, expected);
    });

    test('barSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('berSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠷ'; //
      expect(result, expected);
    });

    test('iyarSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('iyerSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠷ'; //
      expect(result, expected);
    });

    test('taiSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠢ'; //
      expect(result, expected);
    });

    test('teiSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢ'; //
      expect(result, expected);
    });

    test('lugaSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠤᠭ᠎\u1820'; //
      expect(result, expected);
    });

    test('luegeSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠦᠭᠡ'; //
      expect(result, expected);
    });

    test('banSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('benSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠨ'; //
      expect(result, expected);
    });

    test('iyanSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('iyenSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠨ'; //
      expect(result, expected);
    });

    test('yuganSuffix', () async {
      final menksoft = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠤᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('yuegenSuffix', () async {
      final menksoft = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠦᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('daganSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('degenSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('taganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('tegenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('achaganSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' \u1820ᠴ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('echegenSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('taiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠢᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('tayiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('teigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('teyigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠶᠢᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('udSuffix', () async {
      final menksoft = '\uE263\uE292\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠳ'; //
      expect(result, expected);
    });

    test('uedSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠳ'; //
      expect(result, expected);
    });

    test('nugudSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠤᠭᠤᠳ'; //
      expect(result, expected);
    });

    test('nueguedSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠦᠭᠦᠳ'; //
      expect(result, expected);
    });

    test('narSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('nerSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠡᠷ'; //
      expect(result, expected);
    });

    test('uuSuffix', () async {
      final menksoft = '\uE263\uE292\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠤ'; //
      expect(result, expected);
    });

    test('ueueSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠦ'; //
      expect(result, expected);
    });

    test('daSuffix', () async {
      final menksoft = '\uE263\uE310\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820'; //
      expect(result, expected);
    });

    test('deSuffix', () async {
      final menksoft = '\uE263\uE310\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡ'; //
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: more edge cases', () {
    test('dottedMedialNBeforeConsonant', () async {
      final menksoft = '\uE342\uE2F4\uE2B9\uE30A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE2F4\uE2B9\uE30A';
      expect(result, expected);
    });

    test('longToothUEinNonInitialSyllable', () async {
      final menksoft = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      expect(result, expected);
    });

    test('medialEEatWordEnd', () async {
      final menksoft = '\uE342\uE32C';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE32C';
      expect(result, expected);
    });

    test('spaceIsAddedBetweenToWordsWithoutSpace', () async {
      final menksoft = '\uE34F\uE27B\uE2FE\uE291\uE327\uE2D6\uE26A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34F\uE27B \uE2FE\uE291\uE327\uE2D6\uE26A';
      expect(result, expected);
    });

    test('jBecomesYAfterNNBS', () async {
      final menksoft = '\uE263\uE319\uE27E\uE2B5';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(result, expected);
    });

    test('wBetweenTwoConsonantsBecomesEE', () async {
      final menksoft = '\uE345\uE329\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE345\uE2B0\uE2BB';
      expect(result, expected);
    });

    test('eeBetweenTwoVowelsBecomesW', () async {
      final menksoft = '\uE266\uE2B0\uE268';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE266\uE32C\uE268';
      expect(result, expected);
    });
  });

  group('Unicode suffix lookup', () {
    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.U;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UE;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.UN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UEN;
      expect(result, expected);
    });
  });
}
