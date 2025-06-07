## mongol_code

Unicode conversion library in Dart for traditional Mongolian script 

Version 1.0 is a full rewrite according to the [GBT+25914-2023 standard](https://github.com/suragch/mongol_code/blob/master/supplemental/docs/GBT%2B25914-2023.pdf). If you find any behavior that doesn't adhere to the standard, please open an issue about it.

## Usage

A simple usage example:

```dart
// Unicode to Menksoft code
const unicodeInput = 'ᠮᠣᠩᠭᠣᠯ';
final menksoftResult = convertUnicodeToMenksoft(unicodeInput);
print(menksoftResult);

// Menksoft code to Unicode
const menksoftInput = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
final unicodeResult = convertMenksoftToUnicode(menksoftInput);
print(unicodeResult);
```

## Menksoft code

Menksoft code encodes glyph forms and letter values in the Unicode Private Use Area. Here are the glyphs from the font:

![Menksoft font glyphs](https://github.com/suragch/mongol_code/blob/master/supplemental/images/menksoft.png)
