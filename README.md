## mongol_code

Unicode conversion library in Dart for traditional Mongolian script 

## Usage

A simple usage example:

```dart
MongolCode converter = MongolCode.instance;

// Unicode to Menksoft code
String unicodeInput = 'ᠮᠣᠩᠭᠣᠯ';
String menksoftResult = converter.unicodeToMenksoft(unicodeInput);
print(menksoftResult);

// Menksoft code to Unicode
String menksoftInput = "\uE2C1\uE27F\uE317\uE27E\uE2E8"; // bichig
String unicodeResult = converter.menksoftToUnicode(menksoftInput);
print(unicodeResult);
```

