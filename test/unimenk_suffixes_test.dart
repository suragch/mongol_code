import 'package:mongol_code/alternative/convert.dart';
import 'package:test/test.dart';

void printResult(String result, String expected) {
  print(
    'actual:   ${result.codeUnits.map((e) => '0x${e.toRadixString(16).toUpperCase()}')}\n'
    'expected: ${expected.codeUnits.map((e) => '0x${e.toRadixString(16).toUpperCase()}')}',
  );
}
// printResult(result, expected);

void main() {
  group('Unicode -> Menksoft: Suffixes', () {
    test('yinSuffix', () async {
      final unicode = ' ᠶᠢᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(result, expected);
    });

    test('unSuffix', () async {
      final unicode = ' ᠤᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE2B5';
      expect(result, expected);
    });

    test('uenSuffix', () async {
      final unicode = ' ᠦᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2B5';
      expect(result, expected);
    });

    test('uSuffix', () async {
      final unicode = ' ᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE28D';
      expect(result, expected);
    });

    test('ueSuffix', () async {
      final unicode = ' ᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2A3';
      expect(result, expected);
    });

    test('iSuffix', () async {
      final unicode = ' ᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE282';
      expect(result, expected);
    });

    test('yiSuffix', () async {
      final unicode = ' ᠶᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27B';
      expect(result, expected);
    });

    test('duSuffix', () async {
      final unicode = ' ᠳᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE28D';
      expect(result, expected);
    });

    test('dueSuffix', () async {
      final unicode = ' ᠳᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2A3';
      expect(result, expected);
    });

    test('tuSuffix', () async {
      final unicode = ' ᠲᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE28D';
      expect(result, expected);
    });

    test('tueSuffix', () async {
      final unicode = ' ᠲᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2A3';
      expect(result, expected);
    });

    test('durSuffix', () async {
      final unicode = ' ᠳᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE291\uE325';
      expect(result, expected);
    });

    test('duerSuffix', () async {
      final unicode = ' ᠳᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2AB\uE325';
      expect(result, expected);
    });

    test('turSuffix', () async {
      final unicode = ' ᠲᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE291\uE325';
      expect(result, expected);
    });

    test('tuerSuffix', () async {
      final unicode = ' ᠲᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2AB\uE325';
      expect(result, expected);
    });

    test('daqiSuffix', () async {
      final unicode = ' ᠳᠠᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2DA\uE27C';
      expect(result, expected);
    });

    test('deqiSuffix', () async {
      final unicode = ' ᠳᠡᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2DA\uE27C';
      expect(result, expected);
    });

    test('achaSuffix', () async {
      final unicode = ' ᠠᠴᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE268';
      expect(result, expected);
    });

    test('echeSuffix', () async {
      final unicode = ' ᠡᠴᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE273';
      expect(result, expected);
    });

    test('barSuffix', () async {
      final unicode = ' ᠪᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE325';
      expect(result, expected);
    });

    test('berSuffix', () async {
      final unicode = ' ᠪᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE325';
      expect(result, expected);
    });

    test('iyarSuffix', () async {
      final unicode = ' ᠢᠶᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE325';
      expect(result, expected);
    });

    test('iyerSuffix', () async {
      final unicode = ' ᠢᠶᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE325';
      expect(result, expected);
    });

    test('taiSuffix', () async {
      final unicode = ' ᠲᠠᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE27B';
      expect(result, expected);
    });

    test('teiSuffix', () async {
      final unicode = ' ᠲᠡᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE27B';
      expect(result, expected);
    });

    test('lugaSuffix', () async {
      final unicode = ' ᠯᠤᠭ᠎ᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      expect(result, expected);
    });

    test('luegeSuffix', () async {
      final unicode = ' ᠯᠦᠭᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      expect(result, expected);
    });

    test('banSuffix', () async {
      final unicode = ' ᠪᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE2B5';
      expect(result, expected);
    });

    test('benSuffix', () async {
      final unicode = ' ᠪᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE2B5';
      expect(result, expected);
    });

    test('iyanSuffix', () async {
      final unicode = ' ᠢᠶᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE2B5';
      expect(result, expected);
    });

    test('iyenSuffix', () async {
      final unicode = ' ᠢᠶᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE2B5';
      expect(result, expected);
    });

    test('yuganSuffix', () async {
      final unicode = ' ᠶᠤᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('yuegenSuffix', () async {
      final unicode = ' ᠶᠦᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('daganSuffix', () async {
      final unicode = ' ᠳᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('degenSuffix', () async {
      final unicode = ' ᠳᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('taganSuffix', () async {
      final unicode = ' ᠲᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('tegenSuffix', () async {
      final unicode = ' ᠲᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('achaganSuffix', () async {
      final unicode = ' ᠠᠴᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('echegenSuffix', () async {
      final unicode = ' ᠡᠴᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('taiganSuffix', () async {
      final unicode = ' ᠲᠠᠢᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('teigenSuffix', () async {
      final unicode = ' ᠲᠡᠢᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('udSuffix', () async {
      final unicode = ' ᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE311';
      expect(result, expected);
    });

    test('uedSuffix', () async {
      final unicode = ' ᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE311';
      expect(result, expected);
    });

    test('nugudSuffix', () async {
      final unicode = ' ᠨᠤᠭᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      expect(result, expected);
    });

    test('nueguedSuffix', () async {
      final unicode = ' ᠨᠦᠭᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      expect(result, expected);
    });

    test('narSuffix', () async {
      final unicode = ' ᠨᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE26C\uE325';
      expect(result, expected);
    });

    test('nerSuffix', () async {
      final unicode = ' ᠨᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE276\uE325';
      expect(result, expected);
    });

    test('uuSuffix', () async {
      final unicode = ' ᠤᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE28D';
      expect(result, expected);
    });

    test('ueueSuffix', () async {
      final unicode = ' ᠦᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2A3';
      expect(result, expected);
    });

    test('daSuffix', () async {
      final unicode = ' ᠳᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE268';
      expect(result, expected);
    });

    test('deSuffix', () async {
      final unicode = ' ᠳᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE273';
      expect(result, expected);
    });
  });
}
