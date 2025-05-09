import 'package:mongol_code/mongol_code.dart';
import 'package:mongol_code/src/menksoft_word.dart';

String convertMenksoftToUnicode(String inputString) {
  if (inputString.isEmpty) return '';

  final outputString = StringBuffer();
  final menksoftWord = StringBuffer();

  // Loop through characters in string
  final length = inputString.length;
  for (var i = 0; i < length; i++) {
    final codeUnit = inputString.codeUnitAt(i);
    if (_isMenksoft(codeUnit) && !Menksoft.isMenksoftSpace(codeUnit)) {
      menksoftWord.writeCharCode(codeUnit);
      continue;
    }

    if (menksoftWord.length > 0) {
      _appendMenksoftWord(outputString, menksoftWord);
      menksoftWord.clear();
    }

    // A space starts a new Mongol word but is not itself a Mongol char
    if (Menksoft.isMenksoftSpace(codeUnit)) {
      menksoftWord.writeCharCode(codeUnit);
      continue;
    }

    // non-Menksoft character
    outputString.writeCharCode(codeUnit);
  }

  // Add any final substring
  if (menksoftWord.length > 0) {
    _appendMenksoftWord(outputString, menksoftWord);
  }

  return outputString.toString();
}

bool _isMenksoft(int codeUnit) {
  return codeUnit >= Menksoft.MENKSOFT_START && codeUnit <= Menksoft.MENKSOFT_END;
}

void _appendMenksoftWord(StringBuffer outputString, StringBuffer menksoftWord) {
  final unicodeWord = MenksoftWord(menksoftWord.toString()).convertToUnicode();
  outputString.write(unicodeWord);
}
