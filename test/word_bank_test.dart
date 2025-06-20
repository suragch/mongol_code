import 'package:mongol_code/src/menksoft/convert_menksoft.dart';
import 'package:mongol_code/src/unicode/convert_unicode.dart';
import 'package:test/test.dart';

import 'word_bank.dart';

String convertToUnicodeAndBackAgain(String menksoft) {
  final unicode = convertMenksoftToUnicode(menksoft);
  return convertUnicodeToMenksoft(unicode);
}

void printAll({
  required int index,
  required String initial,
  required String unicode,
  required String result,
}) {
  print(
    'index: $index\n'
    'initial: \'${initial.codeUnits.map((e) => '\\u${e.toRadixString(16).toUpperCase()}').join()}\'\n'
    'unicode: \'${unicode.codeUnits.map((e) => '\\u${e.toRadixString(16).toUpperCase()}').join()}\'\n'
    'result:  \'${result.codeUnits.map((e) => '\\u${e.toRadixString(16).toUpperCase()}').join()}\'',
  );
}

void main() {
  group('Bidirectional: Menksoft -> Unicode -> Menksoft', () {
    test('word bank', () async {
      final words = menksoftWords.split('\n');
      for (int i = 0; i < words.length; i++) {
        final menksoft = words[i].trim();
        final unicode = convertMenksoftToUnicode(menksoft);
        final menksoftAgain = convertUnicodeToMenksoft(unicode);
        if (menksoftAgain != menksoft) {
          printAll(
            index: i,
            initial: menksoft,
            unicode: unicode,
            result: menksoftAgain,
          );
        }
        expect(menksoftAgain, menksoft);
      }
    });
  });

  group('more edge cases', () {
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
  });
}
