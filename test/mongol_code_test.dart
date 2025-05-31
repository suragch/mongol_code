import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:mongol_code/alternative/convert_unicode.dart';
import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

MongolCode converter = MongolCode.instance;

String convertToUnicodeAndBackAgain(String menksoft) {
  final unicode = convertMenksoftToUnicode(menksoft);
  return convertUnicodeToMenksoft(unicode);
}

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
      final expected = String.fromCharCode(Unicode.NNBS);
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: Words', () {
    test('bichigWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭ';
      expect(result, expected);
    });

    test('egeshigWord', () async {
      final menksoft =
          '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3'; // EGESIG (NNBSP) INU
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ';
      expect(result, expected);
    });

    test('bujigWord', () async {
      final menksoft =
          '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ';
      expect(result, expected);
    });

    test('chirigWord', () async {
      final menksoft =
          '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠷᠢᠭ ᠮ\u1820ᠨᠢ'; // CHIRIG (NNBSP) MANI
      expect(result, expected);
    });

    test('egchiWord', () async {
      final menksoft = '\uE271\uE2F0\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠭᠴᠡ'; // EGCHI
      expect(result, expected);
    });

    test('qugjimWord', () async {
      final menksoft =
          '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      expect(result, expected);
    });

    test('buridgelWord', () async {
      final menksoft =
          '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ'; // BURIDGEL (NNBSP) IYEN
      expect(result, expected);
    });

    test('sedqilWord', () async {
      final menksoft =
          '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      expect(result, expected);
    });

    test('uiledburiWord', () async {
      final menksoft =
          '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      expect(result, expected);
    });

    test('jeligudqenWord', () async {
      final menksoft =
          '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ'; // JELIGUDQEN (NNBSP) U
      expect(result, expected);
    });

    test('manggalWord', () async {
      final menksoft =
          '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          'ᠮ\u1820ᠩᠭ\u1820ᠯ ᠳᠤᠷ ᠢᠶ\u1820ᠨ ᠳ\u1820ᠭ\u1820ᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      expect(result, expected);
    });

    test('dengWord', () async {
      final menksoft = '\uE310\uE2A9\uE2BB\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳ᠋ᠦᠩ ᠢ'; // D(FVS1)UNG (NNBSP) I
      expect(result, expected);
    });

    test('sodnamWord', () async {
      final menksoft =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          'ᠰᠣᠳᠨ\u1820ᠮ \u1820ᠴ\u1820 ᠪ\u1820ᠨ \u1820ᠴ\u1820ᠭ\u1820ᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      expect(result, expected);
    });

    test('lhagbaWord', () async {
      final menksoft =
          '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᡀ\u1820ᠭᠪ\u1820 ᠯᠤᠭ᠎\u1820'; // LHAGBA (NNBSP) LUG(MVS)A
      expect(result, expected);
    });

    test('chebegmedWord', () async {
      final menksoft =
          '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      expect(result, expected);
    });

    test('tsementWord', () async {
      final menksoft =
          '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠼᠧᠮᠧᠨᠲ ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; // TSEMENT (NNBSP) TAYIGAN
      expect(result, expected);
    });

    test('uniyeWord', () async {
      final menksoft =
          '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEYIGEN
      expect(result, expected);
    });

    test('qoyinaWord', () async {
      final menksoft = '\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠣᠶᠢᠨ᠎\u1820'; // QOYIN(MVS)A
      expect(result, expected);
    });

    test('angnaWord', () async {
      final menksoft = '\uE266\uE2BE\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1820ᠩᠨ᠎\u1820'; // ANGN(MVS)A
      expect(result, expected);
    });

    test('chinggaWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭ᠎\u1820'; // CHINGG(MVS)A
      expect(result, expected);
    });

    test('chingalaquWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭ\u1820ᠯ\u1820ᠬᠤ'; // CHINGGALAQU
      expect(result, expected);
    });

    test('daljiygsanWord', () async {
      final menksoft =
          '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳ\u1820ᠯᠵᠢᠶᠭᠰ\u1820ᠨ'; // DALJIYGSAN
      expect(result, expected);
    });

    test('ilbigchiWord', () async {
      final menksoft = '\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠢᠯᠪᠢᠭᠴᠢ'; // ILBIGCHI
      expect(result, expected);
    });

    test('bichigchiWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭᠴᠢ'; // BICHIGCHI
      expect(result, expected);
    });

    test('sigsiglequWord', () async {
      final menksoft =
          '\uE2FD\uE27E\uE2EB\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
      expect(result, expected);
    });

    test('diglimsigsenWord', () async {
      final menksoft =
          '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EB\uE301\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ'; // DIGLIMSIGSEN
      expect(result, expected);
    });

    test('chigigligWord', () async {
      final menksoft = '\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠭᠢᠭᠯᠢᠭ'; // CHIGIGLIG
      expect(result, expected);
    });

    test('monggeWord', () async {
      final menksoft = '\uE2F2\uE29C\uE2BD\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠥᠩᠭᠡ'; // MONGGE
      expect(result, expected);
    });

    test('kinoWord', () async {
      final menksoft = '\uE333\uE27F\uE2B9\uE286';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠺᠢᠨᠣ᠋'; // KINO(FVS1)
      expect(result, expected);
    });

    test('bayigulquWord', () async {
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪ\u1820ᠶᠢᠭᠤᠯᠬᠤ'; // BAYIGULQU
      expect(result, expected);
    });

    test('gregWord', () async {
      final menksoft = '\uE2E3\uE327\uE2B0\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠭᠷᠧᠭ'; // GREG
      expect(result, expected);
    });

    test('motorWord', () async {
      final menksoft = '\uE2F2\uE289\uE30D\uE289\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠣᠲ᠋ᠣᠷ'; // MOT(FVS1)OR
      expect(result, expected);
    });

    test('neigemligWord', () async {
      final menksoft =
          '\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ'; // NEYIGEMLIG
      expect(result, expected);
    });

    test('mongolWord', () async {
      final menksoft = '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠣᠩᠭᠣᠯ'; // MONGGOL
      expect(result, expected);
    });

    test('yatugaWord', () async {
      final menksoft = '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠶ\u1820ᠲᠤᠭ᠎\u1820'; // YATUG(MVS)A
      expect(result, expected);
    });

    test('olaganaWord', () async {
      final menksoft = '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠤᠯ\u1820ᠭ\u1820ᠨ᠎\u1820'; // OLAGAN(MVS)A
      expect(result, expected);
    });

    test('bichiglequWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠢᠴᠢᠭᠯᠡᠬᠦ'; // BICHIGLEQU
      expect(result, expected);
    });

    test('programWord', () async {
      final menksoft = '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠫᠷᠣᠭ᠍ᠷ\u1820ᠮ'; // PROG(FVS3)RAM
      expect(result, expected);
    });

    test('kartWord', () async {
      final menksoft = '\uE333\uE26D\uE326\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠺ\u1820ᠷᠲ'; // KART
      expect(result, expected);
    });

    test('dungnelteWord', () async {
      final menksoft = '\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ'; // D(FVS1)UNGNELTE
      expect(result, expected);
    });

    test('gramWord', () async {
      final menksoft = '\uE2E3\uE327\uE26C\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠭᠷ\u1820ᠮ'; // GRAM
      expect(result, expected);
    });

    test('minggaWord', () async {
      final menksoft = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠢᠩᠭ᠎\u1820'; // MINGG(MVS)A
      expect(result, expected);
    });

    test('naimaWordMenksoftVersion', () async {
      final menksoft = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          'ᠨ\u1820ᠢ\u180Cᠮ\u1820'; // NAI(FVS2)MA (not defined in Unicode 10.0)
      expect(result, expected);
    });

    test('naijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE281\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨ\u1820ᠢᠵ\u1820'; // NAIJA
      expect(result, expected);
    });

    test('nayijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE321\uE27E\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨ\u1820ᠶᠢᠵ\u1820'; // NAYIJA
      expect(result, expected);
    });

    test('bainaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪ\u1820ᠢᠨ᠎\u1820'; // BAIN(MVS)A
      expect(result, expected);
    });

    test('bayinaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪ\u1820ᠶᠢᠨ᠎\u1820'; // BAYIN(MVS)A
      expect(result, expected);
    });

    test('baiinaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪ\u1820ᠢᠢᠨ᠎\u1820'; // BAIIN(MVS)A
      expect(result, expected);
    });

    test('saihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰ\u1820ᠶᠢᠬ\u1820ᠨ'; // SAYIHAN
      expect(result, expected);
    });

    test('sayihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰ\u1820ᠶ\u180Bᠢᠬ\u1820ᠨ'; // SAY(FVS1)IHAN
      expect(result, expected);
    });

    test('sayiWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰ\u1820ᠶ\u180Bᠢ'; // SAY(FVS1)I
      expect(result, expected);
    });

    test('taiWord', () async {
      final menksoft = '\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠲ\u1820ᠢ'; // TAI
      expect(result, expected);
    });

    test('namayiWord', () async {
      final menksoft = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨ\u1820ᠮ\u1820ᠶᠢ'; // NAMAYI
      expect(result, expected);
    });

    test('eyimuWord', () async {
      final menksoft = '\uE271\uE321\uE27E\uE2F5\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠡᠶᠢᠮᠦ'; // EYIMU
      expect(result, expected);
    });

    test('soyolWord', () async {
      final menksoft = '\uE2FE\uE289\uE320\uE289\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠣᠶᠣᠯ'; // SOYOL
      expect(result, expected);
    });

    test('buuWord', () async {
      final menksoft = '\uE2C2\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠦ'; // BUU
      expect(result, expected);
    });

    test('quuWord', () async {
      final menksoft = '\uE2D4\uE2AA\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠦᠦ'; // QUU
      expect(result, expected);
    });

    test('qeuqenWord', () async {
      final menksoft = '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠦᠬᠡᠳ'; // QEUQEN
      expect(result, expected);
    });

    test('qeduyinWord', () async {
      final menksoft = '\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠳᠦᠶᠢᠨ'; // QEDUYIN
      expect(result, expected);
    });

    test('qeduinWord', () async {
      final menksoft = '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
      expect(result, expected);
    });

    test('anggliWord', () async {
      final menksoft = '\uE266\uE2BD\uE2EB\uE2FC\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1820ᠩᠭᠯᠢ'; // ANGGLI
      expect(result, expected);
    });

    test('asiglajuWord', () async {
      final menksoft = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1820ᠰᠢᠭᠯ\u1820ᠵᠤ'; // ASIGLAJU
      expect(result, expected);
    });

    test('narangerelWord', () async {
      final menksoft =
          '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨ\u1820ᠷ\u1820ᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      expect(result, expected);
    });

    test('cholmonodoWord', () async {
      final menksoft = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ'; // CHOLMON(ZWJ)O(FVS1)DO
      expect(result, expected);
    });

    test('bayanunderWord', () async {
      final menksoft =
          '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪ\u1820ᠶ\u1820ᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ'; // BAYAN(ZWJ)U(FVS1)NDUR
      expect(result, expected);
    });

    test('sodobiligWord', () async {
      final menksoft = '\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌'; // SODOBILIG(FVS2)
      expect(result, expected);
    });

    test('anggilumchechegWord', () async {
      final menksoft =
          '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1820ᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
      expect(result, expected);
    });

    test('chechegmaWord', () async {
      final menksoft = '\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠡᠴᠡᠭᠮ᠎ᠡ'; // CHECHEGM(MVS)A
      expect(result, expected);
    });

    test('sigDefaultWord', () async {
      final menksoft = '\uE2FD\uE27E\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭ'; // SIG
      expect(result, expected);
    });

    test('sigSpecifiedWord', () async {
      final menksoft = '\uE2FD\uE27E\uE2E7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭ᠋'; // SIG(FVS1)
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: Suffixes', () {
    test('yinSuffix', () async {
      final menksoft = '\uE263\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢᠨ'; //
      expect(result, expected);
    });

    test('unSuffix', () async {
      final menksoft = '\uE263\uE292\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠨ'; //
      expect(result, expected);
    });

    test('uenSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠨ'; //
      expect(result, expected);
    });

    test('uSuffix', () async {
      final menksoft = '\uE263\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤ'; //
      expect(result, expected);
    });

    test('ueSuffix', () async {
      final menksoft = '\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦ'; //
      expect(result, expected);
    });

    test('iSuffix', () async {
      final menksoft = '\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢ'; //
      expect(result, expected);
    });

    test('yiSuffix', () async {
      final menksoft = '\uE263\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠢ'; //
      expect(result, expected);
    });

    test('duSuffix', () async {
      final menksoft = '\uE263\uE310\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤ'; //
      expect(result, expected);
    });

    test('dueSuffix', () async {
      final menksoft = '\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦ'; //
      expect(result, expected);
    });

    test('tuSuffix', () async {
      final menksoft = '\uE263\uE309\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤ'; //
      expect(result, expected);
    });

    test('tueSuffix', () async {
      final menksoft = '\uE263\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦ'; //
      expect(result, expected);
    });

    test('durSuffix', () async {
      final menksoft = '\uE263\uE310\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠤᠷ'; //
      expect(result, expected);
    });

    test('duerSuffix', () async {
      final menksoft = '\uE263\uE310\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠦᠷ'; //
      expect(result, expected);
    });

    test('turSuffix', () async {
      final menksoft = '\uE263\uE309\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠤᠷ'; //
      expect(result, expected);
    });

    test('tuerSuffix', () async {
      final menksoft = '\uE263\uE309\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠦᠷ'; //
      expect(result, expected);
    });

    test('daqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820ᠬᠢ'; //
      expect(result, expected);
    });

    test('deqiSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2DA\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠬᠢ'; //
      expect(result, expected);
    });

    test('achaSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' \u1820ᠴ\u1820'; //
      expect(result, expected);
    });

    test('echeSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡ'; //
      expect(result, expected);
    });

    test('barSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('berSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠷ'; //
      expect(result, expected);
    });

    test('iyarSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('iyerSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠷ'; //
      expect(result, expected);
    });

    test('taiSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠢ'; //
      expect(result, expected);
    });

    test('teiSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢ'; //
      expect(result, expected);
    });

    test('lugaSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠤᠭ᠎\u1820'; //
      expect(result, expected);
    });

    test('luegeSuffix', () async {
      final menksoft = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠯᠦᠭᠡ'; //
      expect(result, expected);
    });

    test('banSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE26D\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('benSuffix', () async {
      final menksoft = '\uE263\uE2C1\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠪᠡᠨ'; //
      expect(result, expected);
    });

    test('iyanSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('iyenSuffix', () async {
      final menksoft = '\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠢᠶᠡᠨ'; //
      expect(result, expected);
    });

    test('yuganSuffix', () async {
      final menksoft = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠤᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('yuegenSuffix', () async {
      final menksoft = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠶᠦᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('daganSuffix', () async {
      final menksoft = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('degenSuffix', () async {
      final menksoft = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('taganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('tegenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('achaganSuffix', () async {
      final menksoft = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' \u1820ᠴ\u1820ᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('echegenSuffix', () async {
      final menksoft = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠡᠴᠡᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('taiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠢᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('tayiganSuffix', () async {
      final menksoft = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; //
      expect(result, expected);
    });

    test('teigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠢᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('teyigenSuffix', () async {
      final menksoft = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠲᠡᠶᠢᠭᠡᠨ'; //
      expect(result, expected);
    });

    test('udSuffix', () async {
      final menksoft = '\uE263\uE292\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠳ'; //
      expect(result, expected);
    });

    test('uedSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠳ'; //
      expect(result, expected);
    });

    test('nugudSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠤᠭᠤᠳ'; //
      expect(result, expected);
    });

    test('nueguedSuffix', () async {
      final menksoft = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠦᠭᠦᠳ'; //
      expect(result, expected);
    });

    test('narSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE26C\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨ\u1820ᠷ'; //
      expect(result, expected);
    });

    test('nerSuffix', () async {
      final menksoft = '\uE263\uE2B1\uE276\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠨᠡᠷ'; //
      expect(result, expected);
    });

    test('uuSuffix', () async {
      final menksoft = '\uE263\uE292\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠤᠤ'; //
      expect(result, expected);
    });

    test('ueueSuffix', () async {
      final menksoft = '\uE263\uE2AC\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠦᠦ'; //
      expect(result, expected);
    });

    test('daSuffix', () async {
      final menksoft = '\uE263\uE310\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳ\u1820'; //
      expect(result, expected);
    });

    test('deSuffix', () async {
      final menksoft = '\uE263\uE310\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' ᠳᠡ'; //
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: more edge cases', () {
    test('dottedMedialNBeforeConsonant', () async {
      final menksoft = '\uE342\uE2F4\uE2B9\uE30A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE2F4\uE2B9\uE30A';
      expect(result, expected);
    });

    test('longToothUEinNonInitialSyllable', () async {
      final menksoft = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34B\uE26C\uE302\uE2A9\uE326\uE29E\uE2BB';
      expect(result, expected);
    });

    test('medialEEatWordEnd', () async {
      final menksoft = '\uE342\uE32C';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE342\uE32C';
      expect(result, expected);
    });

    test('spaceIsAddedBetweenToWordsWithoutSpace', () async {
      final menksoft = '\uE34F\uE27B\uE2FE\uE291\uE327\uE2D6\uE26A';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE34F\uE27B \uE2FE\uE291\uE327\uE2D6\uE26A';
      expect(result, expected);
    });

    test('jBecomesYAfterNNBS', () async {
      final menksoft = '\uE263\uE319\uE27E\uE2B5';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(result, expected);
    });

    test('wBetweenTwoConsonantsBecomesEE', () async {
      final menksoft = '\uE345\uE329\uE2BB';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE345\uE2B0\uE2BB';
      expect(result, expected);
    });

    test('eeBetweenTwoVowelsBecomesW', () async {
      final menksoft = '\uE266\uE2B0\uE268';
      final result = convertToUnicodeAndBackAgain(menksoft);
      final expected = '\uE266\uE32C\uE268';
      expect(result, expected);
    });
  });

  group('Unicode suffix lookup', () {
    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_A', () async {
      final wordLastChar = Unicode.A;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_E', () async {
      final wordLastChar = Unicode.E;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_I', () async {
      final wordLastChar = Unicode.I;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_O', () async {
      final wordLastChar = Unicode.O;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_U', () async {
      final wordLastChar = Unicode.U;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_OE', () async {
      final wordLastChar = Unicode.OE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_UE', () async {
      final wordLastChar = Unicode.UE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithVowel_EE', () async {
      final wordLastChar = Unicode.EE;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.YIN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.U;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithN', () async {
      final wordLastChar = Unicode.NA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UE;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forMasculineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.MASCULINE, wordLastChar);
      final expected = Suffix.UN;
      expect(result, expected);
    });

    test('getSuffixYinUnU_forFeminineWordEndingWithConsonant', () async {
      final wordLastChar = Unicode.GA;
      final result = Suffix.getSuffixYinUnU(Gender.FEMININE, wordLastChar);
      final expected = Suffix.UEN;
      expect(result, expected);
    });
  });
}
