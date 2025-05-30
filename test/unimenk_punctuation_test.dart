import 'package:mongol_code/alternative/convert_unicode.dart';
import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Unicode -> Menksoft: Punctuation', () {
    test('punctuationBirga', () async {
      final unicode = Unicode.MONGOLIAN_BIRGA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.BIRGA);
      expect(result, expected);
    });

    test('punctuationEllipsis', () async {
      final unicode = Unicode.MONGOLIAN_ELLIPSIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ELLIPSIS);
      expect(result, expected);
    });

    test('punctuationComma', () async {
      final unicode = Unicode.MONGOLIAN_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.COMMA);
      expect(result, expected);
    });

    test('punctuationFullStop', () async {
      final unicode = Unicode.MONGOLIAN_FULL_STOP;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FULL_STOP);
      expect(result, expected);
    });
    test('punctuationColon', () async {
      final unicode = Unicode.MONGOLIAN_COLON;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.COLON);
      expect(result, expected);
    });

    test('punctuationFourDots', () async {
      final unicode = Unicode.MONGOLIAN_FOUR_DOTS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FOUR_DOTS);
      expect(result, expected);
    });

    test('punctuationTodoSoftHyphen', () async {
      final unicode = Unicode.MONGOLIAN_TODO_SOFT_HYPHEN;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.TODO_SOFT_HYPHEN);
      expect(result, expected);
    });

    test('punctuationSibeSyllableBoundaryMarker', () async {
      final unicode = Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(result, expected);
    });

    test('punctuationManchuComma', () async {
      final unicode = Unicode.MONGOLIAN_MANCHU_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MANCHU_COMMA);
      expect(result, expected);
    });

    test('punctuationManchuFullStop', () async {
      final unicode = Unicode.MONGOLIAN_MANCHU_FULL_STOP;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MANCHU_FULL_STOP);
      expect(result, expected);
    });

    test('punctuationNirugu', () async {
      final unicode = '\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.NIRUGU);
      expect(result, expected);
    });

    test('punctuationMiddleDot', () async {
      final unicode = Unicode.MIDDLE_DOT;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.MIDDLE_DOT);
      expect(result, expected);
    });

    test('punctuationZero', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_ZERO;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ZERO);
      expect(result, expected);
    });

    test('punctuationOne', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_ONE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.ONE);
      expect(result, expected);
    });

    test('punctuationTwo', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_TWO;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.TWO);
      expect(result, expected);
    });

    test('punctuationThree', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_THREE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.THREE);
      expect(result, expected);
    });

    test('punctuationFour', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_FOUR;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FOUR);
      expect(result, expected);
    });

    test('punctuationFive', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_FIVE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FIVE);
      expect(result, expected);
    });

    test('punctuationSix', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_SIX;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SIX);
      expect(result, expected);
    });

    test('punctuationSeven', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_SEVEN;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SEVEN);
      expect(result, expected);
    });

    test('punctuationEight', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_EIGHT;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EIGHT);
      expect(result, expected);
    });

    test('punctuationNine', () async {
      final unicode = Unicode.MONGOLIAN_DIGIT_NINE;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.NINE);
      expect(result, expected);
    });

    test('punctuationQuestionExclamation', () async {
      final unicode = Unicode.QUESTION_EXCLAMATION;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.QUESTION_EXCLAMATION);
      expect(result, expected);
    });

    test('punctuationExclamationQuestion', () async {
      final unicode = Unicode.EXCLAMATION_QUESTION;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EXCLAMATION_QUESTION);
      expect(result, expected);
    });

    test('punctuationExclamation', () async {
      final unicode = Unicode.FULLWIDTH_EXCLAMATION;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EXCLAMATION);
      expect(result, expected);
    });

    test('punctuationQuestion', () async {
      final unicode = Unicode.FULLWIDTH_QUESTION;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.QUESTION);
      expect(result, expected);
    });

    test('punctuationSemicolon', () async {
      final unicode = Unicode.FULLWIDTH_SEMICOLON;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.SEMICOLON);
      expect(result, expected);
    });

    test('punctuationLeftParenthesis', () async {
      final unicode = Unicode.FULLWIDTH_LEFT_PARENTHESIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationRightParenthesis', () async {
      final unicode = Unicode.FULLWIDTH_RIGHT_PARENTHESIS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationLeftAngleBracket', () async {
      final unicode = Unicode.LEFT_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightAngleBracket', () async {
      final unicode = Unicode.RIGHT_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final unicode = Unicode.LEFT_DOUBLE_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final unicode = Unicode.RIGHT_DOUBLE_ANGLE_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final unicode = Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.LEFT_WHITE_CORNER_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final unicode = Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.RIGHT_WHITE_CORNER_BRACKET);
      expect(result, expected);
    });

    test('punctuationFullWidthComma', () async {
      final unicode = Unicode.VERTICAL_COMMA;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.FULL_WIDTH_COMMA);
      expect(result, expected);
    });

    test('punctuationX', () async {
      final unicode = Unicode.PUNCTUATION_X;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.X);
      expect(result, expected);
    });

    test('punctuationReferenceMark', () async {
      final unicode = Unicode.REFERENCE_MARK;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.REFERENCE_MARK);
      expect(result, expected);
    });

    test('punctuationEnDash', () async {
      final unicode = Unicode.VERTICAL_EN_DASH;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EN_DASH);
      expect(result, expected);
    });

    test('punctuationEmDash', () async {
      final unicode = Unicode.VERTICAL_EM_DASH;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = String.fromCharCode(Menksoft.EM_DASH);
      expect(result, expected);
    });

    test('punctuationSuffixSpace', () async {
      final unicode = Unicode.NNBS;
      final result = convertUnicodeToMenksoft(String.fromCharCode(unicode));
      final expected = ''; // empty string, NNBS converted to MVS, which is invalid alone
      expect(result, expected);
    });
  });
}
