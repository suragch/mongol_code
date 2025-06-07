import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Unicode -> Menksoft: Todo Script', () {
    test('todoAllTodoCode', () async {
      final unicode = 'ᡐᡆᡑᡆ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᡐᡆᡑᡆ';
      expect(result, expected);
    });

    test('todoMixedTodoMongolCode', () async {
      final unicode = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯ\u1820ᡋ\u1820'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯ\u1820ᡋ\u1820';
      expect(result, expected);
    });

    test('todoZWJ', () async {
      final unicode = '\u200Dᡐ\u200D'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200Dᡐ\u200D';
      expect(result, expected);
    });

    test('todoFVS', () async {
      final unicode = '\u1847\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u1847\u180B';
      expect(result, expected);
    });

    test('todoZwjFvsMix', () async {
      final unicode = '\u200D\u1847\u180B\u200D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200D\u1847\u180B\u200D';
      expect(result, expected);
    });
  });
}
