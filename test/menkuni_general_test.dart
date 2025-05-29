import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:test/test.dart';

void main() {
  group('Menksoft -> Unicode: non-Menksoft strings', () {
    test('emptyString', () async {
      final unicode = '';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '';
      expect(result, expected);
    });

    test('spaceChar', () async {
      final unicode = ' ';
      final result = convertMenksoftToUnicode(unicode);
      final expected = ' ';
      expect(result, expected);
    });

    test('englishKeyboardChars', () async {
      final unicode = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      expect(result, expected);
    });

    test('chineseChars', () async {
      final unicode = '中文';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '中文';
      expect(result, expected);
    });

    test('emojiChars', () async {
      final unicode = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      expect(result, expected);
    });

    test('unicodeString', () async {
      final unicode = 'ᠮᠤᠩᠭᠤᠯ';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'ᠮᠤᠩᠭᠤᠯ';
      expect(result, expected);
    });
  });
}
