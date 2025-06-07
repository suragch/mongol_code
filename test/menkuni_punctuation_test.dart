import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Menksoft -> Unicode: Punctuation', () {
    test('punctuationBirga', () async {
      final menksoft = Menksoft.birga;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.birga);
      expect(result, expected);
    });

    test('punctuationEllipsis', () async {
      final menksoft = Menksoft.ellipsis;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.ellipsis);
      expect(result, expected);
    });

    test('punctuationComma', () async {
      final menksoft = Menksoft.comma;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.comma);
      expect(result, expected);
    });

    test('punctuationFullStop', () async {
      final menksoft = Menksoft.fullStop;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullStop);
      expect(result, expected);
    });
    test('punctuationColon', () async {
      final menksoft = Menksoft.colon;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.colon);
      expect(result, expected);
    });

    test('punctuationFourDots', () async {
      final menksoft = Menksoft.fourDots;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fourDots);
      expect(result, expected);
    });

    test('punctuationTodoSoftHyphen', () async {
      final menksoft = Menksoft.todoSoftHyphen;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.todoSoftHyphen);
      expect(result, expected);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final menksoft = Menksoft.sibeSyllableBoundaryMarker;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.sibeSyllableBoundaryMarker);
      expect(result, expected);
    });

    test('punctuationManchuComma', () async {
      final menksoft = Menksoft.manchuComma;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.manchuComma);
      expect(result, expected);
    });

    test('punctuationManchuFullStop', () async {
      final menksoft = Menksoft.manchuFullStop;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.manchuFullStop);
      expect(result, expected);
    });

    test('punctuationNirugu', () async {
      final menksoft = Menksoft.nirugu;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = '\u180A';
      expect(result, expected);
    });

    test('punctuationMiddleDot', () async {
      final menksoft = Menksoft.middleDot;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.middleDot);
      expect(result, expected);
    });

    test('punctuationZero', () async {
      final menksoft = Menksoft.zero;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitZero);
      expect(result, expected);
    });

    test('punctuationOne', () async {
      final menksoft = Menksoft.one;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitOne);
      expect(result, expected);
    });

    test('punctuationTwo', () async {
      final menksoft = Menksoft.two;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitTwo);
      expect(result, expected);
    });

    test('punctuationThree', () async {
      final menksoft = Menksoft.three;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitThree);
      expect(result, expected);
    });

    test('punctuationFour', () async {
      final menksoft = Menksoft.four;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitFour);
      expect(result, expected);
    });

    test('punctuationFive', () async {
      final menksoft = Menksoft.five;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitFive);
      expect(result, expected);
    });

    test('punctuationSix', () async {
      final menksoft = Menksoft.six;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitSix);
      expect(result, expected);
    });

    test('punctuationSeven', () async {
      final menksoft = Menksoft.seven;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitSeven);
      expect(result, expected);
    });

    test('punctuationEight', () async {
      final menksoft = Menksoft.eight;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitEight);
      expect(result, expected);
    });

    test('punctuationNine', () async {
      final menksoft = Menksoft.nine;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.digitNine);
      expect(result, expected);
    });

    test('punctuationQuestionExclamation', () async {
      final menksoft = Menksoft.questionExclamation;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.questionExclamation);
      expect(result, expected);
    });

    test('punctuationExclamationQuestion', () async {
      final menksoft = Menksoft.exclamationQuestion;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.exclamationQuestion);
      expect(result, expected);
    });

    test('punctuationExclamation', () async {
      final menksoft = Menksoft.exclamation;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullwidthExclamation);
      expect(result, expected);
    });

    test('punctuationQuestion', () async {
      final menksoft = Menksoft.question;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullwidthQuestion);
      expect(result, expected);
    });

    test('punctuationSemicolon', () async {
      final menksoft = Menksoft.semicolon;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullwidthSemicolon);
      expect(result, expected);
    });

    test('punctuationLeftParenthesis', () async {
      final menksoft = Menksoft.leftParenthesis;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullwidthLeftParenthesis);
      expect(result, expected);
    });

    test('punctuationRightParenthesis', () async {
      final menksoft = Menksoft.rightParenthesis;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.fullwidthRightParenthesis);
      expect(result, expected);
    });

    test('punctuationLeftAngleBracket', () async {
      final menksoft = Menksoft.leftAngleBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.leftAngleBracket);
      expect(result, expected);
    });

    test('punctuationRightAngleBracket', () async {
      final menksoft = Menksoft.rightAngleBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.rightAngleBracket);
      expect(result, expected);
    });

    test('punctuationLeftBracket', () async {
      final menksoft = Menksoft.leftTortoiseShellBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Mongol.verticalLeftTortoiseShellBracket,
      );
      expect(result, expected);
    });

    test('punctuationRightBracket', () async {
      final menksoft = Menksoft.rightTortoiseShellBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Mongol.verticalRightTortoiseShellBracket,
      );
      expect(result, expected);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final menksoft = Menksoft.leftDoubleAngleBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.leftDoubleAngleBracket);
      expect(result, expected);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final menksoft = Menksoft.rightDoubleAngleBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.rightDoubleAngleBracket);
      expect(result, expected);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final menksoft = Menksoft.leftWhiteCornerBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Mongol.verticalLeftWhiteCornerBracket,
      );
      expect(result, expected);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final menksoft = Menksoft.rightWhiteCornerBracket;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Mongol.verticalRightWhiteCornerBracket,
      );
      expect(result, expected);
    });

    test('punctuationFullWidthComma', () async {
      final menksoft = Menksoft.fullWidthComma;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.verticalComma);
      expect(result, expected);
    });

    test('punctuationX', () async {
      final menksoft = Menksoft.x;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.punctuationX);
      expect(result, expected);
    });

    test('punctuationReferenceMark', () async {
      final menksoft = Menksoft.referenceMark;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.referenceMark);
      expect(result, expected);
    });

    test('punctuationEnDash', () async {
      final menksoft = Menksoft.enDash;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.verticalEnDash);
      expect(result, expected);
    });

    test('punctuationEmDash', () async {
      final menksoft = Menksoft.emDash;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.verticalEmDash);
      expect(result, expected);
    });

    test('punctuationSuffixSpace', () async {
      final menksoft = Menksoft.nonbreakingSpace;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Mongol.space);
      expect(result, expected);
    });
  });
}
