import 'package:mongol_code/mongol_code.dart';

void main() {
  // Unicode to Menksoft code
  const unicodeInput = 'ᠮᠣᠩᠭᠣᠯ';
  final menksoftResult = convertUnicodeToMenksoft(unicodeInput);
  print(menksoftResult);

  // Menksoft code to Unicode
  const menksoftInput = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
  final unicodeResult = convertMenksoftToUnicode(menksoftInput);
  print(unicodeResult);
}
