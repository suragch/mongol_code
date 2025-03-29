// Map nominal Unicode to basic info
import '../mongol_code.dart' hide Gender;
import 'models.dart';

const Map<int, int> unicodeToMenksoftPunctuation = {
  Unicode.VERTICAL_COMMA: Menksoft.FULL_WIDTH_COMMA,
  Unicode.VERTICAL_COLON: Menksoft.COLON,
  Unicode.VERTICAL_SEMICOLON: Menksoft.SEMICOLON,
  Unicode.VERTICAL_EXCLAMATION_MARK: Menksoft.EXCLAMATION,
  Unicode.VERTICAL_QUESTION_MARK: Menksoft.QUESTION,
  Unicode.VERTICAL_HORIZONTAL_ELLIPSIS: Menksoft.ELLIPSIS,
  Unicode.VERTICAL_EM_DASH: Menksoft.EM_DASH,
  Unicode.VERTICAL_EN_DASH: Menksoft.EN_DASH,
  Unicode.VERTICAL_LEFT_PARENTHESIS: Menksoft.LEFT_PARENTHESIS,
  Unicode.VERTICAL_RIGHT_PARENTHESIS: Menksoft.RIGHT_PARENTHESIS,
  Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET: Menksoft.LEFT_TORTOISE_SHELL_BRACKET,
  Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET: Menksoft.RIGHT_TORTOISE_SHELL_BRACKET,
  Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET: Menksoft.LEFT_DOUBLE_ANGLE_BRACKET,
  Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET: Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET,
  Unicode.VERTICAL_LEFT_ANGLE_BRACKET: Menksoft.LEFT_ANGLE_BRACKET,
  Unicode.VERTICAL_RIGHT_ANGLE_BRACKET: Menksoft.RIGHT_ANGLE_BRACKET,
  Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET: Menksoft.LEFT_WHITE_CORNER_BRACKET,
  Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET: Menksoft.RIGHT_WHITE_CORNER_BRACKET,
  Unicode.MIDDLE_DOT: Menksoft.MIDDLE_DOT,
  Unicode.REFERENCE_MARK: Menksoft.REFERENCE_MARK,
  Unicode.QUESTION_EXCLAMATION_MARK: Menksoft.QUESTION_EXCLAMATION,
  Unicode.EXCLAMATION_QUESTION_MARK: Menksoft.EXCLAMATION_QUESTION,
  Unicode.MONGOLIAN_BIRGA: Menksoft.BIRGA,
  Unicode.MONGOLIAN_ELLIPSIS: Menksoft.ELLIPSIS,
  Unicode.MONGOLIAN_COMMA: Menksoft.COMMA,
  Unicode.MONGOLIAN_FULL_STOP: Menksoft.FULL_STOP,
  Unicode.MONGOLIAN_COLON: Menksoft.COLON,
  Unicode.MONGOLIAN_FOUR_DOTS: Menksoft.FOUR_DOTS,
  Unicode.MONGOLIAN_TODO_SOFT_HYPHEN: Menksoft.TODO_SOFT_HYPHEN,
  Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER: Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER,
  Unicode.MONGOLIAN_MANCHU_COMMA: Menksoft.MANCHU_COMMA,
  Unicode.MONGOLIAN_MANCHU_FULL_STOP: Menksoft.MANCHU_FULL_STOP,
  Unicode.MONGOLIAN_DIGIT_ZERO: Menksoft.ZERO,
  Unicode.MONGOLIAN_DIGIT_ONE: Menksoft.ONE,
  Unicode.MONGOLIAN_DIGIT_TWO: Menksoft.TWO,
  Unicode.MONGOLIAN_DIGIT_THREE: Menksoft.THREE,
  Unicode.MONGOLIAN_DIGIT_FOUR: Menksoft.FOUR,
  Unicode.MONGOLIAN_DIGIT_FIVE: Menksoft.FIVE,
  Unicode.MONGOLIAN_DIGIT_SIX: Menksoft.SIX,
  Unicode.MONGOLIAN_DIGIT_SEVEN: Menksoft.SEVEN,
  Unicode.MONGOLIAN_DIGIT_EIGHT: Menksoft.EIGHT,
  Unicode.MONGOLIAN_DIGIT_NINE: Menksoft.NINE,
  Unicode.PUNCTUATION_X: Menksoft.X,
};

