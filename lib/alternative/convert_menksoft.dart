import 'package:mongol_code/mongol_code.dart';
import 'package:mongol_code/src/menksoft_word.dart';

String convertMenksoftToUnicode(String inputString) {
  if (inputString.isEmpty) return '';

  final outputString = <int>[];
  final menksoftWord = <int>[];

  // Loop through characters in string
  final length = inputString.length;
  for (var i = 0; i < length; i++) {
    final codeUnit = inputString.codeUnitAt(i);
    if (_isMenksoft(codeUnit) && !Menksoft.isMenksoftSpace(codeUnit)) {
      menksoftWord.add(codeUnit);
      continue;
    }

    if (menksoftWord.isNotEmpty) {
      _appendMenksoftWord(outputString, menksoftWord);
      menksoftWord.clear();
    }

    // A space starts a new Mongol word but is not itself a Mongol char
    if (Menksoft.isMenksoftSpace(codeUnit)) {
      menksoftWord.add(codeUnit);
      continue;
    }

    // non-Menksoft character
    outputString.add(codeUnit);
  }

  // Add any final substring
  if (menksoftWord.isNotEmpty) {
    _appendMenksoftWord(outputString, menksoftWord);
  }

  return String.fromCharCodes(outputString);
}

bool _isMenksoft(int codeUnit) {
  return codeUnit >= Menksoft.MENKSOFT_START && codeUnit <= Menksoft.MENKSOFT_END;
}

void _appendMenksoftWord(List<int> outputString, List<int> menksoftWord) {
  final unicodeWord = MenksoftWord(menksoftWord).convertToUnicode();
  outputString.addAll(unicodeWord);
}
