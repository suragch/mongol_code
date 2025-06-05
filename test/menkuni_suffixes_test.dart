import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:test/test.dart';

import 'print_result.dart';

void main() {
  group('Menksoft -> Unicode: Suffixes', () {
    test('yinSuffix', () async {
      final menksoft = '\uE263\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠶᠢᠨ';
      expect(result, expected);
    });

    test('unSuffix', () async {
      final menksoft = '\uE263\uE292\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠤᠨ';
      expect(result, expected);
    });

    test('uenSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠦᠨ';
      expect(result, expected);
    });

    test('uSuffix', () async {
      final menksoft = '\uE263\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠤ';
      expect(result, expected);
    });

    test('ueSuffix', () async {
      final menksoft = '\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠦ';
      expect(result, expected);
    });

    test('iSuffix', () async {
      final menksoft = '\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠢ';
      expect(result, expected);
    });

    test('yiSuffix', () async {
      final menksoft = '\uE263\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠶᠢ';
      expect(result, expected);
    });

    test('duSuffix', () async {
      final menksoft = '\uE263\uE310\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠤ';
      expect(result, expected);
    });

    test('dueSuffix', () async {
      final menksoft = '\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠦ';
      expect(result, expected);
    });

    test('tuSuffix', () async {
      final menksoft = '\uE263\uE309\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠤ';
      expect(result, expected);
    });

    test('tueSuffix', () async {
      final menksoft = '\uE263\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠦ';
      expect(result, expected);
    });

    test('durSuffix', () async {
      final menksoft = '\uE263\uE310\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠤᠷ';
      expect(result, expected);
    });

    test('duerSuffix', () async {
      final menksoft = '\uE263\uE310\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠦᠷ';
      expect(result, expected);
    });

    test('turSuffix', () async {
      final menksoft = '\uE263\uE309\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠤᠷ';
      expect(result, expected);
    });

    test('tuerSuffix', () async {
      final menksoft = '\uE263\uE309\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠦᠷ';
      expect(result, expected);
    });

    test('daqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠠᠬᠢ';
      expect(result, expected);
    });

    test('deqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠡᠬᠢ';
      expect(result, expected);
    });

    test('achaSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠠᠴᠠ';
      expect(result, expected);
    });

    test('echeSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠡᠴᠡ';
      expect(result, expected);
    });

    test('barSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠪᠠᠷ';
      expect(result, expected);
    });

    test('berSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠪᠡᠷ';
      expect(result, expected);
    });

    test('iyarSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠢᠶᠠᠷ';
      expect(result, expected);
    });

    test('iyerSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠢᠶᠡᠷ';
      expect(result, expected);
    });

    test('taiSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠠᠢ';
      expect(result, expected);
    });

    test('teiSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠡᠢ';
      expect(result, expected);
    });

    test('lugaSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠯᠤᠭ᠎ᠠ';
      expect(result, expected);
    });

    test('luegeSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠯᠦᠭᠡ';
      expect(result, expected);
    });

    test('banSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠪᠠᠨ';
      expect(result, expected);
    });

    test('benSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠪᠡᠨ';
      expect(result, expected);
    });

    test('iyanSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠢᠶᠠᠨ';
      expect(result, expected);
    });

    test('iyenSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠢᠶᠡᠨ';
      expect(result, expected);
    });

    test('yuganSuffix', () async {
      final menksoft = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠶᠤᠭᠠᠨ';
      expect(result, expected);
    });

    test('yuegenSuffix', () async {
      final menksoft = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠶᠦᠭᠡᠨ';
      expect(result, expected);
    });

    test('daganSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠠᠭᠠᠨ';
      expect(result, expected);
    });

    test('degenSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠡᠭᠡᠨ';
      expect(result, expected);
    });

    test('taganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠠᠭᠠᠨ';
      expect(result, expected);
    });

    test('tegenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠡᠭᠡᠨ';
      expect(result, expected);
    });

    test('achaganSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠠᠴᠠᠭᠠᠨ';
      expect(result, expected);
    });

    test('echegenSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠡᠴᠡᠭᠡᠨ';
      expect(result, expected);
    });

    test('taiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠠᠢᠭᠠᠨ';
      expect(result, expected);
    });

    test('tayiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠠᠢᠭᠠᠨ';
      expect(result, expected);
    });

    test('teigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠡᠢᠭᠡᠨ';
      expect(result, expected);
    });

    test('teyigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠲᠡᠢᠭᠡᠨ';
      expect(result, expected);
    });

    test('udSuffix', () async {
      final menksoft = '\uE263\uE292\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠤᠳ';
      expect(result, expected);
    });

    test('uedSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠦᠳ';
      expect(result, expected);
    });

    test('nugudSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠨᠤᠭᠤᠳ';
      expect(result, expected);
    });

    test('nueguedSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠨᠦᠭᠦᠳ';
      expect(result, expected);
    });

    test('narSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠨᠠᠷ';
      expect(result, expected);
    });

    test('nerSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠨᠡᠷ';
      expect(result, expected);
    });

    test('uuSuffix', () async {
      // ueue is not a suffix but it should still look the same if preceded
      // by a NonBreaking space
      final menksoft = '\uE263\uE292\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180E\u1824\u1824';
      expect(result, expected);
    });

    test('ueueSuffix', () async {
      // ueue is not a suffix but it should still look the same if preceded
      // by a NonBreaking space
      final menksoft = '\uE263\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180E\u1826\u1826';
      expect(result, expected);
    });

    test('daSuffix', () async {
      final menksoft = '\uE263\uE310\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠠ';
      expect(result, expected);
    });

    test('deSuffix', () async {
      final menksoft = '\uE263\uE310\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180Eᠳᠡ';
      expect(result, expected);
    });
  });
}
