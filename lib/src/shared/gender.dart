import 'package:mongol_code/mongol_code.dart';

enum Gender { masculine, feminine, neuter }

Gender genderOf({required List<int> word, int? beforeIndex}) {
  int index = beforeIndex ?? word.length - 1;
  for (var i = index; i >= 0; i--) {
    if (Mongol.isMasculineVowel(word[i])) {
      return Gender.masculine;
    } else if (Mongol.isFeminineVowel(word[i])) {
      return Gender.feminine;
    }
  }
  return Gender.neuter;
}
