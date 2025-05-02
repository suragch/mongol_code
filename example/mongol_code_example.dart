import 'package:mongol_code/alternative/convert.dart';
import 'package:mongol_code/mongol_code.dart';

void main() {
  final converter = MongolCode.instance;

  // Unicode to Menksoft code
  const unicodeInput = 'ᠮᠣᠩᠭᠣᠯ';
  final menksoftResult = convertUnicodeToMenksoft(unicodeInput);
  print(menksoftResult);

  // Menksoft code to Unicode
  const menksoftInput = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
  final unicodeResult = converter.menksoftToUnicode(menksoftInput);
  print(unicodeResult);
}