// Map Presentation Form ID (from Table 4, 6) to PUA code point
// Example: 0x0000 (ID) -> 0xE380 (PUA)
final Map<int, int> presentationIdToPua = {
  // !!! CRITICAL: Populate this map based on the PDF and PNG !!!
  // Example entries (PLACEHOLDERS - VERIFY AND COMPLETE):
  0x0000: 0xE380, // m. birga second form
  0x0001: 0xE381, // m. birga third form
  0x0004: 0xE384, // ml. a first initial form
  0x0005: 0xE385, // ml. a first medial form
  0x0007: 0xE387, // ml. e first initial form
  0x0008: 0xE388, // ml. a first final form
  0x0009: 0xE389, // ml. a second final form (oragshlig)
  0x000A: 0xE38A, // ml. i initial form
  0x000B: 0xE38B, // ml. i final form
  // ... map ALL relevant entries from Table 4 and Table 6
  // Ligatures from Table 6 (example)
  0x0100: 0xE480, // mli.ini-me ba
  0x0101: 0xE481, // mli.iso-fi ba
  // ... etc.

  // Map Control Characters / Punctuation directly if they have PUA forms
  // Example for MVS forms (Check Appendix B/Table 4 for IDs like 00DD, 00DE, 00DF)
  0x00DD: 0xE45D, // m. vowel separator invalid form (assuming ID 00DD maps here)
  0x00DE: 0xE45E, // m. vowel separator half width form
  0x00DF: 0xE45F, // m. vowel separator full width form
  // Example for NIRUGU (Check Table 4 ID 00A7)
  0x00A7: 0xE427, // m. nirugu (assuming ID 00A7 maps here)
  // Map FVS placeholders if needed (Table 4 IDs 00D9-00DC) - These likely won't be output
  // 0x00D9: 0xE459, // m. free variation selector one (Placeholder)
};

final Map<int, MongolianCharInfo> charInfoMap = {
  // !!! Populate this based on Table 3 and character properties !!!
  // Example entries:
  0x1820: MongolianCharInfo(0x1820, 'A', CharType.Vowel, Gender.Feminine),
  0x1821: MongolianCharInfo(0x1821, 'E', CharType.Vowel, Gender.Feminine),
  0x1822: MongolianCharInfo(0x1822, 'I', CharType.Vowel, Gender.Neutral),
  0x1823: MongolianCharInfo(0x1823, 'O', CharType.Vowel, Gender.Masculine),
  // ... consonants ...
  0x1828: MongolianCharInfo(0x1828, 'NA', CharType.Consonant, Gender.Neutral),
  0x182A: MongolianCharInfo(0x182A, 'BA', CharType.Consonant, Gender.Masculine), // Check gender assumption
  // ... control chars ...
  0x180A: MongolianCharInfo(0x180A, 'NIRUGU', CharType.NIRUGU, Gender.Neutral),
  0x180B: MongolianCharInfo(0x180B, 'FVS1', CharType.FVS, Gender.Neutral),
  0x180C: MongolianCharInfo(0x180C, 'FVS2', CharType.FVS, Gender.Neutral),
  0x180D: MongolianCharInfo(0x180D, 'FVS3', CharType.FVS, Gender.Neutral),
  0x180E: MongolianCharInfo(0x180E, 'MVS', CharType.MVS, Gender.Neutral),
  0x180F: MongolianCharInfo(0x180F, 'FVS4', CharType.FVS, Gender.Neutral),
  // ... punctuation ...
  0x1800: MongolianCharInfo(0x1800, 'BIRGA', CharType.Punctuation, Gender.Neutral),
  // ... etc.
};
