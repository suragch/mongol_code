import 'package:mongol_code/alternative/convert.dart';
import 'package:test/test.dart';

void main() {
  group('Unicode -> Menksoft: non-Mongol strings', () {
    test('empty string', () async {
      final unicode = '';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(result, expected);
    });

    test('english character', () async {
      final unicode = 'a';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'a';
      expect(result, expected);
    });

    test('englishKeyboardChars', () async {
      final unicode = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      expect(result, expected);
    });

    test('chineseChars', () async {
      final unicode = '中文';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '中文';
      expect(result, expected);
    });

    test('emojiChars', () async {
      final unicode = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      expect(result, expected);
    });

    test('menksoftString', () async {
      final unicode = '\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9';
      expect(result, expected);
    });
  });
}
