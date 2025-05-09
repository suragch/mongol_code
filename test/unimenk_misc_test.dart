import 'package:mongol_code/alternative/convert_unicode.dart';
import 'package:test/test.dart';

void main() {
  group('Unicode -> Menksoft: Other random tests', () {
    test('qmqShortTailM', () async {
      final unicode = 'ᠬᠮᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2F4\uE2D6';
      expect(result, expected);
    });

    test('qlqShortTailL', () async {
      final unicode = 'ᠬᠯᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2FA\uE2D6';
      expect(result, expected);
    });

    test('egnenBigG', () async {
      final unicode = 'ᠡᠭᠨᠡᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2B7\uE276\uE2B5';
      expect(result, expected);
    });

    test('egmenBigG', () async {
      final unicode = 'ᠡᠭᠮᠡᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2F6\uE276\uE2B5';
      expect(result, expected);
    });

    test('eglenBigG', () async {
      final unicode = 'ᠡᠭᠯᠡᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2FC\uE276\uE2B5';
      expect(result, expected);
    });

    test('egdenSmallG', () async {
      final unicode = 'ᠡᠭᠳᠡᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE313\uE276\uE2B5';
      expect(result, expected);
    });

    test('egsenSmallG', () async {
      final unicode = 'ᠡᠭᠰᠡᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE301\uE276\uE2B5';
      expect(result, expected);
    });
  });
}
