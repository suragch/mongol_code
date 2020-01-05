
import 'package:mongol_code/src/gender.dart';
import 'package:mongol_code/src/menksoft.dart';
import 'package:mongol_code/src/suffix.dart';
import 'package:mongol_code/src/unicode.dart';
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
  String unicode = converter.menksoftToUnicode(menksoft);
  return converter.unicodeToMenksoft(unicode);
}

void main() {
  group('Unicode -> Menksoft: non-Mongol strings', () {
    test('empty string', () async {
      String unicode = '';
      String result = convertUnicodeToMenksoft(unicode);
      String expected = '';
      expect(expected, result);
    });

    test('nullString', () async {
      String unicode = null;
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('english character', () async {
      String unicode = 'a';
      String result = convertUnicodeToMenksoft(unicode);
      String expected = 'a';
      expect(expected, result);
    });

    test('englishKeyboardChars', () async {
      String unicode =
          "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:'\" ,./<>?";
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:'\" ,./<>?";
      expect(expected, result);
    });

    test('chineseChars', () async {
      String unicode = "中文";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "中文";
      expect(expected, result);
    });

    test('emojiChars', () async {
      String unicode =
          "\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4";
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4";
      expect(expected, result);
    });

    test('menksoftString', () async {
      String unicode = "\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2F2\uE291\uE2BC\uE2EC\uE291\uE2F9";
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: all combinations of Unicode+FVS', () {
    test('aIsol', () async {
      String unicode = "ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aInit', () async {
      String unicode = "ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aMedi', () async {
      String unicode = "‍ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aFina', () async {
      String unicode = "‍ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aIsolFvs1', () async {
      String unicode = "ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aInitFvs1', () async {
      String unicode = "ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aMediFvs1', () async {
      String unicode = "‍ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aFinaFvs1', () async {
      String unicode = "‍ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aIsolFvs2', () async {
      String unicode = "ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aInitFvs2', () async {
      String unicode = "ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aMediFvs2', () async {
      String unicode = "‍ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aFinaFvs2', () async {
      String unicode = "‍ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aIsolFvs3', () async {
      String unicode = "ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aInitFvs3', () async {
      String unicode = "ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aMediFvs3', () async {
      String unicode = "‍ᠠ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('aFinaFvs3', () async {
      String unicode = "‍ᠠ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eIsol', () async {
      String unicode = "ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eInit', () async {
      String unicode = "ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eMedi', () async {
      String unicode = "‍ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eFina', () async {
      String unicode = "‍ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eIsolFvs1', () async {
      String unicode = "ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eInitFvs1', () async {
      String unicode = "ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eMediFvs1', () async {
      String unicode = "‍ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eFinaFvs1', () async {
      String unicode = "‍ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eIsolFvs2', () async {
      String unicode = "ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eInitFvs2', () async {
      String unicode = "ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eMediFvs2', () async {
      String unicode = "‍ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eFinaFvs2', () async {
      String unicode = "‍ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eIsolFvs3', () async {
      String unicode = "ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eInitFvs3', () async {
      String unicode = "ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eMediFvs3', () async {
      String unicode = "‍ᠡ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eFinaFvs3', () async {
      String unicode = "‍ᠡ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iIsol', () async {
      String unicode = "ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iInit', () async {
      String unicode = "ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iMedi', () async {
      String unicode = "‍ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iFina', () async {
      String unicode = "‍ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iIsolFvs1', () async {
      String unicode = "ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iInitFvs1', () async {
      String unicode = "ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iMediFvs1', () async {
      String unicode = "‍ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iFinaFvs1', () async {
      String unicode = "‍ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iIsolFvs2', () async {
      String unicode = "ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iInitFvs2', () async {
      String unicode = "ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iMediFvs2', () async {
      String unicode = "‍ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iFinaFvs2', () async {
      String unicode = "‍ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iIsolFvs3', () async {
      String unicode = "ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iInitFvs3', () async {
      String unicode = "ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iMediFvs3', () async {
      String unicode = "‍ᠢ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('iFinaFvs3', () async {
      String unicode = "‍ᠢ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oIsol', () async {
      String unicode = "ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oInit', () async {
      String unicode = "ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oMedi', () async {
      String unicode = "‍ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oFina', () async {
      String unicode = "‍ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oIsolFvs1', () async {
      String unicode = "ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oInitFvs1', () async {
      String unicode = "ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oMediFvs1', () async {
      String unicode = "‍ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oFinaFvs1', () async {
      String unicode = "‍ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oIsolFvs2', () async {
      String unicode = "ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oInitFvs2', () async {
      String unicode = "ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oMediFvs2', () async {
      String unicode = "‍ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oFinaFvs2', () async {
      String unicode = "‍ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oIsolFvs3', () async {
      String unicode = "ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oInitFvs3', () async {
      String unicode = "ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oMediFvs3', () async {
      String unicode = "‍ᠣ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oFinaFvs3', () async {
      String unicode = "‍ᠣ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uIsol', () async {
      String unicode = "ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uInit', () async {
      String unicode = "ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uMedi', () async {
      String unicode = "‍ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uFina', () async {
      String unicode = "‍ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uIsolFvs1', () async {
      String unicode = "ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uInitFvs1', () async {
      String unicode = "ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uMediFvs1', () async {
      String unicode = "‍ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uFinaFvs1', () async {
      String unicode = "‍ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uIsolFvs2', () async {
      String unicode = "ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uInitFvs2', () async {
      String unicode = "ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uMediFvs2', () async {
      String unicode = "‍ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uFinaFvs2', () async {
      String unicode = "‍ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uIsolFvs3', () async {
      String unicode = "ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uInitFvs3', () async {
      String unicode = "ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uMediFvs3', () async {
      String unicode = "‍ᠤ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('uFinaFvs3', () async {
      String unicode = "‍ᠤ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeIsol', () async {
      String unicode = "ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeInit', () async {
      String unicode = "ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeMedi', () async {
      String unicode = "‍ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeFina', () async {
      String unicode = "‍ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeIsolFvs1', () async {
      String unicode = "ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeInitFvs1', () async {
      String unicode = "ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeMediFvs1', () async {
      String unicode = "‍ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeFinaFvs1', () async {
      String unicode = "‍ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeIsolFvs2', () async {
      String unicode = "ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeInitFvs2', () async {
      String unicode = "ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeMediFvs2', () async {
      String unicode = "‍ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeFinaFvs2', () async {
      String unicode = "‍ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeIsolFvs3', () async {
      String unicode = "ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeInitFvs3', () async {
      String unicode = "ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeMediFvs3', () async {
      String unicode = "‍ᠥ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('oeFinaFvs3', () async {
      String unicode = "‍ᠥ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueIsol', () async {
      String unicode = "ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueInit', () async {
      String unicode = "ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueMedi', () async {
      String unicode = "‍ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueFina', () async {
      String unicode = "‍ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueIsolFvs1', () async {
      String unicode = "ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueInitFvs1', () async {
      String unicode = "ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueMediFvs1', () async {
      String unicode = "‍ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueFinaFvs1', () async {
      String unicode = "‍ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueIsolFvs2', () async {
      String unicode = "ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueInitFvs2', () async {
      String unicode = "ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueMediFvs2', () async {
      String unicode = "‍ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueFinaFvs2', () async {
      String unicode = "‍ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueIsolFvs3', () async {
      String unicode = "ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueInitFvs3', () async {
      String unicode = "ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueMediFvs3', () async {
      String unicode = "‍ᠦ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ueFinaFvs3', () async {
      String unicode = "‍ᠦ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeIsol', () async {
      String unicode = "ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeInit', () async {
      String unicode = "ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeMedi', () async {
      String unicode = "‍ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeFina', () async {
      String unicode = "‍ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeIsolFvs1', () async {
      String unicode = "ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeInitFvs1', () async {
      String unicode = "ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeMediFvs1', () async {
      String unicode = "‍ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeFinaFvs1', () async {
      String unicode = "‍ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeIsolFvs2', () async {
      String unicode = "ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeInitFvs2', () async {
      String unicode = "ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeMediFvs2', () async {
      String unicode = "‍ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeFinaFvs2', () async {
      String unicode = "‍ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeIsolFvs3', () async {
      String unicode = "ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeInitFvs3', () async {
      String unicode = "ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeMediFvs3', () async {
      String unicode = "‍ᠧ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('eeFinaFvs3', () async {
      String unicode = "‍ᠧ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nIsol', () async {
      String unicode = "ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nInit', () async {
      String unicode = "ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nMedi', () async {
      String unicode = "‍ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nFina', () async {
      String unicode = "‍ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nIsolFvs1', () async {
      String unicode = "ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nInitFvs1', () async {
      String unicode = "ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nMediFvs1', () async {
      String unicode = "‍ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nFinaFvs1', () async {
      String unicode = "‍ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nIsolFvs2', () async {
      String unicode = "ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nInitFvs2', () async {
      String unicode = "ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nMediFvs2', () async {
      String unicode = "‍ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nFinaFvs2', () async {
      String unicode = "‍ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nIsolFvs3', () async {
      String unicode = "ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nInitFvs3', () async {
      String unicode = "ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nMediFvs3', () async {
      String unicode = "‍ᠨ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nFinaFvs3', () async {
      String unicode = "‍ᠨ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngIsol', () async {
      String unicode = "ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngInit', () async {
      String unicode = "ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngMedi', () async {
      String unicode = "‍ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngFina', () async {
      String unicode = "‍ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngIsolFvs1', () async {
      String unicode = "ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngInitFvs1', () async {
      String unicode = "ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngMediFvs1', () async {
      String unicode = "‍ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngFinaFvs1', () async {
      String unicode = "‍ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngIsolFvs2', () async {
      String unicode = "ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngInitFvs2', () async {
      String unicode = "ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngMediFvs2', () async {
      String unicode = "‍ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngFinaFvs2', () async {
      String unicode = "‍ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngIsolFvs3', () async {
      String unicode = "ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngInitFvs3', () async {
      String unicode = "ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngMediFvs3', () async {
      String unicode = "‍ᠩ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('ngFinaFvs3', () async {
      String unicode = "‍ᠩ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bIsol', () async {
      String unicode = "ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bInit', () async {
      String unicode = "ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bMedi', () async {
      String unicode = "‍ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bFina', () async {
      String unicode = "‍ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bIsolFvs1', () async {
      String unicode = "ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bInitFvs1', () async {
      String unicode = "ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bMediFvs1', () async {
      String unicode = "‍ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bFinaFvs1', () async {
      String unicode = "‍ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bIsolFvs2', () async {
      String unicode = "ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bInitFvs2', () async {
      String unicode = "ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bMediFvs2', () async {
      String unicode = "‍ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bFinaFvs2', () async {
      String unicode = "‍ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bIsolFvs3', () async {
      String unicode = "ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bInitFvs3', () async {
      String unicode = "ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bMediFvs3', () async {
      String unicode = "‍ᠪ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('bFinaFvs3', () async {
      String unicode = "‍ᠪ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pIsol', () async {
      String unicode = "ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pInit', () async {
      String unicode = "ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pMedi', () async {
      String unicode = "‍ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pFina', () async {
      String unicode = "‍ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pIsolFvs1', () async {
      String unicode = "ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pInitFvs1', () async {
      String unicode = "ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pMediFvs1', () async {
      String unicode = "‍ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pFinaFvs1', () async {
      String unicode = "‍ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pIsolFvs2', () async {
      String unicode = "ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pInitFvs2', () async {
      String unicode = "ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pMediFvs2', () async {
      String unicode = "‍ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pFinaFvs2', () async {
      String unicode = "‍ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pIsolFvs3', () async {
      String unicode = "ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pInitFvs3', () async {
      String unicode = "ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pMediFvs3', () async {
      String unicode = "‍ᠫ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('pFinaFvs3', () async {
      String unicode = "‍ᠫ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qIsol', () async {
      String unicode = "ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qInit', () async {
      String unicode = "ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qMedi', () async {
      String unicode = "‍ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qFina', () async {
      String unicode = "‍ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qIsolFvs1', () async {
      String unicode = "ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qInitFvs1', () async {
      String unicode = "ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qMediFvs1', () async {
      String unicode = "‍ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qFinaFvs1', () async {
      String unicode = "‍ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qIsolFvs2', () async {
      String unicode = "ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qInitFvs2', () async {
      String unicode = "ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qMediFvs2', () async {
      String unicode = "‍ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qFinaFvs2', () async {
      String unicode = "‍ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qIsolFvs3', () async {
      String unicode = "ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qInitFvs3', () async {
      String unicode = "ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qMediFvs3', () async {
      String unicode = "‍ᠬ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('qFinaFvs3', () async {
      String unicode = "‍ᠬ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gIsol', () async {
      String unicode = "ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gInit', () async {
      String unicode = "ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gMedi', () async {
      String unicode = "‍ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gFina', () async {
      String unicode = "‍ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gIsolFvs1', () async {
      String unicode = "ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gInitFvs1', () async {
      String unicode = "ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gMediFvs1', () async {
      String unicode = "‍ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gFinaFvs1', () async {
      String unicode = "‍ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gIsolFvs2', () async {
      String unicode = "ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gInitFvs2', () async {
      String unicode = "ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gMediFvs2', () async {
      String unicode = "‍ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gFinaFvs2', () async {
      String unicode = "‍ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gIsolFvs3', () async {
      String unicode = "ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gInitFvs3', () async {
      String unicode = "ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gMediFvs3', () async {
      String unicode = "‍ᠭ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('gFinaFvs3', () async {
      String unicode = "‍ᠭ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mIsol', () async {
      String unicode = "ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mInit', () async {
      String unicode = "ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mMedi', () async {
      String unicode = "‍ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mFina', () async {
      String unicode = "‍ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mIsolFvs1', () async {
      String unicode = "ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mInitFvs1', () async {
      String unicode = "ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mMediFvs1', () async {
      String unicode = "‍ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mFinaFvs1', () async {
      String unicode = "‍ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mIsolFvs2', () async {
      String unicode = "ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mInitFvs2', () async {
      String unicode = "ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mMediFvs2', () async {
      String unicode = "‍ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mFinaFvs2', () async {
      String unicode = "‍ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mIsolFvs3', () async {
      String unicode = "ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mInitFvs3', () async {
      String unicode = "ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mMediFvs3', () async {
      String unicode = "‍ᠮ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('mFinaFvs3', () async {
      String unicode = "‍ᠮ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lIsol', () async {
      String unicode = "ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lInit', () async {
      String unicode = "ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lMedi', () async {
      String unicode = "‍ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lFina', () async {
      String unicode = "‍ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lIsolFvs1', () async {
      String unicode = "ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lInitFvs1', () async {
      String unicode = "ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lMediFvs1', () async {
      String unicode = "‍ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lFinaFvs1', () async {
      String unicode = "‍ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lIsolFvs2', () async {
      String unicode = "ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lInitFvs2', () async {
      String unicode = "ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lMediFvs2', () async {
      String unicode = "‍ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lFinaFvs2', () async {
      String unicode = "‍ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lIsolFvs3', () async {
      String unicode = "ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lInitFvs3', () async {
      String unicode = "ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lMediFvs3', () async {
      String unicode = "‍ᠯ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lFinaFvs3', () async {
      String unicode = "‍ᠯ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sIsol', () async {
      String unicode = "ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sInit', () async {
      String unicode = "ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sMedi', () async {
      String unicode = "‍ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sFina', () async {
      String unicode = "‍ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sIsolFvs1', () async {
      String unicode = "ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sInitFvs1', () async {
      String unicode = "ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sMediFvs1', () async {
      String unicode = "‍ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sFinaFvs1', () async {
      String unicode = "‍ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sIsolFvs2', () async {
      String unicode = "ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sInitFvs2', () async {
      String unicode = "ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sMediFvs2', () async {
      String unicode = "‍ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sFinaFvs2', () async {
      String unicode = "‍ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sIsolFvs3', () async {
      String unicode = "ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sInitFvs3', () async {
      String unicode = "ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sMediFvs3', () async {
      String unicode = "‍ᠰ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('sFinaFvs3', () async {
      String unicode = "‍ᠰ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shIsol', () async {
      String unicode = "ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shInit', () async {
      String unicode = "ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shMedi', () async {
      String unicode = "‍ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shFina', () async {
      String unicode = "‍ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shIsolFvs1', () async {
      String unicode = "ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shInitFvs1', () async {
      String unicode = "ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shMediFvs1', () async {
      String unicode = "‍ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shFinaFvs1', () async {
      String unicode = "‍ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shIsolFvs2', () async {
      String unicode = "ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shInitFvs2', () async {
      String unicode = "ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shMediFvs2', () async {
      String unicode = "‍ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shFinaFvs2', () async {
      String unicode = "‍ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shIsolFvs3', () async {
      String unicode = "ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shInitFvs3', () async {
      String unicode = "ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shMediFvs3', () async {
      String unicode = "‍ᠱ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('shFinaFvs3', () async {
      String unicode = "‍ᠱ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tIsol', () async {
      String unicode = "ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tInit', () async {
      String unicode = "ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tMedi', () async {
      String unicode = "‍ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tFina', () async {
      String unicode = "‍ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tIsolFvs1', () async {
      String unicode = "ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tInitFvs1', () async {
      String unicode = "ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tMediFvs1', () async {
      String unicode = "‍ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tFinaFvs1', () async {
      String unicode = "‍ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tIsolFvs2', () async {
      String unicode = "ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tInitFvs2', () async {
      String unicode = "ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tMediFvs2', () async {
      String unicode = "‍ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tFinaFvs2', () async {
      String unicode = "‍ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tIsolFvs3', () async {
      String unicode = "ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tInitFvs3', () async {
      String unicode = "ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tMediFvs3', () async {
      String unicode = "‍ᠲ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tFinaFvs3', () async {
      String unicode = "‍ᠲ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dIsol', () async {
      String unicode = "ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dInit', () async {
      String unicode = "ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dMedi', () async {
      String unicode = "‍ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dFina', () async {
      String unicode = "‍ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dIsolFvs1', () async {
      String unicode = "ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dInitFvs1', () async {
      String unicode = "ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dMediFvs1', () async {
      String unicode = "‍ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dFinaFvs1', () async {
      String unicode = "‍ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dIsolFvs2', () async {
      String unicode = "ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dInitFvs2', () async {
      String unicode = "ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dMediFvs2', () async {
      String unicode = "‍ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dFinaFvs2', () async {
      String unicode = "‍ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dIsolFvs3', () async {
      String unicode = "ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dInitFvs3', () async {
      String unicode = "ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dMediFvs3', () async {
      String unicode = "‍ᠳ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('dFinaFvs3', () async {
      String unicode = "‍ᠳ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chIsol', () async {
      String unicode = "ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chInit', () async {
      String unicode = "ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chMedi', () async {
      String unicode = "‍ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chFina', () async {
      String unicode = "‍ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chIsolFvs1', () async {
      String unicode = "ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chInitFvs1', () async {
      String unicode = "ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chMediFvs1', () async {
      String unicode = "‍ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chFinaFvs1', () async {
      String unicode = "‍ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chIsolFvs2', () async {
      String unicode = "ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chInitFvs2', () async {
      String unicode = "ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chMediFvs2', () async {
      String unicode = "‍ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chFinaFvs2', () async {
      String unicode = "‍ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chIsolFvs3', () async {
      String unicode = "ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chInitFvs3', () async {
      String unicode = "ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chMediFvs3', () async {
      String unicode = "‍ᠴ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chFinaFvs3', () async {
      String unicode = "‍ᠴ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jIsol', () async {
      String unicode = "ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jInit', () async {
      String unicode = "ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jMedi', () async {
      String unicode = "‍ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jFina', () async {
      String unicode = "‍ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jIsolFvs1', () async {
      String unicode = "ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jInitFvs1', () async {
      String unicode = "ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jMediFvs1', () async {
      String unicode = "‍ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jFinaFvs1', () async {
      String unicode = "‍ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jIsolFvs2', () async {
      String unicode = "ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jInitFvs2', () async {
      String unicode = "ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jMediFvs2', () async {
      String unicode = "‍ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jFinaFvs2', () async {
      String unicode = "‍ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jIsolFvs3', () async {
      String unicode = "ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jInitFvs3', () async {
      String unicode = "ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jMediFvs3', () async {
      String unicode = "‍ᠵ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('jFinaFvs3', () async {
      String unicode = "‍ᠵ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yIsol', () async {
      String unicode = "ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yInit', () async {
      String unicode = "ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yMedi', () async {
      String unicode = "‍ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yFina', () async {
      String unicode = "‍ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yIsolFvs1', () async {
      String unicode = "ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yInitFvs1', () async {
      String unicode = "ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yMediFvs1', () async {
      String unicode = "‍ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yFinaFvs1', () async {
      String unicode = "‍ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yIsolFvs2', () async {
      String unicode = "ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yInitFvs2', () async {
      String unicode = "ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yMediFvs2', () async {
      String unicode = "‍ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yFinaFvs2', () async {
      String unicode = "‍ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yIsolFvs3', () async {
      String unicode = "ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yInitFvs3', () async {
      String unicode = "ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yMediFvs3', () async {
      String unicode = "‍ᠶ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('yFinaFvs3', () async {
      String unicode = "‍ᠶ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rIsol', () async {
      String unicode = "ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rInit', () async {
      String unicode = "ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rMedi', () async {
      String unicode = "‍ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rFina', () async {
      String unicode = "‍ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rIsolFvs1', () async {
      String unicode = "ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rInitFvs1', () async {
      String unicode = "ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rMediFvs1', () async {
      String unicode = "‍ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rFinaFvs1', () async {
      String unicode = "‍ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rIsolFvs2', () async {
      String unicode = "ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rInitFvs2', () async {
      String unicode = "ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rMediFvs2', () async {
      String unicode = "‍ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rFinaFvs2', () async {
      String unicode = "‍ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rIsolFvs3', () async {
      String unicode = "ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rInitFvs3', () async {
      String unicode = "ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rMediFvs3', () async {
      String unicode = "‍ᠷ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('rFinaFvs3', () async {
      String unicode = "‍ᠷ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wIsol', () async {
      String unicode = "ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wInit', () async {
      String unicode = "ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wMedi', () async {
      String unicode = "‍ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wFina', () async {
      String unicode = "‍ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wIsolFvs1', () async {
      String unicode = "ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wInitFvs1', () async {
      String unicode = "ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wMediFvs1', () async {
      String unicode = "‍ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wFinaFvs1', () async {
      String unicode = "‍ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wIsolFvs2', () async {
      String unicode = "ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wInitFvs2', () async {
      String unicode = "ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wMediFvs2', () async {
      String unicode = "‍ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wFinaFvs2', () async {
      String unicode = "‍ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wIsolFvs3', () async {
      String unicode = "ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wInitFvs3', () async {
      String unicode = "ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wMediFvs3', () async {
      String unicode = "‍ᠸ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('wFinaFvs3', () async {
      String unicode = "‍ᠸ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fIsol', () async {
      String unicode = "ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fInit', () async {
      String unicode = "ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fMedi', () async {
      String unicode = "‍ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fFina', () async {
      String unicode = "‍ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fIsolFvs1', () async {
      String unicode = "ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fInitFvs1', () async {
      String unicode = "ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fMediFvs1', () async {
      String unicode = "‍ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fFinaFvs1', () async {
      String unicode = "‍ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fIsolFvs2', () async {
      String unicode = "ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fInitFvs2', () async {
      String unicode = "ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fMediFvs2', () async {
      String unicode = "‍ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fFinaFvs2', () async {
      String unicode = "‍ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fIsolFvs3', () async {
      String unicode = "ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fInitFvs3', () async {
      String unicode = "ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fMediFvs3', () async {
      String unicode = "‍ᠹ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('fFinaFvs3', () async {
      String unicode = "‍ᠹ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kIsol', () async {
      String unicode = "ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kInit', () async {
      String unicode = "ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kMedi', () async {
      String unicode = "‍ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kFina', () async {
      String unicode = "‍ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kIsolFvs1', () async {
      String unicode = "ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kInitFvs1', () async {
      String unicode = "ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kMediFvs1', () async {
      String unicode = "‍ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kFinaFvs1', () async {
      String unicode = "‍ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kIsolFvs2', () async {
      String unicode = "ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kInitFvs2', () async {
      String unicode = "ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kMediFvs2', () async {
      String unicode = "‍ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kFinaFvs2', () async {
      String unicode = "‍ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kIsolFvs3', () async {
      String unicode = "ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kInitFvs3', () async {
      String unicode = "ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kMediFvs3', () async {
      String unicode = "‍ᠺ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('kFinaFvs3', () async {
      String unicode = "‍ᠺ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khIsol', () async {
      String unicode = "ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khInit', () async {
      String unicode = "ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khMedi', () async {
      String unicode = "‍ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khFina', () async {
      String unicode = "‍ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khIsolFvs1', () async {
      String unicode = "ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khInitFvs1', () async {
      String unicode = "ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khMediFvs1', () async {
      String unicode = "‍ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khFinaFvs1', () async {
      String unicode = "‍ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khIsolFvs2', () async {
      String unicode = "ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khInitFvs2', () async {
      String unicode = "ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khMediFvs2', () async {
      String unicode = "‍ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khFinaFvs2', () async {
      String unicode = "‍ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khIsolFvs3', () async {
      String unicode = "ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khInitFvs3', () async {
      String unicode = "ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khMediFvs3', () async {
      String unicode = "‍ᠻ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('khFinaFvs3', () async {
      String unicode = "‍ᠻ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsIsol', () async {
      String unicode = "ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsInit', () async {
      String unicode = "ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsMedi', () async {
      String unicode = "‍ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsFina', () async {
      String unicode = "‍ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsIsolFvs1', () async {
      String unicode = "ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsInitFvs1', () async {
      String unicode = "ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsMediFvs1', () async {
      String unicode = "‍ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsFinaFvs1', () async {
      String unicode = "‍ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsIsolFvs2', () async {
      String unicode = "ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsInitFvs2', () async {
      String unicode = "ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsMediFvs2', () async {
      String unicode = "‍ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsFinaFvs2', () async {
      String unicode = "‍ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsIsolFvs3', () async {
      String unicode = "ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsInitFvs3', () async {
      String unicode = "ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsMediFvs3', () async {
      String unicode = "‍ᠼ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('tsFinaFvs3', () async {
      String unicode = "‍ᠼ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zIsol', () async {
      String unicode = "ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zInit', () async {
      String unicode = "ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zMedi', () async {
      String unicode = "‍ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zFina', () async {
      String unicode = "‍ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zIsolFvs1', () async {
      String unicode = "ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zInitFvs1', () async {
      String unicode = "ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zMediFvs1', () async {
      String unicode = "‍ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zFinaFvs1', () async {
      String unicode = "‍ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zIsolFvs2', () async {
      String unicode = "ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zInitFvs2', () async {
      String unicode = "ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zMediFvs2', () async {
      String unicode = "‍ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zFinaFvs2', () async {
      String unicode = "‍ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zIsolFvs3', () async {
      String unicode = "ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zInitFvs3', () async {
      String unicode = "ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zMediFvs3', () async {
      String unicode = "‍ᠽ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zFinaFvs3', () async {
      String unicode = "‍ᠽ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaIsol', () async {
      String unicode = "ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaInit', () async {
      String unicode = "ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaMedi', () async {
      String unicode = "‍ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaFina', () async {
      String unicode = "‍ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaIsolFvs1', () async {
      String unicode = "ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaInitFvs1', () async {
      String unicode = "ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaMediFvs1', () async {
      String unicode = "‍ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaFinaFvs1', () async {
      String unicode = "‍ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaIsolFvs2', () async {
      String unicode = "ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaInitFvs2', () async {
      String unicode = "ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaMediFvs2', () async {
      String unicode = "‍ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaFinaFvs2', () async {
      String unicode = "‍ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaIsolFvs3', () async {
      String unicode = "ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaInitFvs3', () async {
      String unicode = "ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaMediFvs3', () async {
      String unicode = "‍ᠾ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('haaFinaFvs3', () async {
      String unicode = "‍ᠾ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrIsol', () async {
      String unicode = "ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrInit', () async {
      String unicode = "ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrMedi', () async {
      String unicode = "‍ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrFina', () async {
      String unicode = "‍ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrIsolFvs1', () async {
      String unicode = "ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrInitFvs1', () async {
      String unicode = "ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrMediFvs1', () async {
      String unicode = "‍ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrFinaFvs1', () async {
      String unicode = "‍ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrIsolFvs2', () async {
      String unicode = "ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrInitFvs2', () async {
      String unicode = "ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrMediFvs2', () async {
      String unicode = "‍ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrFinaFvs2', () async {
      String unicode = "‍ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrIsolFvs3', () async {
      String unicode = "ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrInitFvs3', () async {
      String unicode = "ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrMediFvs3', () async {
      String unicode = "‍ᠿ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zrFinaFvs3', () async {
      String unicode = "‍ᠿ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhIsol', () async {
      String unicode = "ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhInit', () async {
      String unicode = "ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhMedi', () async {
      String unicode = "‍ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhFina', () async {
      String unicode = "‍ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhIsolFvs1', () async {
      String unicode = "ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhInitFvs1', () async {
      String unicode = "ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhMediFvs1', () async {
      String unicode = "‍ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhFinaFvs1', () async {
      String unicode = "‍ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhIsolFvs2', () async {
      String unicode = "ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhInitFvs2', () async {
      String unicode = "ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhMediFvs2', () async {
      String unicode = "‍ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhFinaFvs2', () async {
      String unicode = "‍ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhIsolFvs3', () async {
      String unicode = "ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhInitFvs3', () async {
      String unicode = "ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhMediFvs3', () async {
      String unicode = "‍ᡀ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('lhFinaFvs3', () async {
      String unicode = "‍ᡀ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiIsol', () async {
      String unicode = "ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiInit', () async {
      String unicode = "ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiMedi', () async {
      String unicode = "‍ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiFina', () async {
      String unicode = "‍ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiIsolFvs1', () async {
      String unicode = "ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiInitFvs1', () async {
      String unicode = "ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiMediFvs1', () async {
      String unicode = "‍ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiFinaFvs1', () async {
      String unicode = "‍ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiIsolFvs2', () async {
      String unicode = "ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiInitFvs2', () async {
      String unicode = "ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiMediFvs2', () async {
      String unicode = "‍ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiFinaFvs2', () async {
      String unicode = "‍ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiIsolFvs3', () async {
      String unicode = "ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiInitFvs3', () async {
      String unicode = "ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiMediFvs3', () async {
      String unicode = "‍ᡁ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('zhiFinaFvs3', () async {
      String unicode = "‍ᡁ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiIsol', () async {
      String unicode = "ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiInit', () async {
      String unicode = "ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiMedi', () async {
      String unicode = "‍ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiFina', () async {
      String unicode = "‍ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiIsolFvs1', () async {
      String unicode = "ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiInitFvs1', () async {
      String unicode = "ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiMediFvs1', () async {
      String unicode = "‍ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiFinaFvs1', () async {
      String unicode = "‍ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiIsolFvs2', () async {
      String unicode = "ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiInitFvs2', () async {
      String unicode = "ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiMediFvs2', () async {
      String unicode = "‍ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiFinaFvs2', () async {
      String unicode = "‍ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiIsolFvs3', () async {
      String unicode = "ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiInitFvs3', () async {
      String unicode = "ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiMediFvs3', () async {
      String unicode = "‍ᡂ‍";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('chiFinaFvs3', () async {
      String unicode = "‍ᡂ";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "";
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Punctuation', () {
    test('punctuationBirga', () async {
      int unicode = Unicode.MONGOLIAN_BIRGA;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.BIRGA);
      expect(expected, result);
    });

    test('punctuationEllipsis', () async {
      int unicode = Unicode.MONGOLIAN_ELLIPSIS;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.ELLIPSIS);
      expect(expected, result);
    });

    test('punctuationComma', () async {
      int unicode = Unicode.MONGOLIAN_COMMA;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.COMMA);
      expect(expected, result);
    });

    test('punctuationFullStop', () async {
      int unicode = Unicode.MONGOLIAN_FULL_STOP;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.FULL_STOP);
      expect(expected, result);
    });
    test('punctuationColon', () async {
      int unicode = Unicode.MONGOLIAN_COLON;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.COLON);
      expect(expected, result);
    });

    test('punctuationFourDots', () async {
      int unicode = Unicode.MONGOLIAN_FOUR_DOTS;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.FOUR_DOTS);
      expect(expected, result);
    });

    test('punctuationTodoSoftHyphen', () async {
      int unicode = Unicode.MONGOLIAN_TODO_SOFT_HYPHEN;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      int unicode = Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected =
      String.fromCharCode(Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('punctuationManchuComma', () async {
      int unicode = Unicode.MONGOLIAN_MANCHU_COMMA;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.MANCHU_COMMA);
      expect(expected, result);
    });

    test('punctuationManchuFullStop', () async {
      int unicode = Unicode.MONGOLIAN_MANCHU_FULL_STOP;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('punctuationNirugu', () async {
      int unicode = Unicode.MONGOLIAN_NIRUGU;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.NIRUGU);
      expect(expected, result);
    });

    test('punctuationMiddleDot', () async {
      int unicode = Unicode.MIDDLE_DOT;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.MIDDLE_DOT);
      expect(expected, result);
    });

    test('punctuationZero', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_ZERO;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.ZERO);
      expect(expected, result);
    });

    test('punctuationOne', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_ONE;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.ONE);
      expect(expected, result);
    });

    test('punctuationTwo', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_TWO;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.TWO);
      expect(expected, result);
    });

    test('punctuationThree', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_THREE;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.THREE);
      expect(expected, result);
    });

    test('punctuationFour', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_FOUR;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.FOUR);
      expect(expected, result);
    });

    test('punctuationFive', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_FIVE;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.FIVE);
      expect(expected, result);
    });

    test('punctuationSix', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_SIX;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.SIX);
      expect(expected, result);
    });

    test('punctuationSeven', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_SEVEN;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.SEVEN);
      expect(expected, result);
    });

    test('punctuationEight', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_EIGHT;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.EIGHT);
      expect(expected, result);
    });

    test('punctuationNine', () async {
      int unicode = Unicode.MONGOLIAN_DIGIT_NINE;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.NINE);
      expect(expected, result);
    });

    test('punctuationQuestionExclamation', () async {
      int unicode = Unicode.QUESTION_EXCLAMATION_MARK;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.QUESTION_EXCLAMATION);
      expect(expected, result);
    });

    test('punctuationExclamationQuestion', () async {
      int unicode = Unicode.EXCLAMATION_QUESTION_MARK;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.EXCLAMATION_QUESTION);
      expect(expected, result);
    });

    test('punctuationExclamation', () async {
      int unicode = Unicode.VERTICAL_EXCLAMATION_MARK;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.EXCLAMATION);
      expect(expected, result);
    });

    test('punctuationQuestion', () async {
      int unicode = Unicode.VERTICAL_QUESTION_MARK;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.QUESTION);
      expect(expected, result);
    });

    test('punctuationSemicolon', () async {
      int unicode = Unicode.VERTICAL_SEMICOLON;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.SEMICOLON);
      expect(expected, result);
    });

    test('punctuationLeftParenthesis', () async {
      int unicode = Unicode.VERTICAL_LEFT_PARENTHESIS;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationRightParenthesis', () async {
      int unicode = Unicode.VERTICAL_RIGHT_PARENTHESIS;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationLeftAngleBracket', () async {
      int unicode = Unicode.VERTICAL_LEFT_ANGLE_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightAngleBracket', () async {
      int unicode = Unicode.VERTICAL_RIGHT_ANGLE_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftBracket', () async {
      int unicode = Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected =
      String.fromCharCode(Menksoft.LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightBracket', () async {
      int unicode = Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected =
      String.fromCharCode(Menksoft.RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      int unicode = Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      int unicode = Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected =
      String.fromCharCode(Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      int unicode = Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      int unicode = Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected =
      String.fromCharCode(Menksoft.RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationFullWidthComma', () async {
      int unicode = Unicode.VERTICAL_COMMA;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.FULL_WIDTH_COMMA);
      expect(expected, result);
    });

    test('punctuationX', () async {
      int unicode = Unicode.PUNCTUATION_X;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.X);
      expect(expected, result);
    });

    test('punctuationReferenceMark', () async {
      int unicode = Unicode.REFERENCE_MARK;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.REFERENCE_MARK);
      expect(expected, result);
    });

    test('punctuationEnDash', () async {
      int unicode = Unicode.VERTICAL_EN_DASH;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.EN_DASH);
      expect(expected, result);
    });

    test('punctuationEmDash', () async {
      int unicode = Unicode.VERTICAL_EM_DASH;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.EM_DASH);
      expect(expected, result);
    });

    test('punctuationSuffixSpace', () async {
      int unicode = Unicode.NNBS;
      String result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      String expected = String.fromCharCode(Menksoft.SUFFIX_SPACE);
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Words', () {
    test('bichigWord', () async {
      String unicode = "ᠪᠢᠴᠢᠭ"; // bichig
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C1\uE27F\uE317\uE27E\uE2E8";
      expect(expected, result);
    });

    test('egeshigWord', () async {
      String unicode = "ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ"; // EGESIG (NNBSP) INU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3";
      expect(expected, result);
    });

    test('bujigWord', () async {
      String unicode =
          "ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ"; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('chirigWord', () async {
      String unicode = "ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ"; // CHIRIG (NNBSP) MANI
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B";
      expect(expected, result);
    });

    test('egchiWord', () async {
      String unicode = "ᠡᠭᠴᠡ"; // EGCHI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2F0\uE317\uE273";
      expect(expected, result);
    });

    test('qugjimWord', () async {
      String unicode =
          "ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ"; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('buridgelWord', () async {
      String unicode = "ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ"; // BURIDGEL (NNBSP) IYEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5";
      expect(expected, result);
    });

    test('sedqilWord', () async {
      String unicode = "ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ"; // SEDQIL (NNBSP) MINI
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B";
      expect(expected, result);
    });

    test('uiledburiWord', () async {
      String unicode = "ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ"; // UILEDBURI (NNBSP) DU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3";
      expect(expected, result);
    });

    test('jeligudqenWord', () async {
      String unicode = "ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ"; // JELIGUDQEN (NNBSP) U
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3";
      expect(expected, result);
    });

    test('manggalWord', () async {
      String unicode =
          "ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ"; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('dengWord', () async {
      String unicode = "ᠳ᠋ᠦᠩ ᠢ"; // D(FVS1)UNG (NNBSP) I
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE310\uE2A9\uE2BB\uE263\uE282";
      expect(expected, result);
    });

    test('sodnamWord', () async {
      String unicode =
          "ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ"; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('lhagbaWord', () async {
      String unicode = "ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ"; // LHAGBA (NNBSP) LUG(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A";
      expect(expected, result);
    });

    test('chebegmedWord', () async {
      String unicode = "ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ"; // CHEBEGMED (NNBSP) LUGE
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275";
      expect(expected, result);
    });

    test('tsementWord', () async {
      String unicode = "ᠼᠧᠮᠧᠨᠲ ᠲᠠᠶᠢᠭᠠᠨ"; // TSEMENT (NNBSP) TAYIGAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('uniyeWord', () async {
      String unicode = "ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ"; // UNIY(MVS)E (NNBSP) TEYIGEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('qoyinaWord', () async {
      String unicode = "ᠬᠣᠶᠢᠨ᠎ᠠ"; // QOYIN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A";
      expect(expected, result);
    });

    test('angnaWord', () async {
      String unicode = "ᠠᠩᠨ᠎ᠠ"; // ANGN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE266\uE2BE\uE2B6\uE26A";
      expect(expected, result);
    });

    test('chinggaWord', () async {
      String unicode = "ᠴᠢᠩᠭ᠎ᠠ"; // CHINGG(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE315\uE27E\uE2BC\uE2E9\uE26A";
      expect(expected, result);
    });

    test('chingalaquWord', () async {
      String unicode = "ᠴᠢᠩᠭᠠᠯᠠᠬᠤ"; // CHINGGALAQU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D";
      expect(expected, result);
    });

    test('daljiygsanWord', () async {
      String unicode = "ᠳᠠᠯᠵᠢᠶᠭᠰᠠᠨ"; // DALJIYGSAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5";
      expect(expected, result);
    });

    test('ilbigchiWord', () async {
      String unicode = "ᠢᠯᠪᠢᠭᠴᠢ"; // ILBIGCHI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B";
      expect(expected, result);
    });

    test('bichigchiWord', () async {
      String unicode = "ᠪᠢᠴᠢᠭᠴᠢ"; // BICHIGCHI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B";
      expect(expected, result);
    });

    test('sigsiglequWord', () async {
      String unicode = "ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ"; // SIGSIGLEQU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2FD\uE27E\uE2EF\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7";
      expect(expected, result);
    });

    test('diglimsigsenWord', () async {
      String unicode = "ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ"; // DIGLIMSIGSEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EF\uE301\uE276\uE2B5";
      expect(expected, result);
    });

    test('chigigligWord', () async {
      String unicode = "ᠴᠢᠭᠢᠭᠯᠢᠭ"; // CHIGIGLIG
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8";
      expect(expected, result);
    });

    test('monggeWord', () async {
      String unicode = "ᠮᠥᠩᠭᠡ"; // MONGGE
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2F2\uE29C\uE2BD\uE2EB\uE275";
      expect(expected, result);
    });

    test('kinoWord', () async {
      String unicode = "ᠺᠢᠨᠣ᠋"; // KINO(FVS1)
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE333\uE27F\uE2B9\uE286";
      expect(expected, result);
    });

    test('bayigulquWord', () async {
      String unicode = "ᠪᠠᠶᠢᠭᠤᠯᠬᠤ"; // BAYIGULQU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D";
      expect(expected, result);
    });

    test('gregWord', () async {
      String unicode = "ᠭᠷᠧᠭ"; // GREG
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2E3\uE327\uE2B0\uE2E8";
      expect(expected, result);
    });

    test('motorWord', () async {
      String unicode = "ᠮᠣᠲ᠋ᠣᠷ"; // MOT(FVS1)OR
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2F2\uE289\uE30D\uE289\uE325";
      expect(expected, result);
    });

    test('neigemligWord', () async {
      String unicode = "ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ"; // NEYIGEMLIG
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8";
      expect(expected, result);
    });

    test('mongolWord', () async {
      String unicode = "ᠮᠣᠩᠭᠣᠯ"; // MONGGOL
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9";
      expect(expected, result);
    });

    test('yatugaWord', () async {
      String unicode = "ᠶᠠᠲᠤᠭ᠎ᠠ"; // YATUG(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A";
      expect(expected, result);
    });

    test('olaganaWord', () async {
      String unicode = "ᠤᠯᠠᠭᠠᠨ᠎ᠠ"; // OLAGAN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A";
      expect(expected, result);
    });

    test('bichiglequWord', () async {
      String unicode = "ᠪᠢᠴᠢᠭᠯᠡᠬᠦ"; // BICHIGLEQU
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7";
      expect(expected, result);
    });

    test('programWord', () async {
      String unicode = "ᠫᠷᠣᠭ᠍ᠷᠠᠮ"; // PROG(FVS3)RAM
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3";
      expect(expected, result);
    });

    test('kartWord', () async {
      String unicode = "ᠺᠠᠷᠲ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE333\uE26D\uE326\uE30A";
      expect(expected, result);
    });

    test('dungnelteWord', () async {
      String unicode = "ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ"; // D(FVS1)UNGNELTE
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273";
      expect(expected, result);
    });

    test('gramWord', () async {
      String unicode = "ᠭᠷᠠᠮ"; // GRAM
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2E3\uE327\uE26C\uE2F3";
      expect(expected, result);
    });

    test('minggaWord', () async {
      String unicode = "ᠮᠢᠩᠭ᠎ᠠ"; // MINGG(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2F1\uE27E\uE2BC\uE2E9\uE26A";
      expect(expected, result);
    });

    test('naimaWord', () async {
      String unicode = "ᠨᠠ\u200Dᠢᠮᠠ"; // NA(ZWJ)IMA
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2B1\uE26C\uE27E\uE2F5\uE268";
      expect(expected, result);
    });

    test('naimaWordMenksoftVersion', () async {
      String unicode =
          "ᠨᠠᠢ\u180Cᠮᠠ"; // NAI(FVS2)MA (not defined in Unicode 10.0)
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2B1\uE26C\uE27E\uE2F5\uE268";
      expect(expected, result);
    });

    test('naijaWord', () async {
      String unicode = "ᠨᠠᠢᠵᠠ"; // NAIJA
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2B1\uE26C\uE281\uE31D\uE268";
      expect(expected, result);
    });

    test('nayijaWord', () async {
      String unicode = "ᠨᠠᠶᠢᠵᠠ"; // NAYIJA
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2B1\uE26C\uE321\uE27E\uE31D\uE268";
      expect(expected, result);
    });

    test('bainaWord', () async {
      String unicode = "ᠪᠠᠢᠨ᠎ᠠ"; // BAIN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C1\uE26D\uE281\uE2B6\uE26A";
      expect(expected, result);
    });

    test('bayinaWord', () async {
      String unicode = "ᠪᠠᠶᠢᠨ᠎ᠠ"; // BAYIN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A";
      expect(expected, result);
    });

    test('baiinaWord', () async {
      String unicode = "ᠪᠠᠢᠢᠨ᠎ᠠ"; // BAIIN(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A";
      expect(expected, result);
    });

    test('saihanWord', () async {
      String unicode = "ᠰᠠᠶᠢᠬᠠᠨ"; // SAYIHAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5";
      expect(expected, result);
    });

    test('sayihanWord', () async {
      String unicode = "ᠰᠠᠶ\u180Bᠢᠬᠠᠨ"; // SAY(FVS1)IHAN
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5";
      expect(expected, result);
    });

    test('sayiWord', () async {
      String unicode = "ᠰᠠᠶ\u180Bᠢ"; // SAY(FVS1)I
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FD\uE26C\uE320\uE27B";
      expect(expected, result);
    });

    test('taiWord', () async {
      String unicode = "ᠲᠠᠢ"; // TAI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE308\uE26C\uE27B";
      expect(expected, result);
    });

    test('namayiWord', () async {
      String unicode = "ᠨᠠᠮᠠᠶᠢ"; // NAMAYI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B";
      expect(expected, result);
    });

    test('eyimuWord', () async {
      String unicode = "ᠡᠶᠢᠮᠦ"; // EYIMU
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE321\uE27E\uE2F5\uE2A3";
      expect(expected, result);
    });

    test('soyolWord', () async {
      String unicode = "ᠰᠣᠶᠣᠯ"; // SOYOL
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FE\uE289\uE320\uE289\uE2F9";
      expect(expected, result);
    });

    test('buuWord', () async {
      String unicode = "ᠪᠦᠦ"; // BUU
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2C2\uE2AC\uE2A3";
      expect(expected, result);
    });

    test('quuWord', () async {
      String unicode = "ᠬᠦᠦ"; // QUU
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2D4\uE2AA\uE2A3";
      expect(expected, result);
    });

    test('qeuqenWord', () async {
      String unicode = "ᠬᠡᠦᠬᠡᠳ"; // QEUQEN
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311";
      expect(expected, result);
    });

    test('qeduyinWord', () async {
      String unicode = "ᠬᠡᠳᠦᠶᠢᠨ"; // QEDUYIN
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5";
      expect(expected, result);
    });

    test('qeduinWord', () async {
      String unicode = "ᠬᠡᠳᠦᠢᠨ"; // QEDUIN
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5";
      expect(expected, result);
    });

    test('anggliWord', () async {
      String unicode = "ᠠᠩᠭᠯᠢ"; // ANGGLI
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE266\uE2BD\uE2EB\uE2FC\uE27B";
      expect(expected, result);
    });

    test('asiglajuWord', () async {
      String unicode = "ᠠᠰᠢᠭᠯᠠᠵᠤ"; // ASIGLAJU
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D";
      expect(expected, result);
    });

    test('narangerelWord', () async {
      String unicode = "ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ"; // NARANGEREL
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9";
      expect(expected, result);
    });

    test('cholmonodoWord', () async {
      String unicode = "ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ"; // CHOLMON(ZWJ)O(FVS1)DO
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285";
      expect(expected, result);
    });

    test('cholmonodo2Word', () async {
      String unicode = "ᠴᠣᠯᠮᠣᠨᠣ᠋ᠳᠣ"; // CHOLMONO(FVS1)DO
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285";
      expect(expected, result);
    });

    test('bayanunderWord', () async {
      String unicode = "ᠪᠠᠶᠠᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ"; // BAYAN(ZWJ)U(FVS1)NDUR
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325";
      expect(expected, result);
    });

    test('sodobiligWord', () async {
      String unicode = "ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌"; // SODOBILIG(FVS2)
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8";
      expect(expected, result);
    });

    test('anggilumchechegWord', () async {
      String unicode = "ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ"; // ANGGILUMCHECHEG
      String result = convertUnicodeToMenksoft(unicode);
      String expected =
          "\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8";
      expect(expected, result);
    });

    test('chechegmaWord', () async {
      String unicode = "ᠴᠡᠴᠡᠭᠮ᠎ᠡ"; // CHECHEGM(MVS)A
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274";
      expect(expected, result);
    });

    test('sigDefaultWord', () async {
      String unicode = "ᠰᠢᠭ"; // SIG
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FD\uE27E\uE2E8";
      expect(expected, result);
    });

    test('sigSpecifiedWord', () async {
      String unicode = "ᠰᠢᠭ᠋"; // SIG(FVS1)
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2FD\uE27E\uE2E7";
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Suffixes', () {
    test('yinSuffix', () async {
      String unicode = " ᠶᠢᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE321\uE27E\uE2B5";
      expect(expected, result);
    });

    test('unSuffix', () async {
      String unicode = " ᠤᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE292\uE2B5";
      expect(expected, result);
    });

    test('uenSuffix', () async {
      String unicode = " ᠦᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2AC\uE2B5";
      expect(expected, result);
    });

    test('uSuffix', () async {
      String unicode = " ᠤ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE28D";
      expect(expected, result);
    });

    test('ueSuffix', () async {
      String unicode = " ᠦ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2A3";
      expect(expected, result);
    });

    test('iSuffix', () async {
      String unicode = " ᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE282";
      expect(expected, result);
    });

    test('yiSuffix', () async {
      String unicode = " ᠶᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE321\uE27B";
      expect(expected, result);
    });

    test('duSuffix', () async {
      String unicode = " ᠳᠤ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE28D";
      expect(expected, result);
    });

    test('dueSuffix', () async {
      String unicode = " ᠳᠦ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE2A3";
      expect(expected, result);
    });

    test('tuSuffix', () async {
      String unicode = " ᠲᠤ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE309\uE28D";
      expect(expected, result);
    });

    test('tueSuffix', () async {
      String unicode = " ᠲᠦ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE309\uE2A3";
      expect(expected, result);
    });

    test('durSuffix', () async {
      String unicode = " ᠳᠤᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE291\uE325";
      expect(expected, result);
    });

    test('duerSuffix', () async {
      String unicode = " ᠳᠦᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE2AB\uE325";
      expect(expected, result);
    });

    test('turSuffix', () async {
      String unicode = " ᠲᠤᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE309\uE291\uE325";
      expect(expected, result);
    });

    test('tuerSuffix', () async {
      String unicode = " ᠲᠦᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE309\uE2AB\uE325";
      expect(expected, result);
    });

    test('daqiSuffix', () async {
      String unicode = " ᠳᠠᠬᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE26C\uE2DA\uE27C";
      expect(expected, result);
    });

    test('deqiSuffix', () async {
      String unicode = " ᠳᠡᠬᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE276\uE2DA\uE27C";
      expect(expected, result);
    });

    test('achaSuffix', () async {
      String unicode = " ᠠᠴᠠ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE267\uE317\uE268";
      expect(expected, result);
    });

    test('echeSuffix', () async {
      String unicode = " ᠡᠴᠡ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE271\uE317\uE273";
      expect(expected, result);
    });

    test('barSuffix', () async {
      String unicode = " ᠪᠠᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2C1\uE26D\uE325";
      expect(expected, result);
    });

    test('berSuffix', () async {
      String unicode = " ᠪᠡᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2C1\uE277\uE325";
      expect(expected, result);
    });

    test('iyarSuffix', () async {
      String unicode = " ᠢᠶᠠᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE280\uE321\uE26C\uE325";
      expect(expected, result);
    });

    test('iyerSuffix', () async {
      String unicode = " ᠢᠶᠡᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE280\uE321\uE276\uE325";
      expect(expected, result);
    });

    test('taiSuffix', () async {
      String unicode = " ᠲᠠᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE26C\uE27B";
      expect(expected, result);
    });

    test('teiSuffix', () async {
      String unicode = " ᠲᠡᠢ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE276\uE27B";
      expect(expected, result);
    });

    test('lugaSuffix', () async {
      String unicode = " ᠯᠤᠭ᠎ᠠ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2F8\uE291\uE2E9\uE26A";
      expect(expected, result);
    });

    test('luegeSuffix', () async {
      String unicode = " ᠯᠦᠭᠡ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2F8\uE2AB\uE2EB\uE275";
      expect(expected, result);
    });

    test('banSuffix', () async {
      String unicode = " ᠪᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2C1\uE26D\uE2B5";
      expect(expected, result);
    });

    test('benSuffix', () async {
      String unicode = " ᠪᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2C1\uE277\uE2B5";
      expect(expected, result);
    });

    test('iyanSuffix', () async {
      String unicode = " ᠢᠶᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE280\uE321\uE26C\uE2B5";
      expect(expected, result);
    });

    test('iyenSuffix', () async {
      String unicode = " ᠢᠶᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE280\uE321\uE276\uE2B5";
      expect(expected, result);
    });

    test('yuganSuffix', () async {
      String unicode = " ᠶᠤᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('yuegenSuffix', () async {
      String unicode = " ᠶᠦᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('daganSuffix', () async {
      String unicode = " ᠳᠠᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('degenSuffix', () async {
      String unicode = " ᠳᠡᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE276\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('taganSuffix', () async {
      String unicode = " ᠲᠠᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('tegenSuffix', () async {
      String unicode = " ᠲᠡᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE276\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('achaganSuffix', () async {
      String unicode = " ᠠᠴᠠᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('echegenSuffix', () async {
      String unicode = " ᠡᠴᠡᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('taiganSuffix', () async {
      String unicode = " ᠲᠠᠢᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('tayiganSuffix', () async {
      String unicode = " ᠲᠠᠶᠢᠭᠠᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5";
      expect(expected, result);
    });

    test('teigenSuffix', () async {
      String unicode = " ᠲᠡᠢᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('teyigenSuffix', () async {
      String unicode = " ᠲᠡᠶᠢᠭᠡᠨ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5";
      expect(expected, result);
    });

    test('udSuffix', () async {
      String unicode = " ᠤᠳ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE292\uE311";
      expect(expected, result);
    });

    test('uedSuffix', () async {
      String unicode = " ᠦᠳ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2AC\uE311";
      expect(expected, result);
    });

    test('nugudSuffix', () async {
      String unicode = " ᠨᠤᠭᠤᠳ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2B3\uE291\uE2EC\uE291\uE311";
      expect(expected, result);
    });

    test('nueguedSuffix', () async {
      String unicode = " ᠨᠦᠭᠦᠳ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311";
      expect(expected, result);
    });

    test('narSuffix', () async {
      String unicode = " ᠨᠠᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2B1\uE26C\uE325";
      expect(expected, result);
    });

    test('nerSuffix', () async {
      String unicode = " ᠨᠡᠷ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2B1\uE276\uE325";
      expect(expected, result);
    });

    test('uuSuffix', () async {
      String unicode = " ᠤᠤ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE292\uE28D";
      expect(expected, result);
    });

    test('ueueSuffix', () async {
      String unicode = " ᠦᠦ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE2AC\uE2A3";
      expect(expected, result);
    });

    test('daSuffix', () async {
      String unicode = " ᠳᠠ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE268";
      expect(expected, result);
    });

    test('deSuffix', () async {
      String unicode = " ᠳᠡ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE263\uE310\uE273";
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Todo Script', () {
    test('todoAllTodoCode', () async {
      String unicode = "ᡐᡆᡑᡆ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "ᡐᡆᡑᡆ";
      expect(expected, result);
    });

    test('todoMixedTodoMongolCode', () async {
      String unicode = "ᠰᡇᠷᡋᡇᠯᡓᡅᠯᠠᡋᠠ"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "ᠰᡇᠷᡋᡇᠯᡓᡅᠯᠠᡋᠠ";
      expect(expected, result);
    });

    test('todoZWJ', () async {
      String unicode = "\u200Dᡐ\u200D"; //
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\u200Dᡐ\u200D";
      expect(expected, result);
    });

    test('todoFVS', () async {
      String unicode = "\u1847\u180B";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\u1847\u180B";
      expect(expected, result);
    });

    test('todoZwjFvsMix', () async {
      String unicode = "\u200D\u1847\u180B\u200D";
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\u200D\u1847\u180B\u200D";
      expect(expected, result);
    });
  });

  group('Unicode -> Menksoft: Other random tests', () {
    test('qmqShortTailM', () async {
      String unicode = "ᠬᠮᠬ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2CE\uE2F4\uE2D6";
      expect(expected, result);
    });

    test('qlqShortTailL', () async {
      String unicode = "ᠬᠯᠬ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE2CE\uE2FA\uE2D6";
      expect(expected, result);
    });

    test('egnenBigG', () async {
      String unicode = "ᠡᠭᠨᠡᠨ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2EB\uE2B7\uE276\uE2B5";
      expect(expected, result);
    });

    test('egmenBigG', () async {
      String unicode = "ᠡᠭᠮᠡᠨ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2EB\uE2F6\uE276\uE2B5";
      expect(expected, result);
    });

    test('eglenBigG', () async {
      String unicode = "ᠡᠭᠯᠡᠨ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2EB\uE2FC\uE276\uE2B5";
      expect(expected, result);
    });

    test('egdenSmallG', () async {
      String unicode = "ᠡᠭᠳᠡᠨ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2EF\uE313\uE276\uE2B5";
      expect(expected, result);
    });

    test('egsenSmallG', () async {
      String unicode = "ᠡᠭᠰᠡᠨ"; // KART
      String result = convertUnicodeToMenksoft(unicode);
      String expected = "\uE271\uE2EF\uE301\uE276\uE2B5";
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: non-Menksoft strings', () {
    test('emptyString', () async {
      String unicode = "";
      String result = convertMenksoftToUnicode(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('nullString', () async {
      String unicode = null;
      String result = convertMenksoftToUnicode(unicode);
      String expected = "";
      expect(expected, result);
    });

    test('englishKeyboardChars', () async {
      String unicode =
          "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:'\" ,./<>?";
      String result = convertMenksoftToUnicode(unicode);
      String expected =
          "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:'\" ,./<>?";
      expect(expected, result);
    });

    test('chineseChars', () async {
      String unicode = "中文";
      String result = convertMenksoftToUnicode(unicode);
      String expected = "中文";
      expect(expected, result);
    });

    test('emojiChars', () async {
      String unicode =
          "\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4";
      String result = convertMenksoftToUnicode(unicode);
      String expected =
          "\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4";
      expect(expected, result);
    });

    test('unicodeString', () async {
      String unicode = "ᠮᠤᠩᠭᠤᠯ";
      String result = convertMenksoftToUnicode(unicode);
      String expected = "ᠮᠤᠩᠭᠤᠯ";
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: all isolate values', () {
    test('isolateE234', () async {
      String menksoft = "\uE234";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(expected, result);
    });

    test('isolateE235', () async {
      String menksoft = "\uE235";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(expected, result);
    });

    test('isolateE236', () async {
      String menksoft = "\uE236";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(expected, result);
    });

    test('isolateE237', () async {
      String menksoft = "\uE237";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(expected, result);
    });

    test('isolateE238', () async {
      String menksoft = "\uE238";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(expected, result);
    });

    test('isolateE239', () async {
      String menksoft = "\uE239";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(expected, result);
    });

    test('isolateE23A', () async {
      String menksoft = "\uE23A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('isolateE23B', () async {
      String menksoft = "\uE23B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('isolateE23C', () async {
      String menksoft = "\uE23C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(expected, result);
    });

    test('isolateE23D', () async {
      String menksoft = "\uE23D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('isolateE23E', () async {
      String menksoft = "\uE23E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
      expect(expected, result);
    });

    test('isolateE23F', () async {
      String menksoft = "\uE23F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "\uD805\uDE60"; //BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE240', () async {
      String menksoft = "\uE240";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "\uD805\uDE61"; // ROTATED_BIRGA
      expect(expected, result);
    });

    test('isolateE241', () async {
      String menksoft = "\uE241";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "\uD805\uDE62"; // DOUBLE_BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE242', () async {
      String menksoft = "\uE242";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "\uD805\uDE63"; // TRIPLE_BIRGA_WITH_ORNAMENT
      expect(expected, result);
    });

    test('isolateE243', () async {
      String menksoft = "\uE243";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(expected, result);
    });

    test('isolateE244', () async {
      String menksoft = "\uE244";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(expected, result);
    });

    test('isolateE245', () async {
      String menksoft = "\uE245";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(expected, result);
    });

    test('isolateE246', () async {
      String menksoft = "\uE246";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(expected, result);
    });

    test('isolateE247', () async {
      String menksoft = "\uE247";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(expected, result);
    });

    test('isolateE248', () async {
      String menksoft = "\uE248";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(expected, result);
    });

    test('isolateE249', () async {
      String menksoft = "\uE249";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(expected, result);
    });

    test('isolateE24A', () async {
      String menksoft = "\uE24A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(expected, result);
    });

    test('isolateE24B', () async {
      String menksoft = "\uE24B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(expected, result);
    });

    test('isolateE24C', () async {
      String menksoft = "\uE24C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(expected, result);
    });

    test('isolateE24D', () async {
      String menksoft = "\uE24D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(expected, result);
    });

    test('isolateE24E', () async {
      String menksoft = "\uE24E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('isolateE24F', () async {
      String menksoft = "\uE24F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(expected, result);
    });

    test('isolateE250', () async {
      String menksoft = "\uE250";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('isolateE251', () async {
      String menksoft = "\uE251";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(expected, result);
    });

    test('isolateE252', () async {
      String menksoft = "\uE252";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(expected, result);
    });

    test('isolateE253', () async {
      String menksoft = "\uE253";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('isolateE254', () async {
      String menksoft = "\uE254";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('isolateE255', () async {
      String menksoft = "\uE255";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE256', () async {
      String menksoft = "\uE256";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE257', () async {
      String menksoft = "\uE257";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('isolateE258', () async {
      String menksoft = "\uE258";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('isolateE259', () async {
      String menksoft = "\uE259";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE25A', () async {
      String menksoft = "\uE25A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('isolateE25B', () async {
      String menksoft = "\uE25B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('isolateE25C', () async {
      String menksoft = "\uE25C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('isolateE25D', () async {
      String menksoft = "\uE25D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(expected, result);
    });

    test('isolateE25E', () async {
      String menksoft = "\uE25E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(expected, result);
    });

    test('isolateE25F', () async {
      String menksoft = "\uE25F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(expected, result);
    });

    test('isolateE260', () async {
      String menksoft = "\uE260";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(expected, result);
    });

    test('isolateE261', () async {
      String menksoft = "\uE261";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(expected, result);
    });

    test('isolateE262', () async {
      String menksoft = "\uE262";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " "; // TODO is this really what is expected
      expect(expected, result);
    });

    test('isolateE263', () async {
      String menksoft = "\uE263";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCode(Unicode.NNBS);
      expect(expected, result);
    });

    test('isolateE264', () async {
      String menksoft = "\uE264";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.A]);
      expect(expected, result);
    });

    test('isolateE265', () async {
      String menksoft = "\uE265";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE266', () async {
      String menksoft = "\uE266";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE267', () async {
      String menksoft = "\uE267";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.A, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE268', () async {
      String menksoft = "\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A]);
      expect(expected, result);
    });

    test('isolateE269', () async {
      String menksoft = "\uE269";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26A', () async {
      String menksoft = "\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26B', () async {
      String menksoft = "\uE26B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE26C', () async {
      String menksoft = "\uE26C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26D', () async {
      String menksoft = "\uE26D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26E', () async {
      String menksoft = "\uE26E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.A, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE26F', () async {
      String menksoft = "\uE26F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE270', () async {
      String menksoft = "\uE270";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.E]);
      expect(expected, result);
    });

    test('isolateE271', () async {
      String menksoft = "\uE271";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE272', () async {
      String menksoft = "\uE272";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.E, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE273', () async {
      String menksoft = "\uE273";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E]);
      expect(expected, result);
    });

    test('isolateE274', () async {
      String menksoft = "\uE274";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE275', () async {
      String menksoft = "\uE275";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE276', () async {
      String menksoft = "\uE276";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE277', () async {
      String menksoft = "\uE277";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE278', () async {
      String menksoft = "\uE278";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE279', () async {
      String menksoft = "\uE279";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27A', () async {
      String menksoft = "\uE27A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27B', () async {
      String menksoft = "\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27C', () async {
      String menksoft = "\uE27C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE27D', () async {
      String menksoft = "\uE27D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.I, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27E', () async {
      String menksoft = "\uE27E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE27F', () async {
      String menksoft = "\uE27F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE280', () async {
      String menksoft = "\uE280";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE281', () async {
      String menksoft = "\uE281";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.YA, Unicode.I, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE282', () async {
      String menksoft = "\uE282";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE283', () async {
      String menksoft = "\uE283";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.O]);
      expect(expected, result);
    });

    test('isolateE284', () async {
      String menksoft = "\uE284";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE285', () async {
      String menksoft = "\uE285";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O]);
      expect(expected, result);
    });

    test('isolateE286', () async {
      String menksoft = "\uE286";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE287', () async {
      String menksoft = "\uE287";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE288', () async {
      String menksoft = "\uE288";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.O, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE289', () async {
      String menksoft = "\uE289";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28A', () async {
      String menksoft = "\uE28A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28B', () async {
      String menksoft = "\uE28B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.U]);
      expect(expected, result);
    });

    test('isolateE28C', () async {
      String menksoft = "\uE28C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE28D', () async {
      String menksoft = "\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(expected, result);
    });

    test('isolateE28E', () async {
      String menksoft = "\uE28E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE28F', () async {
      String menksoft = "\uE28F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE290', () async {
      String menksoft = "\uE290";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.U, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE291', () async {
      String menksoft = "\uE291";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE292', () async {
      String menksoft = "\uE292";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE293', () async {
      String menksoft = "\uE293";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.OE]);
      expect(expected, result);
    });

    test('isolateE294', () async {
      String menksoft = "\uE294";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE295', () async {
      String menksoft = "\uE295";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE296', () async {
      String menksoft = "\uE296";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE]);
      expect(expected, result);
    });

    test('isolateE297', () async {
      String menksoft = "\uE297";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE298', () async {
      String menksoft = "\uE298";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE299', () async {
      String menksoft = "\uE299";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE29A', () async {
      String menksoft = "\uE29A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE29B', () async {
      String menksoft = "\uE29B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.OE, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29C', () async {
      String menksoft = "\uE29C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29D', () async {
      String menksoft = "\uE29D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29E', () async {
      String menksoft = "\uE29E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE29F', () async {
      String menksoft = "\uE29F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A0', () async {
      String menksoft = "\uE2A0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.UE]);
      expect(expected, result);
    });

    test('isolateE2A1', () async {
      String menksoft = "\uE2A1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A2', () async {
      String menksoft = "\uE2A2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A3', () async {
      String menksoft = "\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE]);
      expect(expected, result);
    });

    test('isolateE2A4', () async {
      String menksoft = "\uE2A4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A5', () async {
      String menksoft = "\uE2A5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A6', () async {
      String menksoft = "\uE2A6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A7', () async {
      String menksoft = "\uE2A7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2A8', () async {
      String menksoft = "\uE2A8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.UE, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2A9', () async {
      String menksoft = "\uE2A9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AA', () async {
      String menksoft = "\uE2AA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AB', () async {
      String menksoft = "\uE2AB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AC', () async {
      String menksoft = "\uE2AC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AD', () async {
      String menksoft = "\uE2AD";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.EE]);
      expect(expected, result);
    });

    test('isolateE2AE', () async {
      String menksoft = "\uE2AE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.EE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2AF', () async {
      String menksoft = "\uE2AF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.EE]);
      expect(expected, result);
    });

    test('isolateE2B0', () async {
      String menksoft = "\uE2B0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.EE, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B1', () async {
      String menksoft = "\uE2B1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B2', () async {
      String menksoft = "\uE2B2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B3', () async {
      String menksoft = "\uE2B3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B4', () async {
      String menksoft = "\uE2B4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B5', () async {
      String menksoft = "\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA]);
      expect(expected, result);
    });

    test('isolateE2B6', () async {
      String menksoft = "\uE2B6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.NA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B7', () async {
      String menksoft = "\uE2B7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B8', () async {
      String menksoft = "\uE2B8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2B9', () async {
      String menksoft = "\uE2B9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2BA', () async {
      String menksoft = "\uE2BA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2BB', () async {
      String menksoft = "\uE2BB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BC', () async {
      String menksoft = "\uE2BC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BD', () async {
      String menksoft = "\uE2BD";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BE', () async {
      String menksoft = "\uE2BE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ANG]);
      expect(expected, result);
    });

    test('isolateE2BF', () async {
      String menksoft = "\uE2BF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2C0', () async {
      String menksoft = "\uE2C0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2C1', () async {
      String menksoft = "\uE2C1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C2', () async {
      String menksoft = "\uE2C2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C3', () async {
      String menksoft = "\uE2C3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C4', () async {
      String menksoft = "\uE2C4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.BA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2C5', () async {
      String menksoft = "\uE2C5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C6', () async {
      String menksoft = "\uE2C6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C7', () async {
      String menksoft = "\uE2C7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.BA]);
      expect(expected, result);
    });

    test('isolateE2C8', () async {
      String menksoft = "\uE2C8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2C9', () async {
      String menksoft = "\uE2C9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CA', () async {
      String menksoft = "\uE2CA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CB', () async {
      String menksoft = "\uE2CB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CC', () async {
      String menksoft = "\uE2CC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CD', () async {
      String menksoft = "\uE2CD";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.PA]);
      expect(expected, result);
    });

    test('isolateE2CE', () async {
      String menksoft = "\uE2CE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2CF', () async {
      String menksoft = "\uE2CF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2D0', () async {
      String menksoft = "\uE2D0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2D1', () async {
      String menksoft = "\uE2D1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2D2', () async {
      String menksoft = "\uE2D2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D3', () async {
      String menksoft = "\uE2D3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2D4', () async {
      String menksoft = "\uE2D4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D5', () async {
      String menksoft = "\uE2D5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2D6', () async {
      String menksoft = "\uE2D6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2D7', () async {
      String menksoft = "\uE2D7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2D8', () async {
      String menksoft = "\uE2D8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2D9', () async {
      String menksoft = "\uE2D9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2DA', () async {
      String menksoft = "\uE2DA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2DB', () async {
      String menksoft = "\uE2DB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2DC', () async {
      String menksoft = "\uE2DC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2DD', () async {
      String menksoft = "\uE2DD";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2DE', () async {
      String menksoft = "\uE2DE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2DF', () async {
      String menksoft = "\uE2DF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2E0', () async {
      String menksoft = "\uE2E0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE2E1', () async {
      String menksoft = "\uE2E1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E2', () async {
      String menksoft = "\uE2E2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2E3', () async {
      String menksoft = "\uE2E3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2E4', () async {
      String menksoft = "\uE2E4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E5', () async {
      String menksoft = "\uE2E5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.QA]);
      expect(expected, result);
    });

    test('isolateE2E6', () async {
      String menksoft = "\uE2E6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2E7', () async {
      String menksoft = "\uE2E7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA]);
      expect(expected, result);
    });

    test('isolateE2E8', () async {
      String menksoft = "\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2]);
      expect(expected, result);
    });

    test('isolateE2E9', () async {
      String menksoft = "\uE2E9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EA', () async {
      String menksoft = "\uE2EA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EB', () async {
      String menksoft = "\uE2EB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2EC', () async {
      String menksoft = "\uE2EC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2ED', () async {
      String menksoft = "\uE2ED";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(expected, result);
    });

    test('isolateE2EE', () async {
      String menksoft = "\uE2EE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2EF', () async {
      String menksoft = "\uE2EF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F0', () async {
      String menksoft = "\uE2F0";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F1', () async {
      String menksoft = "\uE2F1";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F2', () async {
      String menksoft = "\uE2F2";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F3', () async {
      String menksoft = "\uE2F3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA]);
      expect(expected, result);
    });

    test('isolateE2F4', () async {
      String menksoft = "\uE2F4";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F5', () async {
      String menksoft = "\uE2F5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F6', () async {
      String menksoft = "\uE2F6";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2F7', () async {
      String menksoft = "\uE2F7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2F8', () async {
      String menksoft = "\uE2F8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2F9', () async {
      String menksoft = "\uE2F9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA]);
      expect(expected, result);
    });

    test('isolateE2FA', () async {
      String menksoft = "\uE2FA";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FB', () async {
      String menksoft = "\uE2FB";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FC', () async {
      String menksoft = "\uE2FC";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE2FD', () async {
      String menksoft = "\uE2FD";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE2FE', () async {
      String menksoft = "\uE2FE";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE2FF', () async {
      String menksoft = "\uE2FF";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA]);
      expect(expected, result);
    });

    test('isolateE300', () async {
      String menksoft = "\uE300";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE301', () async {
      String menksoft = "\uE301";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE302', () async {
      String menksoft = "\uE302";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE303', () async {
      String menksoft = "\uE303";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE304', () async {
      String menksoft = "\uE304";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE305', () async {
      String menksoft = "\uE305";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA]);
      expect(expected, result);
    });

    test('isolateE306', () async {
      String menksoft = "\uE306";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE307', () async {
      String menksoft = "\uE307";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE308', () async {
      String menksoft = "\uE308";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE309', () async {
      String menksoft = "\uE309";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30A', () async {
      String menksoft = "\uE30A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30B', () async {
      String menksoft = "\uE30B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30C', () async {
      String menksoft = "\uE30C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30D', () async {
      String menksoft = "\uE30D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE30E', () async {
      String menksoft = "\uE30E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE30F', () async {
      String menksoft = "\uE30F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TA]);
      expect(expected, result);
    });

    test('isolateE310', () async {
      String menksoft = "\uE310";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.DA]);
      expect(expected, result);
    });

    test('isolateE311', () async {
      String menksoft = "\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA]);
      expect(expected, result);
    });

    test('isolateE312', () async {
      String menksoft = "\uE312";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.FVS1]);
      expect(expected, result);
    });

    test('isolateE313', () async {
      String menksoft = "\uE313";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes(
          [Unicode.ZWJ, Unicode.DA, Unicode.FVS1, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE314', () async {
      String menksoft = "\uE314";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE315', () async {
      String menksoft = "\uE315";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE316', () async {
      String menksoft = "\uE316";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE317', () async {
      String menksoft = "\uE317";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.CHA]);
      expect(expected, result);
    });

    test('isolateE318', () async {
      String menksoft = "\uE318";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE319', () async {
      String menksoft = "\uE319";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31A', () async {
      String menksoft = "\uE31A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31B', () async {
      String menksoft = "\uE31B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.JA]);
      expect(expected, result);
    });

    test('isolateE31C', () async {
      String menksoft = "\uE31C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(expected, result);
    });

    test('isolateE31D', () async {
      String menksoft = "\uE31D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.JA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE31E', () async {
      String menksoft = "\uE31E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE31F', () async {
      String menksoft = "\uE31F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE320', () async {
      String menksoft = "\uE320";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.YA]);
      expect(expected, result);
    });

    test('isolateE321', () async {
      String menksoft = "\uE321";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.YA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE322', () async {
      String menksoft = "\uE322";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE323', () async {
      String menksoft = "\uE323";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE324', () async {
      String menksoft = "\uE324";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE325', () async {
      String menksoft = "\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE326', () async {
      String menksoft = "\uE326";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE327', () async {
      String menksoft = "\uE327";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE328', () async {
      String menksoft = "\uE328";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.RA]);
      expect(expected, result);
    });

    test('isolateE329', () async {
      String menksoft = "\uE329";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32A', () async {
      String menksoft = "\uE32A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32B', () async {
      String menksoft = "\uE32B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(expected, result);
    });

    test('isolateE32C', () async {
      String menksoft = "\uE32C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.WA]);
      expect(expected, result);
    });

    test('isolateE32D', () async {
      String menksoft = "\uE32D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE32E', () async {
      String menksoft = "\uE32E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE32F', () async {
      String menksoft = "\uE32F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE330', () async {
      String menksoft = "\uE330";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE331', () async {
      String menksoft = "\uE331";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE332', () async {
      String menksoft = "\uE332";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.FA]);
      expect(expected, result);
    });

    test('isolateE333', () async {
      String menksoft = "\uE333";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE334', () async {
      String menksoft = "\uE334";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE335', () async {
      String menksoft = "\uE335";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE336', () async {
      String menksoft = "\uE336";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE337', () async {
      String menksoft = "\uE337";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE338', () async {
      String menksoft = "\uE338";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KA]);
      expect(expected, result);
    });

    test('isolateE339', () async {
      String menksoft = "\uE339";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33A', () async {
      String menksoft = "\uE33A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33B', () async {
      String menksoft = "\uE33B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33C', () async {
      String menksoft = "\uE33C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33D', () async {
      String menksoft = "\uE33D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33E', () async {
      String menksoft = "\uE33E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.KHA]);
      expect(expected, result);
    });

    test('isolateE33F', () async {
      String menksoft = "\uE33F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE340', () async {
      String menksoft = "\uE340";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE341', () async {
      String menksoft = "\uE341";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.TSA]);
      expect(expected, result);
    });

    test('isolateE342', () async {
      String menksoft = "\uE342";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE343', () async {
      String menksoft = "\uE343";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE344', () async {
      String menksoft = "\uE344";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZA]);
      expect(expected, result);
    });

    test('isolateE345', () async {
      String menksoft = "\uE345";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.HAA]);
      expect(expected, result);
    });

    test('isolateE346', () async {
      String menksoft = "\uE346";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.HAA]);
      expect(expected, result);
    });

    test('isolateE347', () async {
      String menksoft = "\uE347";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
      String.fromCharCodes([Unicode.ZWJ, Unicode.HAA, Unicode.ZWJ]);
      expect(expected, result);
    });

    test('isolateE348', () async {
      String menksoft = "\uE348";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE349', () async {
      String menksoft = "\uE349";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE34A', () async {
      String menksoft = "\uE34A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZRA]);
      expect(expected, result);
    });

    test('isolateE34B', () async {
      String menksoft = "\uE34B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34C', () async {
      String menksoft = "\uE34C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34D', () async {
      String menksoft = "\uE34D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(expected, result);
    });

    test('isolateE34E', () async {
      String menksoft = "\uE34E";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.ZHI]);
      expect(expected, result);
    });

    test('isolateE34F', () async {
      String menksoft = "\uE34F";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = String.fromCharCodes([Unicode.CHI]);
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Punctuation', () {
    test('punctuationBirga', () async {
      int menksoft = Menksoft.BIRGA;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(expected, result);
    });

    test('punctuationEllipsis', () async {
      int menksoft = Menksoft.ELLIPSIS;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(expected, result);
    });

    test('punctuationComma', () async {
      int menksoft = Menksoft.COMMA;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(expected, result);
    });

    test('punctuationFullStop', () async {
      int menksoft = Menksoft.FULL_STOP;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(expected, result);
    });
    test('punctuationColon', () async {
      int menksoft = Menksoft.COLON;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(expected, result);
    });

    test('punctuationFourDots', () async {
      int menksoft = Menksoft.FOUR_DOTS;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(expected, result);
    });

    test('punctuationTodoSoftHyphen', () async {
      int menksoft = Menksoft.TODO_SOFT_HYPHEN;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(expected, result);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      int menksoft = Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(expected, result);
    });

    test('punctuationManchuComma', () async {
      int menksoft = Menksoft.MANCHU_COMMA;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(expected, result);
    });

    test('punctuationManchuFullStop', () async {
      int menksoft = Menksoft.MANCHU_FULL_STOP;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(expected, result);
    });

    test('punctuationNirugu', () async {
      int menksoft = Menksoft.NIRUGU;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
      expect(expected, result);
    });

    test('punctuationMiddleDot', () async {
      int menksoft = Menksoft.MIDDLE_DOT;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(expected, result);
    });

    test('punctuationZero', () async {
      int menksoft = Menksoft.ZERO;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(expected, result);
    });

    test('punctuationOne', () async {
      int menksoft = Menksoft.ONE;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(expected, result);
    });

    test('punctuationTwo', () async {
      int menksoft = Menksoft.TWO;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(expected, result);
    });

    test('punctuationThree', () async {
      int menksoft = Menksoft.THREE;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(expected, result);
    });

    test('punctuationFour', () async {
      int menksoft = Menksoft.FOUR;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(expected, result);
    });

    test('punctuationFive', () async {
      int menksoft = Menksoft.FIVE;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(expected, result);
    });

    test('punctuationSix', () async {
      int menksoft = Menksoft.SIX;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(expected, result);
    });

    test('punctuationSeven', () async {
      int menksoft = Menksoft.SEVEN;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(expected, result);
    });

    test('punctuationEight', () async {
      int menksoft = Menksoft.EIGHT;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(expected, result);
    });

    test('punctuationNine', () async {
      int menksoft = Menksoft.NINE;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(expected, result);
    });

    test('punctuationQuestionExclamation', () async {
      int menksoft = Menksoft.QUESTION_EXCLAMATION;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('punctuationExclamationQuestion', () async {
      int menksoft = Menksoft.EXCLAMATION_QUESTION;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(expected, result);
    });

    test('punctuationExclamation', () async {
      int menksoft = Menksoft.EXCLAMATION;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(expected, result);
    });

    test('punctuationQuestion', () async {
      int menksoft = Menksoft.QUESTION;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(expected, result);
    });

    test('punctuationSemicolon', () async {
      int menksoft = Menksoft.SEMICOLON;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(expected, result);
    });

    test('punctuationLeftParenthesis', () async {
      int menksoft = Menksoft.LEFT_PARENTHESIS;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationRightParenthesis', () async {
      int menksoft = Menksoft.RIGHT_PARENTHESIS;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(expected, result);
    });

    test('punctuationLeftAngleBracket', () async {
      int menksoft = Menksoft.LEFT_ANGLE_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightAngleBracket', () async {
      int menksoft = Menksoft.RIGHT_ANGLE_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftBracket', () async {
      int menksoft = Menksoft.LEFT_TORTOISE_SHELL_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightBracket', () async {
      int menksoft = Menksoft.RIGHT_TORTOISE_SHELL_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      int menksoft = Menksoft.LEFT_DOUBLE_ANGLE_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      int menksoft = Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(expected, result);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      int menksoft = Menksoft.LEFT_WHITE_CORNER_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      int menksoft = Menksoft.RIGHT_WHITE_CORNER_BRACKET;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected =
      String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      expect(expected, result);
    });

    test('punctuationFullWidthComma', () async {
      int menksoft = Menksoft.FULL_WIDTH_COMMA;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(expected, result);
    });

    test('punctuationX', () async {
      int menksoft = Menksoft.X;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(expected, result);
    });

    test('punctuationReferenceMark', () async {
      int menksoft = Menksoft.REFERENCE_MARK;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(expected, result);
    });

    test('punctuationEnDash', () async {
      int menksoft = Menksoft.EN_DASH;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(expected, result);
    });

    test('punctuationEmDash', () async {
      int menksoft = Menksoft.EM_DASH;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(expected, result);
    });

    test('punctuationSuffixSpace', () async {
      int menksoft = Menksoft.SUFFIX_SPACE;
      String result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      String expected = String.fromCharCode(Unicode.NNBS);
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Words', () {
    test('bichigWord', () async {
      String menksoft = "\uE2C1\uE27F\uE317\uE27E\uE2E8"; // bichig
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠢᠴᠢᠭ";
      expect(expected, result);
    });

    test('egeshigWord', () async {
      String menksoft =
          "\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3"; // EGESIG (NNBSP) INU
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ";
      expect(expected, result);
    });

    test('bujigWord', () async {
      String menksoft =
          "\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5"; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ";
      expect(expected, result);
    });

    test('chirigWord', () async {
      String menksoft =
          "\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ"; // CHIRIG (NNBSP) MANI
      expect(expected, result);
    });

    test('egchiWord', () async {
      String menksoft = "\uE271\uE2F0\uE317\uE273";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠡᠭᠴᠡ"; // EGCHI
      expect(expected, result);
    });

    test('qugjimWord', () async {
      String menksoft =
          "\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
          "ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ"; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      expect(expected, result);
    });

    test('buridgelWord', () async {
      String menksoft =
          "\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ"; // BURIDGEL (NNBSP) IYEN
      expect(expected, result);
    });

    test('sedqilWord', () async {
      String menksoft =
          "\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ"; // SEDQIL (NNBSP) MINI
      expect(expected, result);
    });

    test('uiledburiWord', () async {
      String menksoft =
          "\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ"; // UILEDBURI (NNBSP) DU
      expect(expected, result);
    });

    test('jeligudqenWord', () async {
      String menksoft =
          "\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ"; // JELIGUDQEN (NNBSP) U
      expect(expected, result);
    });

    test('manggalWord', () async {
      String menksoft =
          "\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
          "ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ"; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      expect(expected, result);
    });

    test('dengWord', () async {
      String menksoft = "\uE310\uE2A9\uE2BB\uE263\uE282";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠳ᠋ᠦᠩ ᠢ"; // D(FVS1)UNG (NNBSP) I
      expect(expected, result);
    });

    test('sodnamWord', () async {
      String menksoft =
          "\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
          "ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ"; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      expect(expected, result);
    });

    test('lhagbaWord', () async {
      String menksoft =
          "\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ"; // LHAGBA (NNBSP) LUG(MVS)A
      expect(expected, result);
    });

    test('chebegmedWord', () async {
      String menksoft =
          "\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ"; // CHEBEGMED (NNBSP) LUGE
      expect(expected, result);
    });

    test('tsementWord', () async {
      String menksoft =
          "\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠼᠧᠮᠧᠨᠲ ᠲᠠᠶᠢᠭᠠᠨ"; // TSEMENT (NNBSP) TAYIGAN
      expect(expected, result);
    });

    test('uniyeWord', () async {
      String menksoft =
          "\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ"; // UNIY(MVS)E (NNBSP) TEYIGEN
      expect(expected, result);
    });

    test('qoyinaWord', () async {
      String menksoft = "\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠬᠣᠶᠢᠨ᠎ᠠ"; // QOYIN(MVS)A
      expect(expected, result);
    });

    test('angnaWord', () async {
      String menksoft = "\uE266\uE2BE\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠠᠩᠨ᠎ᠠ"; // ANGN(MVS)A
      expect(expected, result);
    });

    test('chinggaWord', () async {
      String menksoft = "\uE315\uE27E\uE2BC\uE2E9\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠢᠩᠭ᠎ᠠ"; // CHINGG(MVS)A
      expect(expected, result);
    });

    test('chingalaquWord', () async {
      String menksoft =
          "\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠢᠩᠭᠠᠯᠠᠬᠤ"; // CHINGGALAQU
      expect(expected, result);
    });

    test('daljiygsanWord', () async {
      String menksoft =
          "\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠳᠠᠯᠵᠢᠶᠭᠰᠠᠨ"; // DALJIYGSAN
      expect(expected, result);
    });

    test('ilbigchiWord', () async {
      String menksoft = "\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠢᠯᠪᠢᠭᠴᠢ"; // ILBIGCHI
      expect(expected, result);
    });

    test('bichigchiWord', () async {
      String menksoft = "\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠢᠴᠢᠭᠴᠢ"; // BICHIGCHI
      expect(expected, result);
    });

    test('sigsiglequWord', () async {
      String menksoft =
          "\uE2FD\uE27E\uE2EB\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ"; // SIGSIGLEQU
      expect(expected, result);
    });

    test('diglimsigsenWord', () async {
      String menksoft =
          "\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EB\uE301\uE276\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ"; // DIGLIMSIGSEN
      expect(expected, result);
    });

    test('chigigligWord', () async {
      String menksoft = "\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠢᠭᠢᠭᠯᠢᠭ"; // CHIGIGLIG
      expect(expected, result);
    });

    test('monggeWord', () async {
      String menksoft = "\uE2F2\uE29C\uE2BD\uE2EB\uE275";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠮᠥᠩᠭᠡ"; // MONGGE
      expect(expected, result);
    });

    test('kinoWord', () async {
      String menksoft = "\uE333\uE27F\uE2B9\uE286";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠺᠢᠨᠣ᠋"; // KINO(FVS1)
      expect(expected, result);
    });

    test('bayigulquWord', () async {
      String menksoft =
          "\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠠᠶᠢᠭᠤᠯᠬᠤ"; // BAYIGULQU
      expect(expected, result);
    });

    test('gregWord', () async {
      String menksoft = "\uE2E3\uE327\uE2B0\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠭᠷᠧᠭ"; // GREG
      expect(expected, result);
    });

    test('motorWord', () async {
      String menksoft = "\uE2F2\uE289\uE30D\uE289\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠮᠣᠲ᠋ᠣᠷ"; // MOT(FVS1)OR
      expect(expected, result);
    });

    test('neigemligWord', () async {
      String menksoft =
          "\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ"; // NEYIGEMLIG
      expect(expected, result);
    });

    test('mongolWord', () async {
      String menksoft = "\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠮᠣᠩᠭᠣᠯ"; // MONGGOL
      expect(expected, result);
    });

    test('yatugaWord', () async {
      String menksoft = "\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠶᠠᠲᠤᠭ᠎ᠠ"; // YATUG(MVS)A
      expect(expected, result);
    });

    test('olaganaWord', () async {
      String menksoft = "\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠤᠯᠠᠭᠠᠨ᠎ᠠ"; // OLAGAN(MVS)A
      expect(expected, result);
    });

    test('bichiglequWord', () async {
      String menksoft =
          "\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠢᠴᠢᠭᠯᠡᠬᠦ"; // BICHIGLEQU
      expect(expected, result);
    });

    test('programWord', () async {
      String menksoft = "\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠫᠷᠣᠭ᠍ᠷᠠᠮ"; // PROG(FVS3)RAM
      expect(expected, result);
    });

    test('kartWord', () async {
      String menksoft = "\uE333\uE26D\uE326\uE30A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠺᠠᠷᠲ"; // KART
      expect(expected, result);
    });

    test('dungnelteWord', () async {
      String menksoft = "\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ"; // D(FVS1)UNGNELTE
      expect(expected, result);
    });

    test('gramWord', () async {
      String menksoft = "\uE2E3\uE327\uE26C\uE2F3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠭᠷᠠᠮ"; // GRAM
      expect(expected, result);
    });

    test('minggaWord', () async {
      String menksoft = "\uE2F1\uE27E\uE2BC\uE2E9\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠮᠢᠩᠭ᠎ᠠ"; // MINGG(MVS)A
      expect(expected, result);
    });

    test('naimaWordMenksoftVersion', () async {
      String menksoft = "\uE2B1\uE26C\uE27E\uE2F5\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected =
          "ᠨᠠᠢ\u180Cᠮᠠ"; // NAI(FVS2)MA (not defined in Unicode 10.0)
      expect(expected, result);
    });

    test('naijaWord', () async {
      String menksoft = "\uE2B1\uE26C\uE281\uE31D\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠨᠠᠢᠵᠠ"; // NAIJA
      expect(expected, result);
    });

    test('nayijaWord', () async {
      String menksoft = "\uE2B1\uE26C\uE321\uE27E\uE31D\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠨᠠᠶᠢᠵᠠ"; // NAYIJA
      expect(expected, result);
    });

    test('bainaWord', () async {
      String menksoft = "\uE2C1\uE26D\uE281\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠠᠢᠨ᠎ᠠ"; // BAIN(MVS)A
      expect(expected, result);
    });

    test('bayinaWord', () async {
      String menksoft = "\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠠᠶᠢᠨ᠎ᠠ"; // BAYIN(MVS)A
      expect(expected, result);
    });

    test('baiinaWord', () async {
      String menksoft = "\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠠᠢᠢᠨ᠎ᠠ"; // BAIIN(MVS)A
      expect(expected, result);
    });

    test('saihanWord', () async {
      String menksoft = "\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠠᠶᠢᠬᠠᠨ"; // SAYIHAN
      expect(expected, result);
    });

    test('sayihanWord', () async {
      String menksoft = "\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠠᠶ\u180Bᠢᠬᠠᠨ"; // SAY(FVS1)IHAN
      expect(expected, result);
    });

    test('sayiWord', () async {
      String menksoft = "\uE2FD\uE26C\uE320\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠠᠶ\u180Bᠢ"; // SAY(FVS1)I
      expect(expected, result);
    });

    test('taiWord', () async {
      String menksoft = "\uE308\uE26C\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠲᠠᠢ"; // TAI
      expect(expected, result);
    });

    test('namayiWord', () async {
      String menksoft = "\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠨᠠᠮᠠᠶᠢ"; // NAMAYI
      expect(expected, result);
    });

    test('eyimuWord', () async {
      String menksoft = "\uE271\uE321\uE27E\uE2F5\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠡᠶᠢᠮᠦ"; // EYIMU
      expect(expected, result);
    });

    test('soyolWord', () async {
      String menksoft = "\uE2FE\uE289\uE320\uE289\uE2F9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠣᠶᠣᠯ"; // SOYOL
      expect(expected, result);
    });

    test('buuWord', () async {
      String menksoft = "\uE2C2\uE2AC\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠦᠦ"; // BUU
      expect(expected, result);
    });

    test('quuWord', () async {
      String menksoft = "\uE2D4\uE2AA\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠬᠦᠦ"; // QUU
      expect(expected, result);
    });

    test('qeuqenWord', () async {
      String menksoft = "\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠬᠡᠦᠬᠡᠳ"; // QEUQEN
      expect(expected, result);
    });

    test('qeduyinWord', () async {
      String menksoft = "\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠬᠡᠳᠦᠶᠢᠨ"; // QEDUYIN
      expect(expected, result);
    });

    test('qeduinWord', () async {
      String menksoft = "\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠬᠡᠳᠦᠢᠨ"; // QEDUIN
      expect(expected, result);
    });

    test('anggliWord', () async {
      String menksoft = "\uE266\uE2BD\uE2EB\uE2FC\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠠᠩᠭᠯᠢ"; // ANGGLI
      expect(expected, result);
    });

    test('asiglajuWord', () async {
      String menksoft = "\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠠᠰᠢᠭᠯᠠᠵᠤ"; // ASIGLAJU
      expect(expected, result);
    });

    test('narangerelWord', () async {
      String menksoft =
          "\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ"; // NARANGEREL
      expect(expected, result);
    });

    test('cholmonodoWord', () async {
      String menksoft =
          "\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ"; // CHOLMON(ZWJ)O(FVS1)DO
      expect(expected, result);
    });

    test('bayanunderWord', () async {
      String menksoft =
          "\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠪᠠᠶᠠᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ"; // BAYAN(ZWJ)U(FVS1)NDUR
      expect(expected, result);
    });

    test('sodobiligWord', () async {
      String menksoft =
          "\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌"; // SODOBILIG(FVS2)
      expect(expected, result);
    });

    test('anggilumchechegWord', () async {
      String menksoft =
          "\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ"; // ANGGILUMCHECHEG
      expect(expected, result);
    });

    test('chechegmaWord', () async {
      String menksoft = "\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠴᠡᠴᠡᠭᠮ᠎ᠡ"; // CHECHEGM(MVS)A
      expect(expected, result);
    });

    test('sigDefaultWord', () async {
      String menksoft = "\uE2FD\uE27E\uE2E8";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠢᠭ"; // SIG
      expect(expected, result);
    });

    test('sigSpecifiedWord', () async {
      String menksoft = "\uE2FD\uE27E\uE2E7";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = "ᠰᠢᠭ᠋"; // SIG(FVS1)
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: Suffixes', () {
    test('yinSuffix', () async {
      String menksoft = "\uE263\uE321\uE27E\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠶᠢᠨ"; //
      expect(expected, result);
    });

    test('unSuffix', () async {
      String menksoft = "\uE263\uE292\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠤᠨ"; //
      expect(expected, result);
    });

    test('uenSuffix', () async {
      String menksoft = "\uE263\uE2AC\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠦᠨ"; //
      expect(expected, result);
    });

    test('uSuffix', () async {
      String menksoft = "\uE263\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠤ"; //
      expect(expected, result);
    });

    test('ueSuffix', () async {
      String menksoft = "\uE263\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠦ"; //
      expect(expected, result);
    });

    test('iSuffix', () async {
      String menksoft = "\uE263\uE282";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠢ"; //
      expect(expected, result);
    });

    test('yiSuffix', () async {
      String menksoft = "\uE263\uE321\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠶᠢ"; //
      expect(expected, result);
    });

    test('duSuffix', () async {
      String menksoft = "\uE263\uE310\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠤ"; //
      expect(expected, result);
    });

    test('dueSuffix', () async {
      String menksoft = "\uE263\uE310\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠦ"; //
      expect(expected, result);
    });

    test('tuSuffix', () async {
      String menksoft = "\uE263\uE309\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠤ"; //
      expect(expected, result);
    });

    test('tueSuffix', () async {
      String menksoft = "\uE263\uE309\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠦ"; //
      expect(expected, result);
    });

    test('durSuffix', () async {
      String menksoft = "\uE263\uE310\uE291\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠤᠷ"; //
      expect(expected, result);
    });

    test('duerSuffix', () async {
      String menksoft = "\uE263\uE310\uE2AB\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠦᠷ"; //
      expect(expected, result);
    });

    test('turSuffix', () async {
      String menksoft = "\uE263\uE309\uE291\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠤᠷ"; //
      expect(expected, result);
    });

    test('tuerSuffix', () async {
      String menksoft = "\uE263\uE309\uE2AB\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠦᠷ"; //
      expect(expected, result);
    });

    test('daqiSuffix', () async {
      String menksoft = "\uE263\uE310\uE26C\uE2DA\uE27C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠠᠬᠢ"; //
      expect(expected, result);
    });

    test('deqiSuffix', () async {
      String menksoft = "\uE263\uE310\uE276\uE2DA\uE27C";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠡᠬᠢ"; //
      expect(expected, result);
    });

    test('achaSuffix', () async {
      String menksoft = "\uE263\uE267\uE317\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠠᠴᠠ"; //
      expect(expected, result);
    });

    test('echeSuffix', () async {
      String menksoft = "\uE263\uE271\uE317\uE273";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠡᠴᠡ"; //
      expect(expected, result);
    });

    test('barSuffix', () async {
      String menksoft = "\uE263\uE2C1\uE26D\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠪᠠᠷ"; //
      expect(expected, result);
    });

    test('berSuffix', () async {
      String menksoft = "\uE263\uE2C1\uE277\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠪᠡᠷ"; //
      expect(expected, result);
    });

    test('iyarSuffix', () async {
      String menksoft = "\uE263\uE280\uE321\uE26C\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠢᠶᠠᠷ"; //
      expect(expected, result);
    });

    test('iyerSuffix', () async {
      String menksoft = "\uE263\uE280\uE321\uE276\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠢᠶᠡᠷ"; //
      expect(expected, result);
    });

    test('taiSuffix', () async {
      String menksoft = "\uE263\uE308\uE26C\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠠᠢ"; //
      expect(expected, result);
    });

    test('teiSuffix', () async {
      String menksoft = "\uE263\uE308\uE276\uE27B";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠡᠢ"; //
      expect(expected, result);
    });

    test('lugaSuffix', () async {
      String menksoft = "\uE263\uE2F8\uE291\uE2E9\uE26A";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠯᠤᠭ᠎ᠠ"; //
      expect(expected, result);
    });

    test('luegeSuffix', () async {
      String menksoft = "\uE263\uE2F8\uE2AB\uE2EB\uE275";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠯᠦᠭᠡ"; //
      expect(expected, result);
    });

    test('banSuffix', () async {
      String menksoft = "\uE263\uE2C1\uE26D\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠪᠠᠨ"; //
      expect(expected, result);
    });

    test('benSuffix', () async {
      String menksoft = "\uE263\uE2C1\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠪᠡᠨ"; //
      expect(expected, result);
    });

    test('iyanSuffix', () async {
      String menksoft = "\uE263\uE280\uE321\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠢᠶᠠᠨ"; //
      expect(expected, result);
    });

    test('iyenSuffix', () async {
      String menksoft = "\uE263\uE280\uE321\uE276\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠢᠶᠡᠨ"; //
      expect(expected, result);
    });

    test('yuganSuffix', () async {
      String menksoft = "\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠶᠤᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('yuegenSuffix', () async {
      String menksoft = "\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠶᠦᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('daganSuffix', () async {
      String menksoft = "\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠠᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('degenSuffix', () async {
      String menksoft = "\uE263\uE310\uE276\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠡᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('taganSuffix', () async {
      String menksoft = "\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠠᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('tegenSuffix', () async {
      String menksoft = "\uE263\uE308\uE276\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠡᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('achaganSuffix', () async {
      String menksoft = "\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠠᠴᠠᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('echegenSuffix', () async {
      String menksoft = "\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠡᠴᠡᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('taiganSuffix', () async {
      String menksoft = "\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠠᠢᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('tayiganSuffix', () async {
      String menksoft = "\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠠᠶᠢᠭᠠᠨ"; //
      expect(expected, result);
    });

    test('teigenSuffix', () async {
      String menksoft = "\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠡᠢᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('teyigenSuffix', () async {
      String menksoft = "\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠲᠡᠶᠢᠭᠡᠨ"; //
      expect(expected, result);
    });

    test('udSuffix', () async {
      String menksoft = "\uE263\uE292\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠤᠳ"; //
      expect(expected, result);
    });

    test('uedSuffix', () async {
      String menksoft = "\uE263\uE2AC\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠦᠳ"; //
      expect(expected, result);
    });

    test('nugudSuffix', () async {
      String menksoft = "\uE263\uE2B3\uE291\uE2EC\uE291\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠨᠤᠭᠤᠳ"; //
      expect(expected, result);
    });

    test('nueguedSuffix', () async {
      String menksoft = "\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠨᠦᠭᠦᠳ"; //
      expect(expected, result);
    });

    test('narSuffix', () async {
      String menksoft = "\uE263\uE2B1\uE26C\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠨᠠᠷ"; //
      expect(expected, result);
    });

    test('nerSuffix', () async {
      String menksoft = "\uE263\uE2B1\uE276\uE325";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠨᠡᠷ"; //
      expect(expected, result);
    });

    test('uuSuffix', () async {
      String menksoft = "\uE263\uE292\uE28D";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠤᠤ"; //
      expect(expected, result);
    });

    test('ueueSuffix', () async {
      String menksoft = "\uE263\uE2AC\uE2A3";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠦᠦ"; //
      expect(expected, result);
    });

    test('daSuffix', () async {
      String menksoft = "\uE263\uE310\uE268";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠠ"; //
      expect(expected, result);
    });

    test('deSuffix', () async {
      String menksoft = "\uE263\uE310\uE273";
      String result = convertMenksoftToUnicode(menksoft);
      String expected = " ᠳᠡ"; //
      expect(expected, result);
    });
  });

  group('Menksoft -> Unicode: more edge cases', () {
    test('dottedMedialNBeforeConsonant', () async {
      String menksoft = "\uE342\uE2F4\uE2B9\uE30A";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE342\uE2F4\uE2B9\uE30A";
      expect(expected, result);
    });

    test('longToothUEinNonInitialSyllable', () async {
      String menksoft = "\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB";
      expect(expected, result);
    });

    test('medialEEatWordEnd', () async {
      String menksoft = "\uE342\uE32C";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE342\uE32C";
      expect(expected, result);
    });

    test('spaceIsAddedBetweenToWordsWithoutSpace', () async {
      String menksoft = "\uE34F\uE27B\uE2FE\uE291\uE327\uE2D6\uE26A";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE34F\uE27B \uE2FE\uE291\uE327\uE2D6\uE26A";
      expect(expected, result);
    });

    test('jBecomesYAfterNNBS', () async {
      String menksoft = "\uE263\uE319\uE27E\uE2B5";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE263\uE321\uE27E\uE2B5";
      expect(expected, result);
    });

    test('wBetweenTwoConsonantsBecomesEE', () async {
      String menksoft = "\uE345\uE329\uE2BB";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE345\uE2B0\uE2BB";
      expect(expected, result);
    });

    test('eeBetweenTwoVowelsBecomesW', () async {
      String menksoft = "\uE266\uE2B0\uE268";
      String result = convertToUnicodeAndBackAgain(menksoft);
      String expected = "\uE266\uE32C\uE268";
      expect(expected, result);
    });
  });

  group('Unicode suffix lookup', () {
    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_A', () async {
      int wordLastChar = Unicode.A;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_E', () async {
      int wordLastChar = Unicode.E;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_I', () async {
      int wordLastChar = Unicode.I;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_O', () async {
      int wordLastChar = Unicode.O;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_U', () async {
      int wordLastChar = Unicode.U;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_OE', () async {
      int wordLastChar = Unicode.OE;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_UE', () async {
      int wordLastChar = Unicode.UE;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_EE', () async {
      int wordLastChar = Unicode.EE;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_A', () async {
      int wordLastChar = Unicode.A;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_E', () async {
      int wordLastChar = Unicode.E;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_I', () async {
      int wordLastChar = Unicode.I;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_O', () async {
      int wordLastChar = Unicode.O;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_U', () async {
      int wordLastChar = Unicode.U;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_OE', () async {
      int wordLastChar = Unicode.OE;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_UE', () async {
      int wordLastChar = Unicode.UE;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_EE', () async {
      int wordLastChar = Unicode.EE;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.YIN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithN', () async {
      int wordLastChar = Unicode.NA;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.U;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithN', () async {
      int wordLastChar = Unicode.NA;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.UE;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithConsonant', () async {
      int wordLastChar = Unicode.GA;
      String result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      String expected = Suffix.UN;
      expect(expected, result);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithConsonant', () async {
      int wordLastChar = Unicode.GA;
      String result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      String expected = Suffix.UEN;
      expect(expected, result);
    });
  });
}
