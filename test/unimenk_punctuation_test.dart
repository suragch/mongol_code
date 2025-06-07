import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Unicode -> Menksoft: Punctuation', () {
    test('punctuationBirga', () async {
      final unicode = Mongol.birga;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.birga);
      expect(result, expected);
    });

    test('punctuationEllipsis', () async {
      final unicode = Mongol.ellipsis;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ellipsis);
      expect(result, expected);
    });

    test('punctuationComma', () async {
      final unicode = Mongol.comma;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.comma);
      expect(result, expected);
    });

    test('punctuationFullStop', () async {
      final unicode = Mongol.fullStop;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.fullStop);
      expect(result, expected);
    });
    test('punctuationColon', () async {
      final unicode = Mongol.colon;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.colon);
      expect(result, expected);
    });

    test('punctuationFourDots', () async {
      final unicode = Mongol.fourDots;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.fourDots);
      expect(result, expected);
    });

    test('punctuationTodoSoftHyphen', () async {
      final unicode = Mongol.todoSoftHyphen;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.todoSoftHyphen);
      expect(result, expected);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final unicode = Mongol.sibeSyllableBoundaryMarker;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.sibeSyllableBoundaryMarker);
      expect(result, expected);
    });

    test('punctuationManchuComma', () async {
      final unicode = Mongol.manchuComma;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.manchuComma);
      expect(result, expected);
    });

    test('punctuationManchuFullStop', () async {
      final unicode = Mongol.manchuFullStop;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.manchuFullStop);
      expect(result, expected);
    });

    test('punctuationNirugu', () async {
      final unicode = Mongol.nirugu;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.nirugu);
      expect(result, expected);
    });

    test('punctuationBirgaDecoration', () async {
      final unicode = '\u1800\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.birgaWithOrnament);
      expect(result, expected);
    });

    test('punctuationBirgaRotated', () async {
      final unicode = '\u1800\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.rotatedBirga);
      expect(result, expected);
    });

    test('punctuationBirgaDouble', () async {
      final unicode = '\u1800\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.doubleBirgaWithOrnament);
      expect(result, expected);
    });

    test('punctuationBirgaTriple', () async {
      final unicode = '\u1800\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tripleBirgaWithOrnament);
      expect(result, expected);
    });

    test('punctuationMiddleDot', () async {
      final unicode = Mongol.middleDot;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.middleDot);
      expect(result, expected);
    });

    test('punctuationZero', () async {
      final unicode = Mongol.digitZero;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.zero);
      expect(result, expected);
    });

    test('punctuationOne', () async {
      final unicode = Mongol.digitOne;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.one);
      expect(result, expected);
    });

    test('punctuationTwo', () async {
      final unicode = Mongol.digitTwo;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.two);
      expect(result, expected);
    });

    test('punctuationThree', () async {
      final unicode = Mongol.digitThree;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.three);
      expect(result, expected);
    });

    test('punctuationFour', () async {
      final unicode = Mongol.digitFour;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.four);
      expect(result, expected);
    });

    test('punctuationFive', () async {
      final unicode = Mongol.digitFive;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.five);
      expect(result, expected);
    });

    test('punctuationSix', () async {
      final unicode = Mongol.digitSix;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.six);
      expect(result, expected);
    });

    test('punctuationSeven', () async {
      final unicode = Mongol.digitSeven;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.seven);
      expect(result, expected);
    });

    test('punctuationEight', () async {
      final unicode = Mongol.digitEight;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.eight);
      expect(result, expected);
    });

    test('punctuationNine', () async {
      final unicode = Mongol.digitNine;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.nine);
      expect(result, expected);
    });

    test('punctuationQuestionExclamation', () async {
      final unicode = Mongol.questionExclamation;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.questionExclamation);
      expect(result, expected);
    });

    test('punctuationExclamationQuestion', () async {
      final unicode = Mongol.exclamationQuestion;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.exclamationQuestion);
      expect(result, expected);
    });

    test('punctuationExclamation', () async {
      final unicode = Mongol.fullwidthExclamation;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.exclamation);
      expect(result, expected);
    });

    test('punctuationQuestion', () async {
      final unicode = Mongol.fullwidthQuestion;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.question);
      expect(result, expected);
    });

    test('punctuationSemicolon', () async {
      final unicode = Mongol.fullwidthSemicolon;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.semicolon);
      expect(result, expected);
    });

    test('punctuationLeftParenthesis', () async {
      final unicode = Mongol.fullwidthLeftParenthesis;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.leftParenthesis);
      expect(result, expected);
    });

    test('punctuationRightParenthesis', () async {
      final unicode = Mongol.fullwidthRightParenthesis;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.rightParenthesis);
      expect(result, expected);
    });

    test('punctuationLeftAngleBracket', () async {
      final unicode = Mongol.leftAngleBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.leftAngleBracket);
      expect(result, expected);
    });

    test('punctuationRightAngleBracket', () async {
      final unicode = Mongol.rightAngleBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.rightAngleBracket);
      expect(result, expected);
    });

    test('punctuationLeftBracket', () async {
      final unicode = Mongol.verticalLeftTortoiseShellBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.leftTortoiseShellBracket);
      expect(result, expected);
    });

    test('punctuationRightBracket', () async {
      final unicode = Mongol.verticalRightTortoiseShellBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.rightTortoiseShellBracket);
      expect(result, expected);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final unicode = Mongol.leftDoubleAngleBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.leftDoubleAngleBracket);
      expect(result, expected);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final unicode = Mongol.rightDoubleAngleBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.rightDoubleAngleBracket);
      expect(result, expected);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final unicode = Mongol.verticalLeftWhiteCornerBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.leftWhiteCornerBracket);
      expect(result, expected);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final unicode = Mongol.verticalRightWhiteCornerBracket;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.rightWhiteCornerBracket);
      expect(result, expected);
    });

    test('punctuationFullWidthComma', () async {
      final unicode = Mongol.verticalComma;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.fullWidthComma);
      expect(result, expected);
    });

    test('punctuationX', () async {
      final unicode = Mongol.punctuationX;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.x);
      expect(result, expected);
    });

    test('punctuationReferenceMark', () async {
      final unicode = Mongol.referenceMark;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.referenceMark);
      expect(result, expected);
    });

    test('punctuationEnDash', () async {
      final unicode = Mongol.verticalEnDash;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.enDash);
      expect(result, expected);
    });

    test('punctuationEmDash', () async {
      final unicode = Mongol.verticalEmDash;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.emDash);
      expect(result, expected);
    });

    test('punctuationSuffixSpace', () async {
      final unicode = Mongol.nnbs;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected =
          ''; // empty string, NNBS converted to MVS, which is invalid alone
      expect(result, expected);
    });
  });
}
