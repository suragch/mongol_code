// printResult(result, expected);

void printResult(String actual, String expected) {
  print(
    'actual:   \'${actual.codeUnits.map((e) => '\\u${e.toRadixString(16).toUpperCase()}').join()}\'\n'
    'expected: \'${expected.codeUnits.map((e) => '\\u${e.toRadixString(16).toUpperCase()}').join()}\'',
  );
}
