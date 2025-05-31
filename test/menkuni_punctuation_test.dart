import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Menksoft -> Unicode: Punctuation', () {
    test('punctuationBirga', () async {
      final menksoft = Menksoft.BIRGA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(result, expected);
    });

    test('punctuationEllipsis', () async {
      final menksoft = Menksoft.ELLIPSIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(result, expected);
    });

    test('punctuationComma', () async {
      final menksoft = Menksoft.COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(result, expected);
    });

    test('punctuationFullStop', () async {
      final menksoft = Menksoft.FULL_STOP;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(result, expected);
    });
    test('punctuationColon', () async {
      final menksoft = Menksoft.COLON;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(result, expected);
    });

    test('punctuationFourDots', () async {
      final menksoft = Menksoft.FOUR_DOTS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(result, expected);
    });

    test('punctuationTodoSoftHyphen', () async {
      final menksoft = Menksoft.TODO_SOFT_HYPHEN;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(result, expected);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final menksoft = Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER,
      );
      expect(result, expected);
    });

    test('punctuationManchuComma', () async {
      final menksoft = Menksoft.MANCHU_COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(result, expected);
    });

    test('punctuationManchuFullStop', () async {
      final menksoft = Menksoft.MANCHU_FULL_STOP;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(result, expected);
    });

    test('punctuationNirugu', () async {
      final menksoft = Menksoft.NIRUGU;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = '\u180A';
      expect(result, expected);
    });

    test('punctuationMiddleDot', () async {
      final menksoft = Menksoft.MIDDLE_DOT;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(result, expected);
    });

    test('punctuationZero', () async {
      final menksoft = Menksoft.ZERO;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(result, expected);
    });

    test('punctuationOne', () async {
      final menksoft = Menksoft.ONE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(result, expected);
    });

    test('punctuationTwo', () async {
      final menksoft = Menksoft.TWO;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(result, expected);
    });

    test('punctuationThree', () async {
      final menksoft = Menksoft.THREE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(result, expected);
    });

    test('punctuationFour', () async {
      final menksoft = Menksoft.FOUR;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(result, expected);
    });

    test('punctuationFive', () async {
      final menksoft = Menksoft.FIVE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(result, expected);
    });

    test('punctuationSix', () async {
      final menksoft = Menksoft.SIX;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(result, expected);
    });

    test('punctuationSeven', () async {
      final menksoft = Menksoft.SEVEN;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(result, expected);
    });

    test('punctuationEight', () async {
      final menksoft = Menksoft.EIGHT;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(result, expected);
    });

    test('punctuationNine', () async {
      final menksoft = Menksoft.NINE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(result, expected);
    });

    test('punctuationQuestionExclamation', () async {
      final menksoft = Menksoft.QUESTION_EXCLAMATION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION);
      expect(result, expected);
    });

    test('punctuationExclamationQuestion', () async {
      final menksoft = Menksoft.EXCLAMATION_QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION);
      expect(result, expected);
    });

    test('punctuationExclamation', () async {
      final menksoft = Menksoft.EXCLAMATION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.FULLWIDTH_EXCLAMATION);
      expect(result, expected);
    });

    test('punctuationQuestion', () async {
      final menksoft = Menksoft.QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.FULLWIDTH_QUESTION);
      expect(result, expected);
    });

    test('punctuationSemicolon', () async {
      final menksoft = Menksoft.SEMICOLON;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.FULLWIDTH_SEMICOLON);
      expect(result, expected);
    });

    test('punctuationLeftParenthesis', () async {
      final menksoft = Menksoft.LEFT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.FULLWIDTH_LEFT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationRightParenthesis', () async {
      final menksoft = Menksoft.RIGHT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.FULLWIDTH_RIGHT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationLeftAngleBracket', () async {
      final menksoft = Menksoft.LEFT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.LEFT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.RIGHT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftBracket', () async {
      final menksoft = Menksoft.LEFT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET,
      );
      expect(result, expected);
    });

    test('punctuationRightBracket', () async {
      final menksoft = Menksoft.RIGHT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET,
      );
      expect(result, expected);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final menksoft = Menksoft.LEFT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.LEFT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final menksoft = Menksoft.LEFT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET,
      );
      expect(result, expected);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final menksoft = Menksoft.RIGHT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(
        Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET,
      );
      expect(result, expected);
    });

    test('punctuationFullWidthComma', () async {
      final menksoft = Menksoft.FULL_WIDTH_COMMA;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(result, expected);
    });

    test('punctuationX', () async {
      final menksoft = Menksoft.X;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(result, expected);
    });

    test('punctuationReferenceMark', () async {
      final menksoft = Menksoft.REFERENCE_MARK;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(result, expected);
    });

    test('punctuationEnDash', () async {
      final menksoft = Menksoft.EN_DASH;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(result, expected);
    });

    test('punctuationEmDash', () async {
      final menksoft = Menksoft.EM_DASH;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(result, expected);
    });

    test('punctuationSuffixSpace', () async {
      final menksoft = Menksoft.NONBREAKING_SPACE;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.SPACE);
      expect(result, expected);
    });
  });
}
