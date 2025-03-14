import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

MongolCode converter = MongolCode.instance;

String convertUnicodeToMenksoft(String unicode) {
  return converter.unicodeToMenksoft(unicode);
}

String convertMenksoftToUnicode(String menksoft) {
  return converter.menksoftToUnicode(menksoft);
}

String convertToUnicodeAndBackAgain(String menksoft) {
  final unicode = converter.menksoftToUnicode(menksoft);
  return converter.unicodeToMenksoft(unicode);
}

void main() {
  group('Unicode -> Menksoft: non-Mongol strings', () {
    test('empty string', () async {
      final unicode = '';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('english character', () async {
      final unicode = 'a';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'a';
      expect(expected, result);
    });

    test('englishKeyboardChars', () async {
      final unicode = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      expect(expected, result);
    });

    test('chineseChars', () async {
      final unicode = '中文';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '中文';
      expect(expected, result);
    });

    test('emojiChars', () async {
      final unicode = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      expect(expected, result);
    });

    test('menksoftString', () async {
      final unicode = '\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9';
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: all combinations of Unicode+FVS', () {
    test('aIsol', () async {
      final unicode = 'ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aInit', () async {
      final unicode = 'ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aMedi', () async {
      final unicode = '‍ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aFina', () async {
      final unicode = '‍ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aIsolFvs1', () async {
      final unicode = 'ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aInitFvs1', () async {
      final unicode = 'ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aMediFvs1', () async {
      final unicode = '‍ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aFinaFvs1', () async {
      final unicode = '‍ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aIsolFvs2', () async {
      final unicode = 'ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aInitFvs2', () async {
      final unicode = 'ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aMediFvs2', () async {
      final unicode = '‍ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aFinaFvs2', () async {
      final unicode = '‍ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aIsolFvs3', () async {
      final unicode = 'ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aInitFvs3', () async {
      final unicode = 'ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aMediFvs3', () async {
      final unicode = '‍ᠠ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('aFinaFvs3', () async {
      final unicode = '‍ᠠ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eIsol', () async {
      final unicode = 'ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eInit', () async {
      final unicode = 'ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eMedi', () async {
      final unicode = '‍ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eFina', () async {
      final unicode = '‍ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eIsolFvs1', () async {
      final unicode = 'ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eInitFvs1', () async {
      final unicode = 'ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eMediFvs1', () async {
      final unicode = '‍ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eFinaFvs1', () async {
      final unicode = '‍ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eIsolFvs2', () async {
      final unicode = 'ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eInitFvs2', () async {
      final unicode = 'ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eMediFvs2', () async {
      final unicode = '‍ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eFinaFvs2', () async {
      final unicode = '‍ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eIsolFvs3', () async {
      final unicode = 'ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eInitFvs3', () async {
      final unicode = 'ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eMediFvs3', () async {
      final unicode = '‍ᠡ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eFinaFvs3', () async {
      final unicode = '‍ᠡ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iIsol', () async {
      final unicode = 'ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iInit', () async {
      final unicode = 'ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iMedi', () async {
      final unicode = '‍ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iFina', () async {
      final unicode = '‍ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iIsolFvs1', () async {
      final unicode = 'ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iInitFvs1', () async {
      final unicode = 'ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iMediFvs1', () async {
      final unicode = '‍ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iFinaFvs1', () async {
      final unicode = '‍ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iIsolFvs2', () async {
      final unicode = 'ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iInitFvs2', () async {
      final unicode = 'ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iMediFvs2', () async {
      final unicode = '‍ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iFinaFvs2', () async {
      final unicode = '‍ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iIsolFvs3', () async {
      final unicode = 'ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iInitFvs3', () async {
      final unicode = 'ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iMediFvs3', () async {
      final unicode = '‍ᠢ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('iFinaFvs3', () async {
      final unicode = '‍ᠢ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oIsol', () async {
      final unicode = 'ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oInit', () async {
      final unicode = 'ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oMedi', () async {
      final unicode = '‍ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oFina', () async {
      final unicode = '‍ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oIsolFvs1', () async {
      final unicode = 'ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oInitFvs1', () async {
      final unicode = 'ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oMediFvs1', () async {
      final unicode = '‍ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oFinaFvs1', () async {
      final unicode = '‍ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oIsolFvs2', () async {
      final unicode = 'ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oInitFvs2', () async {
      final unicode = 'ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oMediFvs2', () async {
      final unicode = '‍ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oFinaFvs2', () async {
      final unicode = '‍ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oIsolFvs3', () async {
      final unicode = 'ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oInitFvs3', () async {
      final unicode = 'ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oMediFvs3', () async {
      final unicode = '‍ᠣ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oFinaFvs3', () async {
      final unicode = '‍ᠣ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uIsol', () async {
      final unicode = 'ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uInit', () async {
      final unicode = 'ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uMedi', () async {
      final unicode = '‍ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uFina', () async {
      final unicode = '‍ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uIsolFvs1', () async {
      final unicode = 'ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uInitFvs1', () async {
      final unicode = 'ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uMediFvs1', () async {
      final unicode = '‍ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uFinaFvs1', () async {
      final unicode = '‍ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uIsolFvs2', () async {
      final unicode = 'ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uInitFvs2', () async {
      final unicode = 'ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uMediFvs2', () async {
      final unicode = '‍ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uFinaFvs2', () async {
      final unicode = '‍ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uIsolFvs3', () async {
      final unicode = 'ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uInitFvs3', () async {
      final unicode = 'ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uMediFvs3', () async {
      final unicode = '‍ᠤ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('uFinaFvs3', () async {
      final unicode = '‍ᠤ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeIsol', () async {
      final unicode = 'ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeInit', () async {
      final unicode = 'ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeMedi', () async {
      final unicode = '‍ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeFina', () async {
      final unicode = '‍ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeIsolFvs1', () async {
      final unicode = 'ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeInitFvs1', () async {
      final unicode = 'ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeMediFvs1', () async {
      final unicode = '‍ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeFinaFvs1', () async {
      final unicode = '‍ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeIsolFvs2', () async {
      final unicode = 'ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeInitFvs2', () async {
      final unicode = 'ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeMediFvs2', () async {
      final unicode = '‍ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeFinaFvs2', () async {
      final unicode = '‍ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeIsolFvs3', () async {
      final unicode = 'ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeInitFvs3', () async {
      final unicode = 'ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeMediFvs3', () async {
      final unicode = '‍ᠥ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('oeFinaFvs3', () async {
      final unicode = '‍ᠥ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueIsol', () async {
      final unicode = 'ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueInit', () async {
      final unicode = 'ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueMedi', () async {
      final unicode = '‍ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueFina', () async {
      final unicode = '‍ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueIsolFvs1', () async {
      final unicode = 'ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueInitFvs1', () async {
      final unicode = 'ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueMediFvs1', () async {
      final unicode = '‍ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueFinaFvs1', () async {
      final unicode = '‍ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueIsolFvs2', () async {
      final unicode = 'ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueInitFvs2', () async {
      final unicode = 'ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueMediFvs2', () async {
      final unicode = '‍ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueFinaFvs2', () async {
      final unicode = '‍ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueIsolFvs3', () async {
      final unicode = 'ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueInitFvs3', () async {
      final unicode = 'ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueMediFvs3', () async {
      final unicode = '‍ᠦ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ueFinaFvs3', () async {
      final unicode = '‍ᠦ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeIsol', () async {
      final unicode = 'ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeInit', () async {
      final unicode = 'ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeMedi', () async {
      final unicode = '‍ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeFina', () async {
      final unicode = '‍ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeIsolFvs1', () async {
      final unicode = 'ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeInitFvs1', () async {
      final unicode = 'ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeMediFvs1', () async {
      final unicode = '‍ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeFinaFvs1', () async {
      final unicode = '‍ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeIsolFvs2', () async {
      final unicode = 'ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeInitFvs2', () async {
      final unicode = 'ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeMediFvs2', () async {
      final unicode = '‍ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeFinaFvs2', () async {
      final unicode = '‍ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeIsolFvs3', () async {
      final unicode = 'ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeInitFvs3', () async {
      final unicode = 'ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeMediFvs3', () async {
      final unicode = '‍ᠧ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('eeFinaFvs3', () async {
      final unicode = '‍ᠧ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nIsol', () async {
      final unicode = 'ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nInit', () async {
      final unicode = 'ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nMedi', () async {
      final unicode = '‍ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nFina', () async {
      final unicode = '‍ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nIsolFvs1', () async {
      final unicode = 'ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nInitFvs1', () async {
      final unicode = 'ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nMediFvs1', () async {
      final unicode = '‍ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nFinaFvs1', () async {
      final unicode = '‍ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nIsolFvs2', () async {
      final unicode = 'ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nInitFvs2', () async {
      final unicode = 'ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nMediFvs2', () async {
      final unicode = '‍ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nFinaFvs2', () async {
      final unicode = '‍ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nIsolFvs3', () async {
      final unicode = 'ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nInitFvs3', () async {
      final unicode = 'ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nMediFvs3', () async {
      final unicode = '‍ᠨ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('nFinaFvs3', () async {
      final unicode = '‍ᠨ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngIsol', () async {
      final unicode = 'ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngInit', () async {
      final unicode = 'ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngMedi', () async {
      final unicode = '‍ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngFina', () async {
      final unicode = '‍ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngIsolFvs1', () async {
      final unicode = 'ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngInitFvs1', () async {
      final unicode = 'ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngMediFvs1', () async {
      final unicode = '‍ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngFinaFvs1', () async {
      final unicode = '‍ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngIsolFvs2', () async {
      final unicode = 'ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngInitFvs2', () async {
      final unicode = 'ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngMediFvs2', () async {
      final unicode = '‍ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngFinaFvs2', () async {
      final unicode = '‍ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngIsolFvs3', () async {
      final unicode = 'ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngInitFvs3', () async {
      final unicode = 'ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngMediFvs3', () async {
      final unicode = '‍ᠩ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('ngFinaFvs3', () async {
      final unicode = '‍ᠩ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bIsol', () async {
      final unicode = 'ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bInit', () async {
      final unicode = 'ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bMedi', () async {
      final unicode = '‍ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bFina', () async {
      final unicode = '‍ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bIsolFvs1', () async {
      final unicode = 'ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bInitFvs1', () async {
      final unicode = 'ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bMediFvs1', () async {
      final unicode = '‍ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bFinaFvs1', () async {
      final unicode = '‍ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bIsolFvs2', () async {
      final unicode = 'ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bInitFvs2', () async {
      final unicode = 'ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bMediFvs2', () async {
      final unicode = '‍ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bFinaFvs2', () async {
      final unicode = '‍ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bIsolFvs3', () async {
      final unicode = 'ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bInitFvs3', () async {
      final unicode = 'ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bMediFvs3', () async {
      final unicode = '‍ᠪ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('bFinaFvs3', () async {
      final unicode = '‍ᠪ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pIsol', () async {
      final unicode = 'ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pInit', () async {
      final unicode = 'ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pMedi', () async {
      final unicode = '‍ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pFina', () async {
      final unicode = '‍ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pIsolFvs1', () async {
      final unicode = 'ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pInitFvs1', () async {
      final unicode = 'ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pMediFvs1', () async {
      final unicode = '‍ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pFinaFvs1', () async {
      final unicode = '‍ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pIsolFvs2', () async {
      final unicode = 'ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pInitFvs2', () async {
      final unicode = 'ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pMediFvs2', () async {
      final unicode = '‍ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pFinaFvs2', () async {
      final unicode = '‍ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pIsolFvs3', () async {
      final unicode = 'ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pInitFvs3', () async {
      final unicode = 'ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pMediFvs3', () async {
      final unicode = '‍ᠫ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('pFinaFvs3', () async {
      final unicode = '‍ᠫ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qIsol', () async {
      final unicode = 'ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qInit', () async {
      final unicode = 'ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qMedi', () async {
      final unicode = '‍ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qFina', () async {
      final unicode = '‍ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qIsolFvs1', () async {
      final unicode = 'ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qInitFvs1', () async {
      final unicode = 'ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qMediFvs1', () async {
      final unicode = '‍ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qFinaFvs1', () async {
      final unicode = '‍ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qIsolFvs2', () async {
      final unicode = 'ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qInitFvs2', () async {
      final unicode = 'ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qMediFvs2', () async {
      final unicode = '‍ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qFinaFvs2', () async {
      final unicode = '‍ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qIsolFvs3', () async {
      final unicode = 'ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qInitFvs3', () async {
      final unicode = 'ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qMediFvs3', () async {
      final unicode = '‍ᠬ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('qFinaFvs3', () async {
      final unicode = '‍ᠬ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gIsol', () async {
      final unicode = 'ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gInit', () async {
      final unicode = 'ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gMedi', () async {
      final unicode = '‍ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gFina', () async {
      final unicode = '‍ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gIsolFvs1', () async {
      final unicode = 'ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gInitFvs1', () async {
      final unicode = 'ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gMediFvs1', () async {
      final unicode = '‍ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gFinaFvs1', () async {
      final unicode = '‍ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gIsolFvs2', () async {
      final unicode = 'ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gInitFvs2', () async {
      final unicode = 'ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gMediFvs2', () async {
      final unicode = '‍ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gFinaFvs2', () async {
      final unicode = '‍ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gIsolFvs3', () async {
      final unicode = 'ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gInitFvs3', () async {
      final unicode = 'ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gMediFvs3', () async {
      final unicode = '‍ᠭ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('gFinaFvs3', () async {
      final unicode = '‍ᠭ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mIsol', () async {
      final unicode = 'ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mInit', () async {
      final unicode = 'ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mMedi', () async {
      final unicode = '‍ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mFina', () async {
      final unicode = '‍ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mIsolFvs1', () async {
      final unicode = 'ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mInitFvs1', () async {
      final unicode = 'ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mMediFvs1', () async {
      final unicode = '‍ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mFinaFvs1', () async {
      final unicode = '‍ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mIsolFvs2', () async {
      final unicode = 'ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mInitFvs2', () async {
      final unicode = 'ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mMediFvs2', () async {
      final unicode = '‍ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mFinaFvs2', () async {
      final unicode = '‍ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mIsolFvs3', () async {
      final unicode = 'ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mInitFvs3', () async {
      final unicode = 'ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mMediFvs3', () async {
      final unicode = '‍ᠮ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('mFinaFvs3', () async {
      final unicode = '‍ᠮ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lIsol', () async {
      final unicode = 'ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lInit', () async {
      final unicode = 'ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lMedi', () async {
      final unicode = '‍ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lFina', () async {
      final unicode = '‍ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lIsolFvs1', () async {
      final unicode = 'ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lInitFvs1', () async {
      final unicode = 'ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lMediFvs1', () async {
      final unicode = '‍ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lFinaFvs1', () async {
      final unicode = '‍ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lIsolFvs2', () async {
      final unicode = 'ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lInitFvs2', () async {
      final unicode = 'ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lMediFvs2', () async {
      final unicode = '‍ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lFinaFvs2', () async {
      final unicode = '‍ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lIsolFvs3', () async {
      final unicode = 'ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lInitFvs3', () async {
      final unicode = 'ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lMediFvs3', () async {
      final unicode = '‍ᠯ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lFinaFvs3', () async {
      final unicode = '‍ᠯ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sIsol', () async {
      final unicode = 'ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sInit', () async {
      final unicode = 'ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sMedi', () async {
      final unicode = '‍ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sFina', () async {
      final unicode = '‍ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sIsolFvs1', () async {
      final unicode = 'ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sInitFvs1', () async {
      final unicode = 'ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sMediFvs1', () async {
      final unicode = '‍ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sFinaFvs1', () async {
      final unicode = '‍ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sIsolFvs2', () async {
      final unicode = 'ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sInitFvs2', () async {
      final unicode = 'ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sMediFvs2', () async {
      final unicode = '‍ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sFinaFvs2', () async {
      final unicode = '‍ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sIsolFvs3', () async {
      final unicode = 'ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sInitFvs3', () async {
      final unicode = 'ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sMediFvs3', () async {
      final unicode = '‍ᠰ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('sFinaFvs3', () async {
      final unicode = '‍ᠰ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shIsol', () async {
      final unicode = 'ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shInit', () async {
      final unicode = 'ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shMedi', () async {
      final unicode = '‍ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shFina', () async {
      final unicode = '‍ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shIsolFvs1', () async {
      final unicode = 'ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shInitFvs1', () async {
      final unicode = 'ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shMediFvs1', () async {
      final unicode = '‍ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shFinaFvs1', () async {
      final unicode = '‍ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shIsolFvs2', () async {
      final unicode = 'ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shInitFvs2', () async {
      final unicode = 'ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shMediFvs2', () async {
      final unicode = '‍ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shFinaFvs2', () async {
      final unicode = '‍ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shIsolFvs3', () async {
      final unicode = 'ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shInitFvs3', () async {
      final unicode = 'ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shMediFvs3', () async {
      final unicode = '‍ᠱ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('shFinaFvs3', () async {
      final unicode = '‍ᠱ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tIsol', () async {
      final unicode = 'ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tInit', () async {
      final unicode = 'ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tMedi', () async {
      final unicode = '‍ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tFina', () async {
      final unicode = '‍ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tIsolFvs1', () async {
      final unicode = 'ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tInitFvs1', () async {
      final unicode = 'ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tMediFvs1', () async {
      final unicode = '‍ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tFinaFvs1', () async {
      final unicode = '‍ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tIsolFvs2', () async {
      final unicode = 'ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tInitFvs2', () async {
      final unicode = 'ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tMediFvs2', () async {
      final unicode = '‍ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tFinaFvs2', () async {
      final unicode = '‍ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tIsolFvs3', () async {
      final unicode = 'ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tInitFvs3', () async {
      final unicode = 'ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tMediFvs3', () async {
      final unicode = '‍ᠲ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tFinaFvs3', () async {
      final unicode = '‍ᠲ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dIsol', () async {
      final unicode = 'ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dInit', () async {
      final unicode = 'ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dMedi', () async {
      final unicode = '‍ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dFina', () async {
      final unicode = '‍ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dIsolFvs1', () async {
      final unicode = 'ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dInitFvs1', () async {
      final unicode = 'ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dMediFvs1', () async {
      final unicode = '‍ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dFinaFvs1', () async {
      final unicode = '‍ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dIsolFvs2', () async {
      final unicode = 'ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dInitFvs2', () async {
      final unicode = 'ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dMediFvs2', () async {
      final unicode = '‍ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dFinaFvs2', () async {
      final unicode = '‍ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dIsolFvs3', () async {
      final unicode = 'ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dInitFvs3', () async {
      final unicode = 'ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dMediFvs3', () async {
      final unicode = '‍ᠳ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('dFinaFvs3', () async {
      final unicode = '‍ᠳ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chIsol', () async {
      final unicode = 'ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chInit', () async {
      final unicode = 'ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chMedi', () async {
      final unicode = '‍ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chFina', () async {
      final unicode = '‍ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chIsolFvs1', () async {
      final unicode = 'ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chInitFvs1', () async {
      final unicode = 'ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chMediFvs1', () async {
      final unicode = '‍ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chFinaFvs1', () async {
      final unicode = '‍ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chIsolFvs2', () async {
      final unicode = 'ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chInitFvs2', () async {
      final unicode = 'ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chMediFvs2', () async {
      final unicode = '‍ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chFinaFvs2', () async {
      final unicode = '‍ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chIsolFvs3', () async {
      final unicode = 'ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chInitFvs3', () async {
      final unicode = 'ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chMediFvs3', () async {
      final unicode = '‍ᠴ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chFinaFvs3', () async {
      final unicode = '‍ᠴ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jIsol', () async {
      final unicode = 'ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jInit', () async {
      final unicode = 'ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jMedi', () async {
      final unicode = '‍ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jFina', () async {
      final unicode = '‍ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jIsolFvs1', () async {
      final unicode = 'ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jInitFvs1', () async {
      final unicode = 'ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jMediFvs1', () async {
      final unicode = '‍ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jFinaFvs1', () async {
      final unicode = '‍ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jIsolFvs2', () async {
      final unicode = 'ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jInitFvs2', () async {
      final unicode = 'ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jMediFvs2', () async {
      final unicode = '‍ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jFinaFvs2', () async {
      final unicode = '‍ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jIsolFvs3', () async {
      final unicode = 'ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jInitFvs3', () async {
      final unicode = 'ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jMediFvs3', () async {
      final unicode = '‍ᠵ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('jFinaFvs3', () async {
      final unicode = '‍ᠵ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yIsol', () async {
      final unicode = 'ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yInit', () async {
      final unicode = 'ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yMedi', () async {
      final unicode = '‍ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yFina', () async {
      final unicode = '‍ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yIsolFvs1', () async {
      final unicode = 'ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yInitFvs1', () async {
      final unicode = 'ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yMediFvs1', () async {
      final unicode = '‍ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yFinaFvs1', () async {
      final unicode = '‍ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yIsolFvs2', () async {
      final unicode = 'ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yInitFvs2', () async {
      final unicode = 'ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yMediFvs2', () async {
      final unicode = '‍ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yFinaFvs2', () async {
      final unicode = '‍ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yIsolFvs3', () async {
      final unicode = 'ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yInitFvs3', () async {
      final unicode = 'ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yMediFvs3', () async {
      final unicode = '‍ᠶ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('yFinaFvs3', () async {
      final unicode = '‍ᠶ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rIsol', () async {
      final unicode = 'ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rInit', () async {
      final unicode = 'ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rMedi', () async {
      final unicode = '‍ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rFina', () async {
      final unicode = '‍ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rIsolFvs1', () async {
      final unicode = 'ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rInitFvs1', () async {
      final unicode = 'ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rMediFvs1', () async {
      final unicode = '‍ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rFinaFvs1', () async {
      final unicode = '‍ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rIsolFvs2', () async {
      final unicode = 'ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rInitFvs2', () async {
      final unicode = 'ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rMediFvs2', () async {
      final unicode = '‍ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rFinaFvs2', () async {
      final unicode = '‍ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rIsolFvs3', () async {
      final unicode = 'ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rInitFvs3', () async {
      final unicode = 'ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rMediFvs3', () async {
      final unicode = '‍ᠷ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('rFinaFvs3', () async {
      final unicode = '‍ᠷ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wIsol', () async {
      final unicode = 'ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wInit', () async {
      final unicode = 'ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wMedi', () async {
      final unicode = '‍ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wFina', () async {
      final unicode = '‍ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wIsolFvs1', () async {
      final unicode = 'ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wInitFvs1', () async {
      final unicode = 'ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wMediFvs1', () async {
      final unicode = '‍ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wFinaFvs1', () async {
      final unicode = '‍ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wIsolFvs2', () async {
      final unicode = 'ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wInitFvs2', () async {
      final unicode = 'ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wMediFvs2', () async {
      final unicode = '‍ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wFinaFvs2', () async {
      final unicode = '‍ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wIsolFvs3', () async {
      final unicode = 'ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wInitFvs3', () async {
      final unicode = 'ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wMediFvs3', () async {
      final unicode = '‍ᠸ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('wFinaFvs3', () async {
      final unicode = '‍ᠸ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fIsol', () async {
      final unicode = 'ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fInit', () async {
      final unicode = 'ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fMedi', () async {
      final unicode = '‍ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fFina', () async {
      final unicode = '‍ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fIsolFvs1', () async {
      final unicode = 'ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fInitFvs1', () async {
      final unicode = 'ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fMediFvs1', () async {
      final unicode = '‍ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fFinaFvs1', () async {
      final unicode = '‍ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fIsolFvs2', () async {
      final unicode = 'ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fInitFvs2', () async {
      final unicode = 'ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fMediFvs2', () async {
      final unicode = '‍ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fFinaFvs2', () async {
      final unicode = '‍ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fIsolFvs3', () async {
      final unicode = 'ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fInitFvs3', () async {
      final unicode = 'ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fMediFvs3', () async {
      final unicode = '‍ᠹ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('fFinaFvs3', () async {
      final unicode = '‍ᠹ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kIsol', () async {
      final unicode = 'ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kInit', () async {
      final unicode = 'ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kMedi', () async {
      final unicode = '‍ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kFina', () async {
      final unicode = '‍ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kIsolFvs1', () async {
      final unicode = 'ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kInitFvs1', () async {
      final unicode = 'ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kMediFvs1', () async {
      final unicode = '‍ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kFinaFvs1', () async {
      final unicode = '‍ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kIsolFvs2', () async {
      final unicode = 'ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kInitFvs2', () async {
      final unicode = 'ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kMediFvs2', () async {
      final unicode = '‍ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kFinaFvs2', () async {
      final unicode = '‍ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kIsolFvs3', () async {
      final unicode = 'ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kInitFvs3', () async {
      final unicode = 'ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kMediFvs3', () async {
      final unicode = '‍ᠺ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('kFinaFvs3', () async {
      final unicode = '‍ᠺ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khIsol', () async {
      final unicode = 'ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khInit', () async {
      final unicode = 'ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khMedi', () async {
      final unicode = '‍ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khFina', () async {
      final unicode = '‍ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khIsolFvs1', () async {
      final unicode = 'ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khInitFvs1', () async {
      final unicode = 'ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khMediFvs1', () async {
      final unicode = '‍ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khFinaFvs1', () async {
      final unicode = '‍ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khIsolFvs2', () async {
      final unicode = 'ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khInitFvs2', () async {
      final unicode = 'ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khMediFvs2', () async {
      final unicode = '‍ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khFinaFvs2', () async {
      final unicode = '‍ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khIsolFvs3', () async {
      final unicode = 'ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khInitFvs3', () async {
      final unicode = 'ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khMediFvs3', () async {
      final unicode = '‍ᠻ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('khFinaFvs3', () async {
      final unicode = '‍ᠻ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsIsol', () async {
      final unicode = 'ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsInit', () async {
      final unicode = 'ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsMedi', () async {
      final unicode = '‍ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsFina', () async {
      final unicode = '‍ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsIsolFvs1', () async {
      final unicode = 'ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsInitFvs1', () async {
      final unicode = 'ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsMediFvs1', () async {
      final unicode = '‍ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsFinaFvs1', () async {
      final unicode = '‍ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsIsolFvs2', () async {
      final unicode = 'ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsInitFvs2', () async {
      final unicode = 'ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsMediFvs2', () async {
      final unicode = '‍ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsFinaFvs2', () async {
      final unicode = '‍ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsIsolFvs3', () async {
      final unicode = 'ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsInitFvs3', () async {
      final unicode = 'ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsMediFvs3', () async {
      final unicode = '‍ᠼ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('tsFinaFvs3', () async {
      final unicode = '‍ᠼ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zIsol', () async {
      final unicode = 'ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zInit', () async {
      final unicode = 'ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zMedi', () async {
      final unicode = '‍ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zFina', () async {
      final unicode = '‍ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zIsolFvs1', () async {
      final unicode = 'ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zInitFvs1', () async {
      final unicode = 'ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zMediFvs1', () async {
      final unicode = '‍ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zFinaFvs1', () async {
      final unicode = '‍ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zIsolFvs2', () async {
      final unicode = 'ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zInitFvs2', () async {
      final unicode = 'ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zMediFvs2', () async {
      final unicode = '‍ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zFinaFvs2', () async {
      final unicode = '‍ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zIsolFvs3', () async {
      final unicode = 'ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zInitFvs3', () async {
      final unicode = 'ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zMediFvs3', () async {
      final unicode = '‍ᠽ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zFinaFvs3', () async {
      final unicode = '‍ᠽ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaIsol', () async {
      final unicode = 'ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaInit', () async {
      final unicode = 'ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaMedi', () async {
      final unicode = '‍ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaFina', () async {
      final unicode = '‍ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaIsolFvs1', () async {
      final unicode = 'ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaInitFvs1', () async {
      final unicode = 'ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaMediFvs1', () async {
      final unicode = '‍ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaFinaFvs1', () async {
      final unicode = '‍ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaIsolFvs2', () async {
      final unicode = 'ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaInitFvs2', () async {
      final unicode = 'ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaMediFvs2', () async {
      final unicode = '‍ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaFinaFvs2', () async {
      final unicode = '‍ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaIsolFvs3', () async {
      final unicode = 'ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaInitFvs3', () async {
      final unicode = 'ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaMediFvs3', () async {
      final unicode = '‍ᠾ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('haaFinaFvs3', () async {
      final unicode = '‍ᠾ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrIsol', () async {
      final unicode = 'ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrInit', () async {
      final unicode = 'ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrMedi', () async {
      final unicode = '‍ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrFina', () async {
      final unicode = '‍ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrIsolFvs1', () async {
      final unicode = 'ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrInitFvs1', () async {
      final unicode = 'ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrMediFvs1', () async {
      final unicode = '‍ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrFinaFvs1', () async {
      final unicode = '‍ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrIsolFvs2', () async {
      final unicode = 'ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrInitFvs2', () async {
      final unicode = 'ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrMediFvs2', () async {
      final unicode = '‍ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrFinaFvs2', () async {
      final unicode = '‍ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrIsolFvs3', () async {
      final unicode = 'ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrInitFvs3', () async {
      final unicode = 'ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrMediFvs3', () async {
      final unicode = '‍ᠿ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zrFinaFvs3', () async {
      final unicode = '‍ᠿ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhIsol', () async {
      final unicode = 'ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhInit', () async {
      final unicode = 'ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhMedi', () async {
      final unicode = '‍ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhFina', () async {
      final unicode = '‍ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhIsolFvs1', () async {
      final unicode = 'ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhInitFvs1', () async {
      final unicode = 'ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhMediFvs1', () async {
      final unicode = '‍ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhFinaFvs1', () async {
      final unicode = '‍ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhIsolFvs2', () async {
      final unicode = 'ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhInitFvs2', () async {
      final unicode = 'ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhMediFvs2', () async {
      final unicode = '‍ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhFinaFvs2', () async {
      final unicode = '‍ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhIsolFvs3', () async {
      final unicode = 'ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhInitFvs3', () async {
      final unicode = 'ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhMediFvs3', () async {
      final unicode = '‍ᡀ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('lhFinaFvs3', () async {
      final unicode = '‍ᡀ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiIsol', () async {
      final unicode = 'ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiInit', () async {
      final unicode = 'ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiMedi', () async {
      final unicode = '‍ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiFina', () async {
      final unicode = '‍ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiIsolFvs1', () async {
      final unicode = 'ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiInitFvs1', () async {
      final unicode = 'ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiMediFvs1', () async {
      final unicode = '‍ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiFinaFvs1', () async {
      final unicode = '‍ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiIsolFvs2', () async {
      final unicode = 'ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiInitFvs2', () async {
      final unicode = 'ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiMediFvs2', () async {
      final unicode = '‍ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiFinaFvs2', () async {
      final unicode = '‍ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiIsolFvs3', () async {
      final unicode = 'ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiInitFvs3', () async {
      final unicode = 'ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiMediFvs3', () async {
      final unicode = '‍ᡁ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('zhiFinaFvs3', () async {
      final unicode = '‍ᡁ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiIsol', () async {
      final unicode = 'ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiInit', () async {
      final unicode = 'ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiMedi', () async {
      final unicode = '‍ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiFina', () async {
      final unicode = '‍ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiIsolFvs1', () async {
      final unicode = 'ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiInitFvs1', () async {
      final unicode = 'ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiMediFvs1', () async {
      final unicode = '‍ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiFinaFvs1', () async {
      final unicode = '‍ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiIsolFvs2', () async {
      final unicode = 'ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiInitFvs2', () async {
      final unicode = 'ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiMediFvs2', () async {
      final unicode = '‍ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiFinaFvs2', () async {
      final unicode = '‍ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiIsolFvs3', () async {
      final unicode = 'ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiInitFvs3', () async {
      final unicode = 'ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiMediFvs3', () async {
      final unicode = '‍ᡂ‍';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('chiFinaFvs3', () async {
      final unicode = '‍ᡂ';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '';
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Punctuation', () {
    test('punctuationBirga', () async {
      final unicode = Unicode.MONGOLIAN_BIRGA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.BIRGA);
      expect(expected, result);
    });

    test('punctuationEllipsis', () async {
      final unicode = Unicode.MONGOLIAN_ELLIPSIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ELLIPSIS);
      expect(expected, result);
    });

    test('punctuationComma', () async {
      final unicode = Unicode.MONGOLIAN_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.COMMA);
      expect(expected, result);
    });

    test('punctuationFullStop', () async {
      final unicode = Unicode.MONGOLIAN_FULL_STOP;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FULL_STOP);
      expect(expected, result);
    });
    test('punctuationColon', () async {
      final unicode = Unicode.MONGOLIAN_COLON;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.COLON);
      expect(expected, result);
    });

    test('punctuationFourDots', () async {
      final unicode = Unicode.MONGOLIAN_FOUR_DOTS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FOUR_DOTS);
      expect(expected, result);
    });

    test('punctuationTodoSoftHyphen', () async {
      final unicode = Unicode.MONGOLIAN_TODO_SOFT_HYPHEN;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final unicode = Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('punctuationManchuComma', () async {
      final unicode = Unicode.MONGOLIAN_MANCHU_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MANCHU_COMMA);
      expect(expected, result);
    });

    test('punctuationManchuFullStop', () async {
      final unicode = Unicode.MONGOLIAN_MANCHU_FULL_STOP;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('punctuationNirugu', () async {
      final unicode = Unicode.MONGOLIAN_NIRUGU;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.NIRUGU);
      expect(expected, result);
    });

    test('punctuationMiddleDot', () async {
      final unicode = Unicode.MIDDLE_DOT;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MIDDLE_DOT);
      expect(expected, result);
    });

    test('punctuationZero', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_ZERO;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ZERO);
      expect(expected, result);
    });

    test('punctuationOne', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_ONE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ONE);
      expect(expected, result);
    });

    test('punctuationTwo', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_TWO;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.TWO);
      expect(expected, result);
    });

    test('punctuationThree', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_THREE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.THREE);
      expect(expected, result);
    });

    test('punctuationFour', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_FOUR;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FOUR);
      expect(expected, result);
    });

    test('punctuationFive', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_FIVE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FIVE);
      expect(expected, result);
    });

    test('punctuationSix', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_SIX;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SIX);
      expect(expected, result);
    });

    test('punctuationSeven', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_SEVEN;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SEVEN);
      expect(expected, result);
    });

    test('punctuationEight', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_EIGHT;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EIGHT);
      expect(expected, result);
    });

    test('punctuationNine', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_NINE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.NINE);
      expect(expected, result);
    });

    test('punctuationQuestionExclamation', () async {
      final unicode = Unicode.QUESTION_EXCLAMATION_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.QUESTION_EXCLAMATION);
      expect(expected, result);
    });

    test('punctuationExclamationQuestion', () async {
      final unicode = Unicode.EXCLAMATION_QUESTION_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EXCLAMATION_QUESTION);
      expect(expected, result);
    });

    test('punctuationExclamation', () async {
      final unicode = Unicode.VERTICAL_EXCLAMATION_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EXCLAMATION);
      expect(expected, result);
    });

    test('punctuationQuestion', () async {
      final unicode = Unicode.VERTICAL_QUESTION_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.QUESTION);
      expect(expected, result);
    });

    test('punctuationSemicolon', () async {
      final unicode = Unicode.VERTICAL_SEMICOLON;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SEMICOLON);
      expect(expected, result);
    });

    test('punctuationLeftParenthesis', () async {
      final unicode = Unicode.VERTICAL_LEFT_PARENTHESIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationRightParenthesis', () async {
      final unicode = Unicode.VERTICAL_RIGHT_PARENTHESIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationLeftAngleBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightAngleBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationFullWidthComma', () async {
      final unicode = Unicode.VERTICAL_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FULL_WIDTH_COMMA);
      expect(expected, result);
    });

    test('punctuationX', () async {
      final unicode = Unicode.PUNCTUATION_X;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.X);
      expect(expected, result);
    });

    test('punctuationReferenceMark', () async {
      final unicode = Unicode.REFERENCE_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.REFERENCE_MARK);
      expect(expected, result);
    });

    test('punctuationEnDash', () async {
      final unicode = Unicode.VERTICAL_EN_DASH;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EN_DASH);
      expect(expected, result);
    });

    test('punctuationEmDash', () async {
      final unicode = Unicode.VERTICAL_EM_DASH;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EM_DASH);
      expect(expected, result);
    });

    test('punctuationSuffixSpace', () async {
      final unicode = Unicode.NNBS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SUFFIX_SPACE);
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Words', () {
    test('bichigWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭ'; // bichig
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2E8';
      expect(expected, result);
    });

    test('egeshigWord', () async {
      final unicode = 'ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ'; // EGESIG (NNBSP) INU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3';
      expect(expected, result);
    });

    test('bujigWord', () async {
      final unicode = 'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('chirigWord', () async {
      final unicode = 'ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ'; // CHIRIG (NNBSP) MANI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
      expect(expected, result);
    });

    test('egchiWord', () async {
      final unicode = 'ᠡᠭᠴᠡ'; // EGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2F0\uE317\uE273';
      expect(expected, result);
    });

    test('qugjimWord', () async {
      final unicode = 'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('buridgelWord', () async {
      final unicode = 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ'; // BURIDGEL (NNBSP) IYEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      expect(expected, result);
    });

    test('sedqilWord', () async {
      final unicode = 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      expect(expected, result);
    });

    test('uiledburiWord', () async {
      final unicode = 'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      expect(expected, result);
    });

    test('jeligudqenWord', () async {
      final unicode = 'ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ'; // JELIGUDQEN (NNBSP) U
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
      expect(expected, result);
    });

    test('manggalWord', () async {
      final unicode = 'ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('dengWord', () async {
      final unicode = 'ᠳ᠋ᠦᠩ ᠢ'; // D(FVS1)UNG (NNBSP) I
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE310\uE2A9\uE2BB\uE263\uE282';
      expect(expected, result);
    });

    test('sodnamWord', () async {
      final unicode = 'ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('lhagbaWord', () async {
      final unicode = 'ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ'; // LHAGBA (NNBSP) LUG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      expect(expected, result);
    });

    test('chebegmedWord', () async {
      final unicode = 'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      expect(expected, result);
    });

    test('tsementWord', () async {
      final unicode = 'ᠼᠧᠮᠧᠨᠲ ᠲᠠᠶᠢᠭᠠᠨ'; // TSEMENT (NNBSP) TAYIGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('uniyeWord', () async {
      final unicode = 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEYIGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('qoyinaWord', () async {
      final unicode = 'ᠬᠣᠶᠢᠨ᠎ᠠ'; // QOYIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A';
      expect(expected, result);
    });

    test('angnaWord', () async {
      final unicode = 'ᠠᠩᠨ᠎ᠠ'; // ANGN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BE\uE2B6\uE26A';
      expect(expected, result);
    });

    test('chinggaWord', () async {
      final unicode = 'ᠴᠢᠩᠭ᠎ᠠ'; // CHINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      expect(expected, result);
    });

    test('chingalaquWord', () async {
      final unicode = 'ᠴᠢᠩᠭᠠᠯᠠᠬᠤ'; // CHINGGALAQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      expect(expected, result);
    });

    test('daljiygsanWord', () async {
      final unicode = 'ᠳᠠᠯᠵᠢᠶᠭᠰᠠᠨ'; // DALJIYGSAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
      expect(expected, result);
    });

    test('ilbigchiWord', () async {
      final unicode = 'ᠢᠯᠪᠢᠭᠴᠢ'; // ILBIGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B';
      expect(expected, result);
    });

    test('bichigchiWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭᠴᠢ'; // BICHIGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B';
      expect(expected, result);
    });

    test('sigsiglequWord', () async {
      final unicode = 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2EF\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      expect(expected, result);
    });

    test('diglimsigsenWord', () async {
      final unicode = 'ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ'; // DIGLIMSIGSEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EF\uE301\uE276\uE2B5';
      expect(expected, result);
    });

    test('chigigligWord', () async {
      final unicode = 'ᠴᠢᠭᠢᠭᠯᠢᠭ'; // CHIGIGLIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8';
      expect(expected, result);
    });

    test('monggeWord', () async {
      final unicode = 'ᠮᠥᠩᠭᠡ'; // MONGGE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE29C\uE2BD\uE2EB\uE275';
      expect(expected, result);
    });

    test('kinoWord', () async {
      final unicode = 'ᠺᠢᠨᠣ᠋'; // KINO(FVS1)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE333\uE27F\uE2B9\uE286';
      expect(expected, result);
    });

    test('bayigulquWord', () async {
      final unicode = 'ᠪᠠᠶᠢᠭᠤᠯᠬᠤ'; // BAYIGULQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D';
      expect(expected, result);
    });

    test('gregWord', () async {
      final unicode = 'ᠭᠷᠧᠭ'; // GREG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2E3\uE327\uE2B0\uE2E8';
      expect(expected, result);
    });

    test('motorWord', () async {
      final unicode = 'ᠮᠣᠲ᠋ᠣᠷ'; // MOT(FVS1)OR
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE289\uE30D\uE289\uE325';
      expect(expected, result);
    });

    test('neigemligWord', () async {
      final unicode = 'ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ'; // NEYIGEMLIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
      expect(expected, result);
    });

    test('mongolWord', () async {
      final unicode = 'ᠮᠣᠩᠭᠣᠯ'; // MONGGOL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9';
      expect(expected, result);
    });

    test('yatugaWord', () async {
      final unicode = 'ᠶᠠᠲᠤᠭ᠎ᠠ'; // YATUG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A';
      expect(expected, result);
    });

    test('olaganaWord', () async {
      final unicode = 'ᠤᠯᠠᠭᠠᠨ᠎ᠠ'; // OLAGAN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A';
      expect(expected, result);
    });

    test('bichiglequWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭᠯᠡᠬᠦ'; // BICHIGLEQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      expect(expected, result);
    });

    test('programWord', () async {
      final unicode = 'ᠫᠷᠣᠭ᠍ᠷᠠᠮ'; // PROG(FVS3)RAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3';
      expect(expected, result);
    });

    test('kartWord', () async {
      final unicode = 'ᠺᠠᠷᠲ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE333\uE26D\uE326\uE30A';
      expect(expected, result);
    });

    test('dungnelteWord', () async {
      final unicode = 'ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ'; // D(FVS1)UNGNELTE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273';
      expect(expected, result);
    });

    test('gramWord', () async {
      final unicode = 'ᠭᠷᠠᠮ'; // GRAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2E3\uE327\uE26C\uE2F3';
      expect(expected, result);
    });

    test('minggaWord', () async {
      final unicode = 'ᠮᠢᠩᠭ᠎ᠠ'; // MINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      expect(expected, result);
    });

    test('naimaWord', () async {
      final unicode = 'ᠨᠠ\u200Dᠢᠮᠠ'; // NA(ZWJ)IMA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      expect(expected, result);
    });

    test('naimaWordMenksoftVersion', () async {
      final unicode = 'ᠨᠠᠢ\u180Cᠮᠠ'; // NAI(FVS2)MA (not defined in Unicode 10.0)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      expect(expected, result);
    });

    test('naijaWord', () async {
      final unicode = 'ᠨᠠᠢᠵᠠ'; // NAIJA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE281\uE31D\uE268';
      expect(expected, result);
    });

    test('nayijaWord', () async {
      final unicode = 'ᠨᠠᠶᠢᠵᠠ'; // NAYIJA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE321\uE27E\uE31D\uE268';
      expect(expected, result);
    });

    test('bainaWord', () async {
      final unicode = 'ᠪᠠᠢᠨ᠎ᠠ'; // BAIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      expect(expected, result);
    });

    test('bayinaWord', () async {
      final unicode = 'ᠪᠠᠶᠢᠨ᠎ᠠ'; // BAYIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A';
      expect(expected, result);
    });

    test('baiinaWord', () async {
      final unicode = 'ᠪᠠᠢᠢᠨ᠎ᠠ'; // BAIIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      expect(expected, result);
    });

    test('saihanWord', () async {
      final unicode = 'ᠰᠠᠶᠢᠬᠠᠨ'; // SAYIHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5';
      expect(expected, result);
    });

    test('sayihanWord', () async {
      final unicode = 'ᠰᠠᠶ\u180Bᠢᠬᠠᠨ'; // SAY(FVS1)IHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      expect(expected, result);
    });

    test('sayiWord', () async {
      final unicode = 'ᠰᠠᠶ\u180Bᠢ'; // SAY(FVS1)I
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27B';
      expect(expected, result);
    });

    test('taiWord', () async {
      final unicode = 'ᠲᠠᠢ'; // TAI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE308\uE26C\uE27B';
      expect(expected, result);
    });

    test('namayiWord', () async {
      final unicode = 'ᠨᠠᠮᠠᠶᠢ'; // NAMAYI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      expect(expected, result);
    });

    test('eyimuWord', () async {
      final unicode = 'ᠡᠶᠢᠮᠦ'; // EYIMU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE321\uE27E\uE2F5\uE2A3';
      expect(expected, result);
    });

    test('soyolWord', () async {
      final unicode = 'ᠰᠣᠶᠣᠯ'; // SOYOL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FE\uE289\uE320\uE289\uE2F9';
      expect(expected, result);
    });

    test('buuWord', () async {
      final unicode = 'ᠪᠦᠦ'; // BUU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C2\uE2AC\uE2A3';
      expect(expected, result);
    });

    test('quuWord', () async {
      final unicode = 'ᠬᠦᠦ'; // QUU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D4\uE2AA\uE2A3';
      expect(expected, result);
    });

    test('qeuqenWord', () async {
      final unicode = 'ᠬᠡᠦᠬᠡᠳ'; // QEUQEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311';
      expect(expected, result);
    });

    test('qeduyinWord', () async {
      final unicode = 'ᠬᠡᠳᠦᠶᠢᠨ'; // QEDUYIN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5';
      expect(expected, result);
    });

    test('qeduinWord', () async {
      final unicode = 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5';
      expect(expected, result);
    });

    test('anggliWord', () async {
      final unicode = 'ᠠᠩᠭᠯᠢ'; // ANGGLI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BD\uE2EB\uE2FC\uE27B';
      expect(expected, result);
    });

    test('asiglajuWord', () async {
      final unicode = 'ᠠᠰᠢᠭᠯᠠᠵᠤ'; // ASIGLAJU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      expect(expected, result);
    });

    test('narangerelWord', () async {
      final unicode = 'ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      expect(expected, result);
    });

    test('cholmonodoWord', () async {
      final unicode = 'ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ'; // CHOLMON(ZWJ)O(FVS1)DO
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      expect(expected, result);
    });

    test('cholmonodo2Word', () async {
      final unicode = 'ᠴᠣᠯᠮᠣᠨᠣ᠋ᠳᠣ'; // CHOLMONO(FVS1)DO
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      expect(expected, result);
    });

    test('bayanunderWord', () async {
      final unicode = 'ᠪᠠᠶᠠᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ'; // BAYAN(ZWJ)U(FVS1)NDUR
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
      expect(expected, result);
    });

    test('sodobiligWord', () async {
      final unicode = 'ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌'; // SODOBILIG(FVS2)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8';
      expect(expected, result);
    });

    test('anggilumchechegWord', () async {
      final unicode = 'ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8';
      expect(expected, result);
    });

    test('chechegmaWord', () async {
      final unicode = 'ᠴᠡᠴᠡᠭᠮ᠎ᠡ'; // CHECHEGM(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274';
      expect(expected, result);
    });

    test('sigDefaultWord', () async {
      final unicode = 'ᠰᠢᠭ'; // SIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2E8';
      expect(expected, result);
    });

    test('sigSpecifiedWord', () async {
      final unicode = 'ᠰᠢᠭ᠋'; // SIG(FVS1)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2E7';
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Suffixes', () {
    test('yinSuffix', () async {
      final unicode = ' ᠶᠢᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(expected, result);
    });

    test('unSuffix', () async {
      final unicode = ' ᠤᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE2B5';
      expect(expected, result);
    });

    test('uenSuffix', () async {
      final unicode = ' ᠦᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2B5';
      expect(expected, result);
    });

    test('uSuffix', () async {
      final unicode = ' ᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE28D';
      expect(expected, result);
    });

    test('ueSuffix', () async {
      final unicode = ' ᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2A3';
      expect(expected, result);
    });

    test('iSuffix', () async {
      final unicode = ' ᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE282';
      expect(expected, result);
    });

    test('yiSuffix', () async {
      final unicode = ' ᠶᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27B';
      expect(expected, result);
    });

    test('duSuffix', () async {
      final unicode = ' ᠳᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE28D';
      expect(expected, result);
    });

    test('dueSuffix', () async {
      final unicode = ' ᠳᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2A3';
      expect(expected, result);
    });

    test('tuSuffix', () async {
      final unicode = ' ᠲᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE28D';
      expect(expected, result);
    });

    test('tueSuffix', () async {
      final unicode = ' ᠲᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2A3';
      expect(expected, result);
    });

    test('durSuffix', () async {
      final unicode = ' ᠳᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE291\uE325';
      expect(expected, result);
    });

    test('duerSuffix', () async {
      final unicode = ' ᠳᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2AB\uE325';
      expect(expected, result);
    });

    test('turSuffix', () async {
      final unicode = ' ᠲᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE291\uE325';
      expect(expected, result);
    });

    test('tuerSuffix', () async {
      final unicode = ' ᠲᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2AB\uE325';
      expect(expected, result);
    });

    test('daqiSuffix', () async {
      final unicode = ' ᠳᠠᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2DA\uE27C';
      expect(expected, result);
    });

    test('deqiSuffix', () async {
      final unicode = ' ᠳᠡᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2DA\uE27C';
      expect(expected, result);
    });

    test('achaSuffix', () async {
      final unicode = ' ᠠᠴᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE268';
      expect(expected, result);
    });

    test('echeSuffix', () async {
      final unicode = ' ᠡᠴᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE273';
      expect(expected, result);
    });

    test('barSuffix', () async {
      final unicode = ' ᠪᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE325';
      expect(expected, result);
    });

    test('berSuffix', () async {
      final unicode = ' ᠪᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE325';
      expect(expected, result);
    });

    test('iyarSuffix', () async {
      final unicode = ' ᠢᠶᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE325';
      expect(expected, result);
    });

    test('iyerSuffix', () async {
      final unicode = ' ᠢᠶᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE325';
      expect(expected, result);
    });

    test('taiSuffix', () async {
      final unicode = ' ᠲᠠᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE27B';
      expect(expected, result);
    });

    test('teiSuffix', () async {
      final unicode = ' ᠲᠡᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE27B';
      expect(expected, result);
    });

    test('lugaSuffix', () async {
      final unicode = ' ᠯᠤᠭ᠎ᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      expect(expected, result);
    });

    test('luegeSuffix', () async {
      final unicode = ' ᠯᠦᠭᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      expect(expected, result);
    });

    test('banSuffix', () async {
      final unicode = ' ᠪᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE2B5';
      expect(expected, result);
    });

    test('benSuffix', () async {
      final unicode = ' ᠪᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE2B5';
      expect(expected, result);
    });

    test('iyanSuffix', () async {
      final unicode = ' ᠢᠶᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE2B5';
      expect(expected, result);
    });

    test('iyenSuffix', () async {
      final unicode = ' ᠢᠶᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE2B5';
      expect(expected, result);
    });

    test('yuganSuffix', () async {
      final unicode = ' ᠶᠤᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('yuegenSuffix', () async {
      final unicode = ' ᠶᠦᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('daganSuffix', () async {
      final unicode = ' ᠳᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('degenSuffix', () async {
      final unicode = ' ᠳᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('taganSuffix', () async {
      final unicode = ' ᠲᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('tegenSuffix', () async {
      final unicode = ' ᠲᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('achaganSuffix', () async {
      final unicode = ' ᠠᠴᠠᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('echegenSuffix', () async {
      final unicode = ' ᠡᠴᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('taiganSuffix', () async {
      final unicode = ' ᠲᠠᠢᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('tayiganSuffix', () async {
      final unicode = ' ᠲᠠᠶᠢᠭᠠᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      expect(expected, result);
    });

    test('teigenSuffix', () async {
      final unicode = ' ᠲᠡᠢᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('teyigenSuffix', () async {
      final unicode = ' ᠲᠡᠶᠢᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      expect(expected, result);
    });

    test('udSuffix', () async {
      final unicode = ' ᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE311';
      expect(expected, result);
    });

    test('uedSuffix', () async {
      final unicode = ' ᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE311';
      expect(expected, result);
    });

    test('nugudSuffix', () async {
      final unicode = ' ᠨᠤᠭᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      expect(expected, result);
    });

    test('nueguedSuffix', () async {
      final unicode = ' ᠨᠦᠭᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      expect(expected, result);
    });

    test('narSuffix', () async {
      final unicode = ' ᠨᠠᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE26C\uE325';
      expect(expected, result);
    });

    test('nerSuffix', () async {
      final unicode = ' ᠨᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE276\uE325';
      expect(expected, result);
    });

    test('uuSuffix', () async {
      final unicode = ' ᠤᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE28D';
      expect(expected, result);
    });

    test('ueueSuffix', () async {
      final unicode = ' ᠦᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2A3';
      expect(expected, result);
    });

    test('daSuffix', () async {
      final unicode = ' ᠳᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE268';
      expect(expected, result);
    });

    test('deSuffix', () async {
      final unicode = ' ᠳᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE273';
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Todo Script', () {
    test('todoAllTodoCode', () async {
      final unicode = 'ᡐᡆᡑᡆ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᡐᡆᡑᡆ';
      expect(expected, result);
    });

    test('todoMixedTodoMongolCode', () async {
      final unicode = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯᠠᡋᠠ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯᠠᡋᠠ';
      expect(expected, result);
    });

    test('todoZWJ', () async {
      final unicode = '\u200Dᡐ\u200D'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200Dᡐ\u200D';
      expect(expected, result);
    });

    test('todoFVS', () async {
      final unicode = '\u1847\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u1847\u180B';
      expect(expected, result);
    });

    test('todoZwjFvsMix', () async {
      final unicode = '\u200D\u1847\u180B\u200D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200D\u1847\u180B\u200D';
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Other random tests', () {
    test('qmqShortTailM', () async {
      final unicode = 'ᠬᠮᠬ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2F4\uE2D6';
      expect(expected, result);
    });

    test('qlqShortTailL', () async {
      final unicode = 'ᠬᠯᠬ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2FA\uE2D6';
      expect(expected, result);
    });

    test('egnenBigG', () async {
      final unicode = 'ᠡᠭᠨᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2B7\uE276\uE2B5';
      expect(expected, result);
    });

    test('egmenBigG', () async {
      final unicode = 'ᠡᠭᠮᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2F6\uE276\uE2B5';
      expect(expected, result);
    });

    test('eglenBigG', () async {
      final unicode = 'ᠡᠭᠯᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2FC\uE276\uE2B5';
      expect(expected, result);
    });

    test('egdenSmallG', () async {
      final unicode = 'ᠡᠭᠳᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE313\uE276\uE2B5';
      expect(expected, result);
    });

    test('egsenSmallG', () async {
      final unicode = 'ᠡᠭᠰᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE301\uE276\uE2B5';
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: non-Menksoft strings', () {
    test('emptyString', () async {
      final unicode = '';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '';
      expect(expected, result);
    });

    test('englishKeyboardChars', () async {
      final unicode = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      expect(expected, result);
    });

    test('chineseChars', () async {
      final unicode = '中文';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '中文';
      expect(expected, result);
    });

    test('emojiChars', () async {
      final unicode = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      expect(expected, result);
    });

    test('unicodeString', () async {
      final unicode = 'ᠮᠤᠩᠭᠤᠯ';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'ᠮᠤᠩᠭᠤᠯ';
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: all isolate values', () {
    test('isolateE234', () async {
      final menksoft = '\uE234';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(expected, result);
    });

    test('isolateE235', () async {
      final menksoft = '\uE235';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(expected, result);
    });

    test('isolateE236', () async {
      final menksoft = '\uE236';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(expected, result);
    });

    test('isolateE237', () async {
      final menksoft = '\uE237';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(expected, result);
    });

    test('isolateE238', () async {
      final menksoft = '\uE238';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(expected, result);
    });

    test('isolateE239', () async {
      final menksoft = '\uE239';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(expected, result);
    });

    test('isolateE23A', () async {
      final menksoft = '\uE23A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('isolateE23B', () async {
      final menksoft = '\uE23B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('isolateE23C', () async {
      final menksoft = '\uE23C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(expected, result);
    });

    test('isolateE23D', () async {
      final menksoft = '\uE23D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('isolateE23E', () async {
      final menksoft = '\uE23E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
      expect(expected, result);
    });

    test('isolateE23F', () async {
      final menksoft = '\uE23F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE60'; //BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE240', () async {
      final menksoft = '\uE240';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE61'; // ROTATED_BIRGA
      expect(expected, result);
    });

    test('isolateE241', () async {
      final menksoft = '\uE241';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE62'; // DOUBLE_BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE242', () async {
      final menksoft = '\uE242';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE63'; // TRIPLE_BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE243', () async {
      final menksoft = '\uE243';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(expected, result);
    });

    test('isolateE244', () async {
      final menksoft = '\uE244';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(expected, result);
    });

    test('isolateE245', () async {
      final menksoft = '\uE245';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(expected, result);
    });

    test('isolateE246', () async {
      final menksoft = '\uE246';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(expected, result);
    });

    test('isolateE247', () async {
      final menksoft = '\uE247';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(expected, result);
    });

    test('isolateE248', () async {
      final menksoft = '\uE248';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(expected, result);
    });

    test('isolateE249', () async {
      final menksoft = '\uE249';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(expected, result);
    });

    test('isolateE24A', () async {
      final menksoft = '\uE24A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(expected, result);
    });

    test('isolateE24B', () async {
      final menksoft = '\uE24B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(expected, result);
    });

    test('isolateE24C', () async {
      final menksoft = '\uE24C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(expected, result);
    });

    test('isolateE24D', () async {
      final menksoft = '\uE24D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(expected, result);
    });

    test('isolateE24E', () async {
      final menksoft = '\uE24E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('isolateE24F', () async {
      final menksoft = '\uE24F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(expected, result);
    });

    test('isolateE250', () async {
      final menksoft = '\uE250';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('isolateE251', () async {
      final menksoft = '\uE251';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(expected, result);
    });

    test('isolateE252', () async {
      final menksoft = '\uE252';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(expected, result);
    });

    test('isolateE253', () async {
      final menksoft = '\uE253';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('isolateE254', () async {
      final menksoft = '\uE254';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('isolateE255', () async {
      final menksoft = '\uE255';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE256', () async {
      final menksoft = '\uE256';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE257', () async {
      final menksoft = '\uE257';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('isolateE258', () async {
      final menksoft = '\uE258';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('isolateE259', () async {
      final menksoft = '\uE259';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE25A', () async {
      final menksoft = '\uE25A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE25B', () async {
      final menksoft = '\uE25B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('isolateE25C', () async {
      final menksoft = '\uE25C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('isolateE25D', () async {
      final menksoft = '\uE25D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(expected, result);
    });

    test('isolateE25E', () async {
      final menksoft = '\uE25E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(expected, result);
    });

    test('isolateE25F', () async {
      final menksoft = '\uE25F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(expected, result);
    });

    test('isolateE260', () async {
      final menksoft = '\uE260';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(expected, result);
    });

    test('isolateE261', () async {
      final menksoft = '\uE261';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(expected, result);
    });

    test('isolateE262', () async {
      final menksoft = '\uE262';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' '; // TODO is this really what is expected
      expect(expected, result);
    });

    test('isolateE263', () async {
      final menksoft = '\uE263';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.NNBS);
      expect(expected, result);
    });

    test('isolateE264', () async {
      final menksoft = '\uE264';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A]);
      expect(expected, result);
    });

    test('isolateE265', () async {
      final menksoft = '\uE265';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE266', () async {
      final menksoft = '\uE266';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE267', () async {
      final menksoft = '\uE267';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE268', () async {
      final menksoft = '\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A]);
      expect(expected, result);
    });

    test('isolateE269', () async {
      final menksoft = '\uE269';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26A', () async {
      final menksoft = '\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26B', () async {
      final menksoft = '\uE26B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26C', () async {
      final menksoft = '\uE26C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26D', () async {
      final menksoft = '\uE26D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26E', () async {
      final menksoft = '\uE26E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26F', () async {
      final menksoft = '\uE26F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE270', () async {
      final menksoft = '\uE270';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E]);
      expect(expected, result);
    });

    test('isolateE271', () async {
      final menksoft = '\uE271';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE272', () async {
      final menksoft = '\uE272';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE273', () async {
      final menksoft = '\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E]);
      expect(expected, result);
    });

    test('isolateE274', () async {
      final menksoft = '\uE274';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE275', () async {
      final menksoft = '\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE276', () async {
      final menksoft = '\uE276';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE277', () async {
      final menksoft = '\uE277';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE278', () async {
      final menksoft = '\uE278';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE279', () async {
      final menksoft = '\uE279';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27A', () async {
      final menksoft = '\uE27A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27B', () async {
      final menksoft = '\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27C', () async {
      final menksoft = '\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27D', () async {
      final menksoft = '\uE27D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27E', () async {
      final menksoft = '\uE27E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27F', () async {
      final menksoft = '\uE27F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE280', () async {
      final menksoft = '\uE280';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE281', () async {
      final menksoft = '\uE281';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE282', () async {
      final menksoft = '\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE283', () async {
      final menksoft = '\uE283';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.O]);
      expect(expected, result);
    });

    test('isolateE284', () async {
      final menksoft = '\uE284';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE285', () async {
      final menksoft = '\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O]);
      expect(expected, result);
    });

    test('isolateE286', () async {
      final menksoft = '\uE286';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE287', () async {
      final menksoft = '\uE287';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE288', () async {
      final menksoft = '\uE288';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE289', () async {
      final menksoft = '\uE289';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28A', () async {
      final menksoft = '\uE28A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28B', () async {
      final menksoft = '\uE28B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.U]);
      expect(expected, result);
    });

    test('isolateE28C', () async {
      final menksoft = '\uE28C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28D', () async {
      final menksoft = '\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(expected, result);
    });

    test('isolateE28E', () async {
      final menksoft = '\uE28E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE28F', () async {
      final menksoft = '\uE28F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE290', () async {
      final menksoft = '\uE290';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE291', () async {
      final menksoft = '\uE291';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE292', () async {
      final menksoft = '\uE292';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE293', () async {
      final menksoft = '\uE293';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.OE]);
      expect(expected, result);
    });

    test('isolateE294', () async {
      final menksoft = '\uE294';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE295', () async {
      final menksoft = '\uE295';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE296', () async {
      final menksoft = '\uE296';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE]);
      expect(expected, result);
    });

    test('isolateE297', () async {
      final menksoft = '\uE297';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE298', () async {
      final menksoft = '\uE298';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE299', () async {
      final menksoft = '\uE299';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE29A', () async {
      final menksoft = '\uE29A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE29B', () async {
      final menksoft = '\uE29B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29C', () async {
      final menksoft = '\uE29C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29D', () async {
      final menksoft = '\uE29D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29E', () async {
      final menksoft = '\uE29E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29F', () async {
      final menksoft = '\uE29F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A0', () async {
      final menksoft = '\uE2A0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE]);
      expect(expected, result);
    });

    test('isolateE2A1', () async {
      final menksoft = '\uE2A1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A2', () async {
      final menksoft = '\uE2A2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A3', () async {
      final menksoft = '\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE]);
      expect(expected, result);
    });

    test('isolateE2A4', () async {
      final menksoft = '\uE2A4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A5', () async {
      final menksoft = '\uE2A5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A6', () async {
      final menksoft = '\uE2A6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A7', () async {
      final menksoft = '\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A8', () async {
      final menksoft = '\uE2A8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A9', () async {
      final menksoft = '\uE2A9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AA', () async {
      final menksoft = '\uE2AA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AB', () async {
      final menksoft = '\uE2AB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AC', () async {
      final menksoft = '\uE2AC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AD', () async {
      final menksoft = '\uE2AD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.EE]);
      expect(expected, result);
    });

    test('isolateE2AE', () async {
      final menksoft = '\uE2AE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.EE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AF', () async {
      final menksoft = '\uE2AF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.EE]);
      expect(expected, result);
    });

    test('isolateE2B0', () async {
      final menksoft = '\uE2B0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.EE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B1', () async {
      final menksoft = '\uE2B1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B2', () async {
      final menksoft = '\uE2B2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B3', () async {
      final menksoft = '\uE2B3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B4', () async {
      final menksoft = '\uE2B4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B5', () async {
      final menksoft = '\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B6', () async {
      final menksoft = '\uE2B6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B7', () async {
      final menksoft = '\uE2B7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B8', () async {
      final menksoft = '\uE2B8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B9', () async {
      final menksoft = '\uE2B9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2BA', () async {
      final menksoft = '\uE2BA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2BB', () async {
      final menksoft = '\uE2BB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BC', () async {
      final menksoft = '\uE2BC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BD', () async {
      final menksoft = '\uE2BD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BE', () async {
      final menksoft = '\uE2BE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BF', () async {
      final menksoft = '\uE2BF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2C0', () async {
      final menksoft = '\uE2C0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2C1', () async {
      final menksoft = '\uE2C1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C2', () async {
      final menksoft = '\uE2C2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C3', () async {
      final menksoft = '\uE2C3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C4', () async {
      final menksoft = '\uE2C4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.BA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2C5', () async {
      final menksoft = '\uE2C5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C6', () async {
      final menksoft = '\uE2C6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C7', () async {
      final menksoft = '\uE2C7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C8', () async {
      final menksoft = '\uE2C8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2C9', () async {
      final menksoft = '\uE2C9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CA', () async {
      final menksoft = '\uE2CA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CB', () async {
      final menksoft = '\uE2CB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CC', () async {
      final menksoft = '\uE2CC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CD', () async {
      final menksoft = '\uE2CD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CE', () async {
      final menksoft = '\uE2CE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2CF', () async {
      final menksoft = '\uE2CF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2D0', () async {
      final menksoft = '\uE2D0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2D1', () async {
      final menksoft = '\uE2D1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2D2', () async {
      final menksoft = '\uE2D2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D3', () async {
      final menksoft = '\uE2D3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2D4', () async {
      final menksoft = '\uE2D4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D5', () async {
      final menksoft = '\uE2D5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2D6', () async {
      final menksoft = '\uE2D6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D7', () async {
      final menksoft = '\uE2D7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2D8', () async {
      final menksoft = '\uE2D8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2D9', () async {
      final menksoft = '\uE2D9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2DA', () async {
      final menksoft = '\uE2DA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2DB', () async {
      final menksoft = '\uE2DB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2DC', () async {
      final menksoft = '\uE2DC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2DD', () async {
      final menksoft = '\uE2DD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2DE', () async {
      final menksoft = '\uE2DE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2DF', () async {
      final menksoft = '\uE2DF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2E0', () async {
      final menksoft = '\uE2E0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2E1', () async {
      final menksoft = '\uE2E1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E2', () async {
      final menksoft = '\uE2E2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2E3', () async {
      final menksoft = '\uE2E3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2E4', () async {
      final menksoft = '\uE2E4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E5', () async {
      final menksoft = '\uE2E5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2E6', () async {
      final menksoft = '\uE2E6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2E7', () async {
      final menksoft = '\uE2E7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E8', () async {
      final menksoft = '\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2]);
      expect(expected, result);
    });

    test('isolateE2E9', () async {
      final menksoft = '\uE2E9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EA', () async {
      final menksoft = '\uE2EA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EB', () async {
      final menksoft = '\uE2EB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2EC', () async {
      final menksoft = '\uE2EC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2ED', () async {
      final menksoft = '\uE2ED';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2EE', () async {
      final menksoft = '\uE2EE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EF', () async {
      final menksoft = '\uE2EF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F0', () async {
      final menksoft = '\uE2F0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F1', () async {
      final menksoft = '\uE2F1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F2', () async {
      final menksoft = '\uE2F2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F3', () async {
      final menksoft = '\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F4', () async {
      final menksoft = '\uE2F4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F5', () async {
      final menksoft = '\uE2F5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F6', () async {
      final menksoft = '\uE2F6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F7', () async {
      final menksoft = '\uE2F7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2F8', () async {
      final menksoft = '\uE2F8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2F9', () async {
      final menksoft = '\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2FA', () async {
      final menksoft = '\uE2FA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FB', () async {
      final menksoft = '\uE2FB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FC', () async {
      final menksoft = '\uE2FC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FD', () async {
      final menksoft = '\uE2FD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE2FE', () async {
      final menksoft = '\uE2FE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE2FF', () async {
      final menksoft = '\uE2FF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE300', () async {
      final menksoft = '\uE300';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE301', () async {
      final menksoft = '\uE301';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE302', () async {
      final menksoft = '\uE302';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE303', () async {
      final menksoft = '\uE303';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE304', () async {
      final menksoft = '\uE304';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE305', () async {
      final menksoft = '\uE305';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE306', () async {
      final menksoft = '\uE306';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE307', () async {
      final menksoft = '\uE307';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE308', () async {
      final menksoft = '\uE308';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE309', () async {
      final menksoft = '\uE309';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30A', () async {
      final menksoft = '\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30B', () async {
      final menksoft = '\uE30B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30C', () async {
      final menksoft = '\uE30C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30D', () async {
      final menksoft = '\uE30D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30E', () async {
      final menksoft = '\uE30E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30F', () async {
      final menksoft = '\uE30F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE310', () async {
      final menksoft = '\uE310';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.DA]);
      expect(expected, result);
    });

    test('isolateE311', () async {
      final menksoft = '\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA]);
      expect(expected, result);
    });

    test('isolateE312', () async {
      final menksoft = '\uE312';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE313', () async {
      final menksoft = '\uE313';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE314', () async {
      final menksoft = '\uE314';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE315', () async {
      final menksoft = '\uE315';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE316', () async {
      final menksoft = '\uE316';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE317', () async {
      final menksoft = '\uE317';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE318', () async {
      final menksoft = '\uE318';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE319', () async {
      final menksoft = '\uE319';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31A', () async {
      final menksoft = '\uE31A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31B', () async {
      final menksoft = '\uE31B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31C', () async {
      final menksoft = '\uE31C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE31D', () async {
      final menksoft = '\uE31D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.JA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE31E', () async {
      final menksoft = '\uE31E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE31F', () async {
      final menksoft = '\uE31F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE320', () async {
      final menksoft = '\uE320';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE321', () async {
      final menksoft = '\uE321';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE322', () async {
      final menksoft = '\uE322';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE323', () async {
      final menksoft = '\uE323';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE324', () async {
      final menksoft = '\uE324';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE325', () async {
      final menksoft = '\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE326', () async {
      final menksoft = '\uE326';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE327', () async {
      final menksoft = '\uE327';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE328', () async {
      final menksoft = '\uE328';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE329', () async {
      final menksoft = '\uE329';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32A', () async {
      final menksoft = '\uE32A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32B', () async {
      final menksoft = '\uE32B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(expected, result);
    });

    test('isolateE32C', () async {
      final menksoft = '\uE32C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32D', () async {
      final menksoft = '\uE32D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE32E', () async {
      final menksoft = '\uE32E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE32F', () async {
      final menksoft = '\uE32F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE330', () async {
      final menksoft = '\uE330';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE331', () async {
      final menksoft = '\uE331';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE332', () async {
      final menksoft = '\uE332';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE333', () async {
      final menksoft = '\uE333';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE334', () async {
      final menksoft = '\uE334';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE335', () async {
      final menksoft = '\uE335';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE336', () async {
      final menksoft = '\uE336';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE337', () async {
      final menksoft = '\uE337';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE338', () async {
      final menksoft = '\uE338';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE339', () async {
      final menksoft = '\uE339';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33A', () async {
      final menksoft = '\uE33A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33B', () async {
      final menksoft = '\uE33B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33C', () async {
      final menksoft = '\uE33C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33D', () async {
      final menksoft = '\uE33D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33E', () async {
      final menksoft = '\uE33E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33F', () async {
      final menksoft = '\uE33F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE340', () async {
      final menksoft = '\uE340';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE341', () async {
      final menksoft = '\uE341';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE342', () async {
      final menksoft = '\uE342';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE343', () async {
      final menksoft = '\uE343';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE344', () async {
      final menksoft = '\uE344';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE345', () async {
      final menksoft = '\uE345';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.HAA]);
      expect(expected, result);
    });

    test('isolateE346', () async {
      final menksoft = '\uE346';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.HAA]);
      expect(expected, result);
    });

    test('isolateE347', () async {
      final menksoft = '\uE347';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.HAA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE348', () async {
      final menksoft = '\uE348';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE349', () async {
      final menksoft = '\uE349';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE34A', () async {
      final menksoft = '\uE34A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE34B', () async {
      final menksoft = '\uE34B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34C', () async {
      final menksoft = '\uE34C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34D', () async {
      final menksoft = '\uE34D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34E', () async {
      final menksoft = '\uE34E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZHI]);
      expect(expected, result);
    });

    test('isolateE34F', () async {
      final menksoft = '\uE34F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHI]);
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Punctuation', () {
    test('punctuationBirga', () async {
      final menksoft = Menksoft.BIRGA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(expected, result);
    });

    test('punctuationEllipsis', () async {
      final menksoft = Menksoft.ELLIPSIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(expected, result);
    });

    test('punctuationComma', () async {
      final menksoft = Menksoft.COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(expected, result);
    });

    test('punctuationFullStop', () async {
      final menksoft = Menksoft.FULL_STOP;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(expected, result);
    });
    test('punctuationColon', () async {
      final menksoft = Menksoft.COLON;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(expected, result);
    });

    test('punctuationFourDots', () async {
      final menksoft = Menksoft.FOUR_DOTS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(expected, result);
    });

    test('punctuationTodoSoftHyphen', () async {
      final menksoft = Menksoft.TODO_SOFT_HYPHEN;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final menksoft = Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('punctuationManchuComma', () async {
      final menksoft = Menksoft.MANCHU_COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(expected, result);
    });

    test('punctuationManchuFullStop', () async {
      final menksoft = Menksoft.MANCHU_FULL_STOP;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('punctuationNirugu', () async {
      final menksoft = Menksoft.NIRUGU;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
      expect(expected, result);
    });

    test('punctuationMiddleDot', () async {
      final menksoft = Menksoft.MIDDLE_DOT;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(expected, result);
    });

    test('punctuationZero', () async {
      final menksoft = Menksoft.ZERO;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(expected, result);
    });

    test('punctuationOne', () async {
      final menksoft = Menksoft.ONE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(expected, result);
    });

    test('punctuationTwo', () async {
      final menksoft = Menksoft.TWO;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(expected, result);
    });

    test('punctuationThree', () async {
      final menksoft = Menksoft.THREE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(expected, result);
    });

    test('punctuationFour', () async {
      final menksoft = Menksoft.FOUR;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(expected, result);
    });

    test('punctuationFive', () async {
      final menksoft = Menksoft.FIVE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(expected, result);
    });

    test('punctuationSix', () async {
      final menksoft = Menksoft.SIX;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(expected, result);
    });

    test('punctuationSeven', () async {
      final menksoft = Menksoft.SEVEN;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(expected, result);
    });

    test('punctuationEight', () async {
      final menksoft = Menksoft.EIGHT;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(expected, result);
    });

    test('punctuationNine', () async {
      final menksoft = Menksoft.NINE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(expected, result);
    });

    test('punctuationQuestionExclamation', () async {
      final menksoft = Menksoft.QUESTION_EXCLAMATION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('punctuationExclamationQuestion', () async {
      final menksoft = Menksoft.EXCLAMATION_QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(expected, result);
    });

    test('punctuationExclamation', () async {
      final menksoft = Menksoft.EXCLAMATION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('punctuationQuestion', () async {
      final menksoft = Menksoft.QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(expected, result);
    });

    test('punctuationSemicolon', () async {
      final menksoft = Menksoft.SEMICOLON;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(expected, result);
    });

    test('punctuationLeftParenthesis', () async {
      final menksoft = Menksoft.LEFT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationRightParenthesis', () async {
      final menksoft = Menksoft.RIGHT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationLeftAngleBracket', () async {
      final menksoft = Menksoft.LEFT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftBracket', () async {
      final menksoft = Menksoft.LEFT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightBracket', () async {
      final menksoft = Menksoft.RIGHT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final menksoft = Menksoft.LEFT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final menksoft = Menksoft.LEFT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final menksoft = Menksoft.RIGHT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationFullWidthComma', () async {
      final menksoft = Menksoft.FULL_WIDTH_COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(expected, result);
    });

    test('punctuationX', () async {
      final menksoft = Menksoft.X;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(expected, result);
    });

    test('punctuationReferenceMark', () async {
      final menksoft = Menksoft.REFERENCE_MARK;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(expected, result);
    });

    test('punctuationEnDash', () async {
      final menksoft = Menksoft.EN_DASH;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(expected, result);
    });

    test('punctuationEmDash', () async {
      final menksoft = Menksoft.EM_DASH;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(expected, result);
    });

    test('punctuationSuffixSpace', () async {
      final menksoft = Menksoft.SUFFIX_SPACE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.NNBS);
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Words', () {
    test('bichigWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭ';
      expect(expected, result);
    });

    test('egeshigWord', () async {
      final menksoft = '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3'; // EGESIG (NNBSP) INU
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ';
      expect(expected, result);
    });

    test('bujigWord', () async {
      final menksoft =
          '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ';
      expect(expected, result);
    });

    test('chirigWord', () async {
      final menksoft = '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ'; // CHIRIG (NNBSP) MANI
      expect(expected, result);
    });

    test('egchiWord', () async {
      final menksoft = '\uE271\uE2F0\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠭᠴᠡ'; // EGCHI
      expect(expected, result);
    });

    test('qugjimWord', () async {
      final menksoft =
          '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      expect(expected, result);
    });

    test('buridgelWord', () async {
      final menksoft = '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ'; // BURIDGEL (NNBSP) IYEN
      expect(expected, result);
    });

    test('sedqilWord', () async {
      final menksoft = '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      expect(expected, result);
    });

    test('uiledburiWord', () async {
      final menksoft = '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      expect(expected, result);
    });

    test('jeligudqenWord', () async {
      final menksoft = '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ'; // JELIGUDQEN (NNBSP) U
      expect(expected, result);
    });

    test('manggalWord', () async {
      final menksoft =
          '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      expect(expected, result);
    });

    test('dengWord', () async {
      final menksoft = '\uE310\uE2A9\uE2BB\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳ᠋ᠦᠩ ᠢ'; // D(FVS1)UNG (NNBSP) I
      expect(expected, result);
    });

    test('sodnamWord', () async {
      final menksoft =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      expect(expected, result);
    });

    test('lhagbaWord', () async {
      final menksoft = '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ'; // LHAGBA (NNBSP) LUG(MVS)A
      expect(expected, result);
    });

    test('chebegmedWord', () async {
      final menksoft = '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      expect(expected, result);
    });

    test('tsementWord', () async {
      final menksoft = '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠼᠧᠮᠧᠨᠲ ᠲᠠᠶᠢᠭᠠᠨ'; // TSEMENT (NNBSP) TAYIGAN
      expect(expected, result);
    });

    test('uniyeWord', () async {
      final menksoft = '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEYIGEN
      expect(expected, result);
    });

    test('qoyinaWord', () async {
      final menksoft = '\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠣᠶᠢᠨ᠎ᠠ'; // QOYIN(MVS)A
      expect(expected, result);
    });

    test('angnaWord', () async {
      final menksoft = '\uE266\uE2BE\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠩᠨ᠎ᠠ'; // ANGN(MVS)A
      expect(expected, result);
    });

    test('chinggaWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭ᠎ᠠ'; // CHINGG(MVS)A
      expect(expected, result);
    });

    test('chingalaquWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭᠠᠯᠠᠬᠤ'; // CHINGGALAQU
      expect(expected, result);
    });

    test('daljiygsanWord', () async {
      final menksoft = '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳᠠᠯᠵᠢᠶᠭᠰᠠᠨ'; // DALJIYGSAN
      expect(expected, result);
    });

    test('ilbigchiWord', () async {
      final menksoft = '\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠢᠯᠪᠢᠭᠴᠢ'; // ILBIGCHI
      expect(expected, result);
    });

    test('bichigchiWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭᠴᠢ'; // BICHIGCHI
      expect(expected, result);
    });

    test('sigsiglequWord', () async {
      final menksoft = '\uE2FD\uE27E\uE2EB\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
      expect(expected, result);
    });

    test('diglimsigsenWord', () async {
      final menksoft = '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EB\uE301\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ'; // DIGLIMSIGSEN
      expect(expected, result);
    });

    test('chigigligWord', () async {
      final menksoft = '\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠭᠢᠭᠯᠢᠭ'; // CHIGIGLIG
      expect(expected, result);
    });

    test('monggeWord', () async {
      final menksoft = '\uE2F2\uE29C\uE2BD\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠥᠩᠭᠡ'; // MONGGE
      expect(expected, result);
    });

    test('kinoWord', () async {
      final menksoft = '\uE333\uE27F\uE2B9\uE286';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠺᠢᠨᠣ᠋'; // KINO(FVS1)
      expect(expected, result);
    });

    test('bayigulquWord', () async {
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠶᠢᠭᠤᠯᠬᠤ'; // BAYIGULQU
      expect(expected, result);
    });

    test('gregWord', () async {
      final menksoft = '\uE2E3\uE327\uE2B0\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠭᠷᠧᠭ'; // GREG
      expect(expected, result);
    });

    test('motorWord', () async {
      final menksoft = '\uE2F2\uE289\uE30D\uE289\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠣᠲ᠋ᠣᠷ'; // MOT(FVS1)OR
      expect(expected, result);
    });

    test('neigemligWord', () async {
      final menksoft = '\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ'; // NEYIGEMLIG
      expect(expected, result);
    });

    test('mongolWord', () async {
      final menksoft = '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠣᠩᠭᠣᠯ'; // MONGGOL
      expect(expected, result);
    });

    test('yatugaWord', () async {
      final menksoft = '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠶᠠᠲᠤᠭ᠎ᠠ'; // YATUG(MVS)A
      expect(expected, result);
    });

    test('olaganaWord', () async {
      final menksoft = '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠤᠯᠠᠭᠠᠨ᠎ᠠ'; // OLAGAN(MVS)A
      expect(expected, result);
    });

    test('bichiglequWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭᠯᠡᠬᠦ'; // BICHIGLEQU
      expect(expected, result);
    });

    test('programWord', () async {
      final menksoft = '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠫᠷᠣᠭ᠍ᠷᠠᠮ'; // PROG(FVS3)RAM
      expect(expected, result);
    });

    test('kartWord', () async {
      final menksoft = '\uE333\uE26D\uE326\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠺᠠᠷᠲ'; // KART
      expect(expected, result);
    });

    test('dungnelteWord', () async {
      final menksoft = '\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ'; // D(FVS1)UNGNELTE
      expect(expected, result);
    });

    test('gramWord', () async {
      final menksoft = '\uE2E3\uE327\uE26C\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠭᠷᠠᠮ'; // GRAM
      expect(expected, result);
    });

    test('minggaWord', () async {
      final menksoft = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠢᠩᠭ᠎ᠠ'; // MINGG(MVS)A
      expect(expected, result);
    });

    test('naimaWordMenksoftVersion', () async {
      final menksoft = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠢ\u180Cᠮᠠ'; // NAI(FVS2)MA (not defined in Unicode 10.0)
      expect(expected, result);
    });

    test('naijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE281\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠢᠵᠠ'; // NAIJA
      expect(expected, result);
    });

    test('nayijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE321\uE27E\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠶᠢᠵᠠ'; // NAYIJA
      expect(expected, result);
    });

    test('bainaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠢᠨ᠎ᠠ'; // BAIN(MVS)A
      expect(expected, result);
    });

    test('bayinaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠶᠢᠨ᠎ᠠ'; // BAYIN(MVS)A
      expect(expected, result);
    });

    test('baiinaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠢᠢᠨ᠎ᠠ'; // BAIIN(MVS)A
      expect(expected, result);
    });

    test('saihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠠᠶᠢᠬᠠᠨ'; // SAYIHAN
      expect(expected, result);
    });

    test('sayihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠠᠶ\u180Bᠢᠬᠠᠨ'; // SAY(FVS1)IHAN
      expect(expected, result);
    });

    test('sayiWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠠᠶ\u180Bᠢ'; // SAY(FVS1)I
      expect(expected, result);
    });

    test('taiWord', () async {
      final menksoft = '\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠲᠠᠢ'; // TAI
      expect(expected, result);
    });

    test('namayiWord', () async {
      final menksoft = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠮᠠᠶᠢ'; // NAMAYI
      expect(expected, result);
    });

    test('eyimuWord', () async {
      final menksoft = '\uE271\uE321\uE27E\uE2F5\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠶᠢᠮᠦ'; // EYIMU
      expect(expected, result);
    });

    test('soyolWord', () async {
      final menksoft = '\uE2FE\uE289\uE320\uE289\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠣᠶᠣᠯ'; // SOYOL
      expect(expected, result);
    });

    test('buuWord', () async {
      final menksoft = '\uE2C2\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠦ'; // BUU
      expect(expected, result);
    });

    test('quuWord', () async {
      final menksoft = '\uE2D4\uE2AA\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠦᠦ'; // QUU
      expect(expected, result);
    });

    test('qeuqenWord', () async {
      final menksoft = '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠦᠬᠡᠳ'; // QEUQEN
      expect(expected, result);
    });

    test('qeduyinWord', () async {
      final menksoft = '\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠳᠦᠶᠢᠨ'; // QEDUYIN
      expect(expected, result);
    });

    test('qeduinWord', () async {
      final menksoft = '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
      expect(expected, result);
    });

    test('anggliWord', () async {
      final menksoft = '\uE266\uE2BD\uE2EB\uE2FC\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠩᠭᠯᠢ'; // ANGGLI
      expect(expected, result);
    });

    test('asiglajuWord', () async {
      final menksoft = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠰᠢᠭᠯᠠᠵᠤ'; // ASIGLAJU
      expect(expected, result);
    });

    test('narangerelWord', () async {
      final menksoft = '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      expect(expected, result);
    });

    test('cholmonodoWord', () async {
      final menksoft = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ'; // CHOLMON(ZWJ)O(FVS1)DO
      expect(expected, result);
    });

    test('bayanunderWord', () async {
      final menksoft = '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠶᠠᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ'; // BAYAN(ZWJ)U(FVS1)NDUR
      expect(expected, result);
    });

    test('sodobiligWord', () async {
      final menksoft = '\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌'; // SODOBILIG(FVS2)
      expect(expected, result);
    });

    test('anggilumchechegWord', () async {
      final menksoft = '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
      expect(expected, result);
    });

    test('chechegmaWord', () async {
      final menksoft = '\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠡᠴᠡᠭᠮ᠎ᠡ'; // CHECHEGM(MVS)A
      expect(expected, result);
    });

    test('sigDefaultWord', () async {
      final menksoft = '\uE2FD\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭ'; // SIG
      expect(expected, result);
    });

    test('sigSpecifiedWord', () async {
      final menksoft = '\uE2FD\uE27E\uE2E7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭ᠋'; // SIG(FVS1)
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Suffixes', () {
    test('yinSuffix', () async {
      final menksoft = '\uE263\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢᠨ'; //
      expect(expected, result);
    });

    test('unSuffix', () async {
      final menksoft = '\uE263\uE292\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠨ'; //
      expect(expected, result);
    });

    test('uenSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠨ'; //
      expect(expected, result);
    });

    test('uSuffix', () async {
      final menksoft = '\uE263\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤ'; //
      expect(expected, result);
    });

    test('ueSuffix', () async {
      final menksoft = '\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦ'; //
      expect(expected, result);
    });

    test('iSuffix', () async {
      final menksoft = '\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢ'; //
      expect(expected, result);
    });

    test('yiSuffix', () async {
      final menksoft = '\uE263\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢ'; //
      expect(expected, result);
    });

    test('duSuffix', () async {
      final menksoft = '\uE263\uE310\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤ'; //
      expect(expected, result);
    });

    test('dueSuffix', () async {
      final menksoft = '\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦ'; //
      expect(expected, result);
    });

    test('tuSuffix', () async {
      final menksoft = '\uE263\uE309\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤ'; //
      expect(expected, result);
    });

    test('tueSuffix', () async {
      final menksoft = '\uE263\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦ'; //
      expect(expected, result);
    });

    test('durSuffix', () async {
      final menksoft = '\uE263\uE310\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤᠷ'; //
      expect(expected, result);
    });

    test('duerSuffix', () async {
      final menksoft = '\uE263\uE310\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦᠷ'; //
      expect(expected, result);
    });

    test('turSuffix', () async {
      final menksoft = '\uE263\uE309\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤᠷ'; //
      expect(expected, result);
    });

    test('tuerSuffix', () async {
      final menksoft = '\uE263\uE309\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦᠷ'; //
      expect(expected, result);
    });

    test('daqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠠᠬᠢ'; //
      expect(expected, result);
    });

    test('deqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠬᠢ'; //
      expect(expected, result);
    });

    test('achaSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠠᠴᠠ'; //
      expect(expected, result);
    });

    test('echeSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡ'; //
      expect(expected, result);
    });

    test('barSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠠᠷ'; //
      expect(expected, result);
    });

    test('berSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠷ'; //
      expect(expected, result);
    });

    test('iyarSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠠᠷ'; //
      expect(expected, result);
    });

    test('iyerSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠷ'; //
      expect(expected, result);
    });

    test('taiSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠠᠢ'; //
      expect(expected, result);
    });

    test('teiSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢ'; //
      expect(expected, result);
    });

    test('lugaSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠤᠭ᠎ᠠ'; //
      expect(expected, result);
    });

    test('luegeSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠦᠭᠡ'; //
      expect(expected, result);
    });

    test('banSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠠᠨ'; //
      expect(expected, result);
    });

    test('benSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠨ'; //
      expect(expected, result);
    });

    test('iyanSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠠᠨ'; //
      expect(expected, result);
    });

    test('iyenSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠨ'; //
      expect(expected, result);
    });

    test('yuganSuffix', () async {
      final menksoft = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠤᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('yuegenSuffix', () async {
      final menksoft = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠦᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('daganSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠠᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('degenSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('taganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠠᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('tegenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('achaganSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠠᠴᠠᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('echegenSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('taiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠠᠢᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('tayiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠠᠶᠢᠭᠠᠨ'; //
      expect(expected, result);
    });

    test('teigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('teyigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠶᠢᠭᠡᠨ'; //
      expect(expected, result);
    });

    test('udSuffix', () async {
      final menksoft = '\uE263\uE292\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠳ'; //
      expect(expected, result);
    });

    test('uedSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠳ'; //
      expect(expected, result);
    });

    test('nugudSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠤᠭᠤᠳ'; //
      expect(expected, result);
    });

    test('nueguedSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠦᠭᠦᠳ'; //
      expect(expected, result);
    });

    test('narSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠠᠷ'; //
      expect(expected, result);
    });

    test('nerSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠡᠷ'; //
      expect(expected, result);
    });

    test('uuSuffix', () async {
      final menksoft = '\uE263\uE292\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠤ'; //
      expect(expected, result);
    });

    test('ueueSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠦ'; //
      expect(expected, result);
    });

    test('daSuffix', () async {
      final menksoft = '\uE263\uE310\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠠ'; //
      expect(expected, result);
    });

    test('deSuffix', () async {
      final menksoft = '\uE263\uE310\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡ'; //
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: more edge cases', () {
    test('dottedMedialNBeforeConsonant', () async {
      final menksoft = '\uE342\uE2F4\uE2B9\uE30A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE2F4\uE2B9\uE30A';
      expect(expected, result);
    });

    test('longToothUEinNonInitialSyllable', () async {
      final menksoft = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      expect(expected, result);
    });

    test('medialEEatWordEnd', () async {
      final menksoft = '\uE342\uE32C';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE32C';
      expect(expected, result);
    });

    test('spaceIsAddedBetweenToWordsWithoutSpace', () async {
      final menksoft = '\uE34F\uE27B\uE2FE\uE291\uE327\uE2D6\uE26A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34F\uE27B \uE2FE\uE291\uE327\uE2D6\uE26A';
      expect(expected, result);
    });

    test('jBecomesYAfterNNBS', () async {
      final menksoft = '\uE263\uE319\uE27E\uE2B5';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(expected, result);
    });

    test('wBetweenTwoConsonantsBecomesEE', () async {
      final menksoft = '\uE345\uE329\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE345\uE2B0\uE2BB';
      expect(expected, result);
    });

    test('eeBetweenTwoVowelsBecomesW', () async {
      final menksoft = '\uE266\uE2B0\uE268';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE266\uE32C\uE268';
      expect(expected, result);
    });
  });

  group('Unicode suffix lookup', () {
    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.U;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UE;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.UN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UEN;
      expect(expected, result);
    });
  });
}
