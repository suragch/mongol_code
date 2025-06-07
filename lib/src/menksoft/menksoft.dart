/// This class contains the coded values for the glyphs in the
/// old Menksoft fonts. Unlike Mongolian Unicode, they encode text
/// according to the written shape.
class Menksoft {
  static const int menksoftStart = 0xE234;
  static const int menksoftEnd = 0xE34F;

  // Private Use Area glyph values
  static const int birga = 0xE234;
  static const int ellipsis = 0xE235;
  static const int comma = 0xE236;
  static const int fullStop = 0xE237;
  static const int colon = 0xE238;
  static const int fourDots = 0xE239;
  static const int todoSoftHyphen = 0xE23A;
  static const int sibeSyllableBoundaryMarker = 0xE23B;
  static const int manchuComma = 0xE23C;
  static const int manchuFullStop = 0xE23D;
  static const int nirugu = 0xE23E;
  static const int birgaWithOrnament = 0xE23F;
  static const int rotatedBirga = 0xE240;
  static const int doubleBirgaWithOrnament = 0xE241;
  static const int tripleBirgaWithOrnament = 0xE242;
  static const int middleDot = 0xE243;
  static const int zero = 0xE244;
  static const int one = 0xE245;
  static const int two = 0xE246;
  static const int three = 0xE247;
  static const int four = 0xE248;
  static const int five = 0xE249;
  static const int six = 0xE24A;
  static const int seven = 0xE24B;
  static const int eight = 0xE24C;
  static const int nine = 0xE24D;
  static const int questionExclamation = 0xE24E;
  static const int exclamationQuestion = 0xE24F;
  static const int exclamation = 0xE250;
  static const int question = 0xE251;
  static const int semicolon = 0xE252;
  static const int leftParenthesis = 0xE253;
  static const int rightParenthesis = 0xE254;
  static const int leftAngleBracket = 0xE255;
  static const int rightAngleBracket = 0xE256;
  static const int leftTortoiseShellBracket = 0xE257;
  static const int rightTortoiseShellBracket = 0xE258;
  static const int leftDoubleAngleBracket = 0xE259;
  static const int rightDoubleAngleBracket = 0xE25A;
  static const int leftWhiteCornerBracket = 0xE25B;
  static const int rightWhiteCornerBracket = 0xE25C;
  static const int fullWidthComma = 0xE25D;
  static const int x = 0xE25E;
  static const int referenceMark = 0xE25F; // 0x203b
  static const int enDash = 0xE260; // TODO is that what this is?
  static const int emDash = 0xE261; // TODO is that what this is?
  static const int unknownSpace = 0xE262; // TODO what is this?
  static const int nonbreakingSpace = 0xE263;

  // These are in the order of the China National Standards committee 2023
  // document for Mongolian presentation characters. This should be the same
  // Unicode encoding as the Baiti font.

  // Bp = looks better after B, P (and other rounded like Q, G, F, K, KH)
  // mvs = final glyph variant for MVS
  // tooth = the ending of this character matches a following character that slants left (for example, a tooth)
  // stem = the ending of this character matches a following character that starts with a vertical stem
  // round = the ending of this character matches a round following character (feminine QG)
  static const int aStart = 0xE264;
  static const int aIsol = 0xE264; // also FVS3
  static const int aIsolFvs1 = 0xE265;
  static const int aIsolFvs2 = 0xE26A;
  static const int aInit = 0xE266; // also FVS2
  static const int aInitFvs1 = 0xE267;
  static const int aMedi = 0xE26C;
  static const int aMediBp = 0xE26D;
  static const int aMediFvs1 = 0xE26E;
  static const int aMediUnknown = 0xE26F;
  static const int aFina = 0xE268; // also FVS2
  static const int aFinaBp = 0xE26B; // const A following BPKF
  static const int aFinaFvs1 = 0xE269;
  static const int aFinaMvs = 0xE26A; // gv for MVS + A

  static const int eStart = 0xE270;
  static const int eIsol = 0xE270;
  static const int eIsolFvs1 = 0xE274;
  static const int eInit = 0xE271;
  static const int eInitFvs1 = 0xE272;
  static const int eMedi = 0xE276;
  static const int eMediBp = 0xE277;
  static const int eMediUnknown = 0xE278;
  static const int eFina = 0xE273;
  static const int eFinaBp = 0xE275; // const E following BPKF
  static const int eFinaFvs1 = 0xE269; // no E glyph so using A
  static const int eFinaMvs = 0xE274; // gv for MVS + E

  static const int iStart = 0xE279;
  static const int iIsol = 0xE279;
  static const int iIsolFvs1 = 0xE282; // suffix
  static const int iInit = 0xE27A;
  static const int iInitFvs1 = 0xE280; // suffix
  static const int iMedi = 0xE27E;
  static const int iMediBp = 0xE27F;
  static const int iMediFvs1 = 0xE27D; // short then long tooth
  static const int iMediFvs2 = 0xE281; // double long tooth
  static const int iFina = 0xE27B;
  static const int iFinaBp = 0xE27C;

  static const int oStart = 0xE283;
  static const int oIsol = 0xE283;
  static const int oInit = 0xE284;
  static const int oMedi = 0xE289;
  static const int oMediBp = 0xE28A;
  static const int oMediFvs1 = 0xE288;
  static const int oFina = 0xE285; // swirl
  static const int oFinaFvs1 = 0xE286; // gedes
  static const int oFinaFvs1Bp = 0xE287;

  static const int uStart = 0xE28B;
  static const int uIsol = 0xE28B;
  static const int uIsolFvs1 = 0xE28D; // suffix
  static const int uInit = 0xE28C;
  static const int uInitFvs1 = 0xE292; // suffix
  static const int uMedi = 0xE291;
  static const int uMediBp = 0xE292;
  static const int uMediFvs1 = 0xE290;
  static const int uFina = 0xE28D;
  static const int uFinaFvs1 = 0xE28E;
  static const int uFinaFvs1Bp = 0xE28F;

  static const int oeStart = 0xE293;
  static const int oeIsol = 0xE293;
  static const int oeIsolFvs1 = 0xE294;
  static const int oeInit = 0xE295;
  static const int oeMedi = 0xE29E;
  static const int oeMediBp = 0xE29F;
  static const int oeMediFvs1 = 0xE29C;
  static const int oeMediFvs1Bp = 0xE29D;
  static const int oeMediFvs2 = 0xE29B;
  static const int oeFina = 0xE296;
  static const int oeFinaBp = 0xE29A;
  static const int oeFinaFvs1 = 0xE297;
  static const int oeFinaFvs1Bp = 0xE298;
  static const int oeFinaFvs2 = 0xE299;
  static const int oeFinaFvs2Bp = 0xE29A;

  static const int ueStart = 0xE2A0;
  static const int ueIsol = 0xE2A0;
  static const int ueIsolFvs1 = 0xE2A1;
  static const int ueIsolFvs2 = 0xE2A3;
  static const int ueInit = 0xE2A2;
  static const int ueInitFvs1 = 0xE2AC;
  static const int ueMedi = 0xE2AB; // no tooth
  static const int ueMediBp = 0xE2AC; // no tooth
  static const int ueMediFvs1 = 0xE2A9; // tooth
  static const int ueMediFvs1Bp = 0xE2AA; // tooth
  // short tooth first with later long tooth
  static const int ueMediFvs2 = 0xE2A8;
  static const int ueFina = 0xE2A3; // swirl
  static const int ueFinaBp = 0xE2A7; // no tooth
  static const int ueFinaFvs1 = 0xE2A4; // tooth
  static const int ueFinaFvs1Bp = 0xE2A5; // tooth
  static const int ueFinaFvs2 = 0xE2A6; // gedes
  static const int ueFinaFvs2Bp = 0xE2A7; // no tooth

  static const int eeStart = 0xE2AD;
  static const int eeIsol = 0xE2AD;
  static const int eeInit = 0xE2AE;
  static const int eeMedi = 0xE2B0;
  static const int eeFina = 0xE2AF;

  static const int naStart = 0xE2B1;
  static const int naIsol = 0xE2B3;
  static const int naIsolFvs1 = 0xE2B4;
  static const int naInitTooth = 0xE2B1;
  static const int naInitStem = 0xE2B3;
  static const int naInitFvs1Tooth = 0xE2B2;
  static const int naInitFvs1Stem = 0xE2B4;
  static const int naMediTooth = 0xE2B8; // undotted
  static const int naMediStem = 0xE2BA; // undotted
  static const int naMediFvs1Tooth = 0xE2B7; // dotted
  static const int naMediFvs1Stem = 0xE2B9; // dotted
  static const int naMediFvs1Mvs = 0xE2B6;
  static const int naMediFvs2Mvs = 0xE2B5;
  static const int naMediNg = 0xE2C0;
  static const int naMediFvs1Ng = 0xE2BF;
  static const int naFina = 0xE2B5;
  static const int naFinaFvs1 = 0xE2B6;

  static const int angStart = 0xE2BB;
  static const int angIsol = 0xE2BC;
  static const int angInitTooth = 0xE2BC;
  static const int angInitRound = 0xE2BD;
  static const int angInitStem = 0xE2BE;
  static const int angMediTooth = 0xE2BC; // good for following tooth
  // good for following round letter like B P H K
  static const int angMediRound = 0xE2BD;
  // good for following stem letter like J CH R
  static const int angMediStem = 0xE2BE;
  static const int angFina = 0xE2BB;
  static const int angEnd = 0xE2BE;

  static const int baStart = 0xE2C1;
  static const int baIsol = 0xE2C1;
  static const int baInitTooth = 0xE2C1;
  static const int baInitOu = 0xE2C2;
  static const int baInitStem = 0xE2C7; // using medial stem
  static const int baMediTooth = 0xE2C5;
  static const int baMediOu = 0xE2C6;
  static const int baMediStem = 0xE2C7;
  static const int baFina = 0xE2C3;
  static const int baFinaFvs1 = 0xE2C4;

  static const int paStart = 0xE2C8;
  static const int paIsol = 0xE2C8;
  static const int paInitTooth = 0xE2C8;
  static const int paInitOu = 0xE2C9;
  static const int paInitStem = 0xE2CD; // using medial stem
  static const int paMediTooth = 0xE2CB;
  static const int paMediOu = 0xE2CC;
  static const int paMediStem = 0xE2CD;
  static const int paFina = 0xE2CA;

  static const int qaStart = 0xE2CE;
  static const int qaIsol = 0xE2D2;
  static const int qaIsolFvs1 = 0xE2D3;
  static const int qaIsolFvs2 = 0xE2D0;
  static const int qaIsolFvs4 = 0xE2D1; // dotted feminine
  static const int qaInitTooth = 0xE2CE;
  static const int qaInitStem = 0xE2D2;
  static const int qaInitFvs1Tooth = 0xE2CF; // dotted masculine
  static const int qaInitFvs1Stem = 0xE2D3; // dotted masculine
  static const int qaInitFvs2 = 0xE2D0; // feminine
  static const int qaInitFvs2Ou = 0xE2D4; // feminine
  static const int qaInitFvs4 = 0xE2D1; // dotted feminine
  static const int qaInitFvs4Ou = 0xE2D5; // dotted feminine
  static const int qaMediTooth = 0xE2D8; // two teeth
  static const int qaMediStem = 0xE2DC; // two teeth
  static const int qaMediFvs1 = 0xE2D9; // dotted teeth
  static const int qaMediFvs2 = 0xE2DA; // feminine
  static const int qaMediFvs2Ou = 0xE2DD; // feminine
  static const int qaMediFvs2Cons = 0xE2DF; // feminine before consonant
  static const int qaMediFvs4 = 0xE2DB; // dotted feminine
  static const int qaMediFvs4Ou = 0xE2DE;
  // dotted feminine before consonant
  static const int qaMediFvs4Cons = 0xE2E0;
  static const int qaMediMvs = 0xE2D6;
  static const int qaMediFvs1Mvs = 0xE2D7; // dotted
  static const int qaFina = 0xE2D6;
  static const int qaFinaFvs1 = 0xE2D7; // dotted

  static const int gaStart = 0xE2E1;
  static const int gaIsol = 0xE2E4;
  static const int gaIsolFvs1 = 0xE2E5;
  static const int gaIsolFvs2 = 0xE2E3; // feminine
  static const int gaIsolFvs4 = 0xE2D1; // dotted feminine (using QA glyph)
  static const int gaInitTooth = 0xE2E1; // dotted
  static const int gaInitStem = 0xE2E4; // dotted
  static const int gaInitFvs1Tooth = 0xE2E2; // non-dotted masculine
  static const int gaInitFvs1Stem = 0xE2E5; // non-dotted masculine
  static const int gaInitFvs2 = 0xE2E3; // feminine
  static const int gaInitFvs2Ou = 0xE2E6; // feminine
  static const int gaInitFvs4 = 0xE2D1; // dotted feminine (using QA glyph)
  static const int gaInitFvs4Ou = 0xE2D5; // dotted feminine (using QA glyph)
  static const int gaMedi = 0xE2EE; // two teeth no dots
  static const int gaMediFvs1Tooth = 0xE2EA; // dotted two teeth
  static const int gaMediFvs1Stem = 0xE2EC; // dotted two teeth
  static const int gaMediFvs2 = 0xE2EB; // feminine
  static const int gaMediFvs2Ou = 0xE2ED; // feminine
  static const int faMediFvs2Tooth = 0xE2EF; // feminine before consonant
  static const int gaMediFvs2Stem = 0xE2F0; // feminine before consonant
  static const int gaMediFvs4 = 0xE2DB; // dotted feminine (using QA glyph)
  static const int gaMediFvs4Ou = 0xE2DE; // dotted feminine (using QA glyph)
  // dotted feminine before consonant (using QA glyph)
  static const int gaMediFvs4Cons = 0xE2E0;
  static const int gaMediFvs3Mvs = 0xE2E9;
  static const int gaMediFvs1Mvs = 0xE2D6; // (using QA glyph)
  static const int gaFina = 0xE2E8; // feminine
  static const int gaFinaFvs1 = 0xE2E7; // masculine
  static const int gaFinaFvs2 = 0xE2E8; // feminine
  static const int gaFinaFvs3 = 0xE2E9; // dotted masculine

  static const int maStart = 0xE2F1;
  static const int maIsol = 0xE2F2;
  static const int maInitTooth = 0xE2F1;
  static const int maInitStemLong = 0xE2F2;
  static const int maMediTooth = 0xE2F4;
  // long stem GV, use this if M or L follows
  static const int maMediStemLong = 0xE2F5;
  // use this if following a B, P, H, K, etc.
  static const int maMediBp = 0xE2F6;
  static const int maMediMvs = 0xE2F3;
  static const int maFina = 0xE2F3;

  static const int laStart = 0xE2F7;
  static const int laIsol = 0xE2F8;
  static const int laInitTooth = 0xE2F7;
  static const int laInitStemLong = 0xE2F8;
  static const int laMediTooth = 0xE2FA;
  static const int laMediStemLong = 0xE2FB; // use this if M or L follows
  // use this if following a B, P, H, K, etc.
  static const int laMediBp = 0xE2FC;
  static const int laMediMvs = 0xE2F9;
  static const int laFina = 0xE2F9;

  static const int saStart = 0xE2FD;
  static const int saIsol = 0xE2FE;
  static const int saInitTooth = 0xE2FD;
  static const int saInitStem = 0xE2FE;
  static const int saMediTooth = 0xE301;
  static const int saMediStem = 0xE302;
  static const int saMediMvs = 0xE2FF;
  static const int saMediFvs1Mvs = 0xE300;
  static const int saFina = 0xE2FF;
  static const int saFinaFvs1 = 0xE300;

  static const int shaStart = 0xE303;
  static const int shaIsol = 0xE304;
  static const int shaIsolFvs1 = 0xE2FE; // using SA glyph
  static const int shaInitTooth = 0xE303;
  static const int shaInitStem = 0xE304;
  static const int shaInitFvs1Tooth = 0xE2FD; // using SA glyph
  static const int shaInitFvs1Stem = 0xE2FE; // using SA glyph
  static const int shaMediTooth = 0xE306;
  static const int shaMediStem = 0xE307;
  static const int shaMediFvs1Tooth = 0xE301; // using SA glyph
  static const int shaMediFvs1Stem = 0xE302; // using SA glyph
  static const int shaMediMvs = 0xE305;
  static const int shaFina = 0xE305;

  static const int taStart = 0xE308;
  static const int taIsol = 0xE309;
  static const int taInitTooth = 0xE308;
  static const int taInitStem = 0xE309;
  static const int taMedi = 0xE30B;
  static const int taMediFvs1Tooth = 0xE30C;
  static const int taMediFvs1Stem = 0xE30D;
  static const int taFina = 0xE30A;

  static const int daStart = 0xE30E;
  static const int daIsol = 0xE310;
  static const int daIsolFvs1 = 0xE30F;
  static const int daInitTooth = 0xE30E;
  static const int daInitStem = 0xE30F;
  static const int daInitFvs1 = 0xE310; // left arm with loop
  static const int daMedi = 0xE314;
  static const int daMediFvs1 = 0xE313;
  static const int daFina = 0xE311;
  static const int daFinaFvs1 = 0xE312;

  static const int chaStart = 0xE315;
  static const int chaIsol = 0xE315;
  static const int chaInit = 0xE315;
  static const int chaMedi = 0xE317;
  static const int chaFina = 0xE316;

  static const int jaStart = 0xE318;
  static const int jaIsol = 0xE318;
  static const int jaIsolFvs1 = 0xE31C;
  static const int jaInitTooth = 0xE319;
  static const int jaInitStem = 0xE31A;
  static const int jaMedi = 0xE31D;
  static const int jaMediMvs = 0xE31C;
  static const int jaFina = 0xE31B;
  static const int jaFinaFvs1 = 0xE31C;

  static const int yaStart = 0xE31E;
  static const int yaIsol = 0xE31E; // hooked
  static const int yaIsolFvs1 = 0xE321; // straight
  static const int yaInit = 0xE31E; // hooked
  static const int yaInitFvs1 = 0xE321; // straight
  static const int yaMedi = 0xE320; // hooked
  static const int yaMediFvs1 = 0xE321; // straight
  static const int yaMediFvs2 = 0xE281; // double long tooth (using I glyph)
  static const int yaMediMvs = 0xE31F;
  static const int yaFina = 0xE31F;

  static const int raStart = 0xE322;
  static const int raIsol = 0xE322;
  static const int raInitTooth = 0xE323;
  static const int raInitStem = 0xE322;
  static const int raMediTooth = 0xE327;
  static const int raMediStem = 0xE326;
  static const int raMediMvs = 0xE325;
  static const int raFina = 0xE325;

  static const int waStart = 0xE329;
  static const int waIsol = 0xE329;
  static const int waInit = 0xE329;
  static const int waMedi = 0xE32C;
  static const int waMediFvs1 = 0xE286; // (using O glyph)
  static const int waMediMvs = 0xE32B;
  static const int waFina = 0xE32A;
  static const int waFinaFvs1 = 0xE32B;

  static const int faStart = 0xE32D;
  static const int faIsol = 0xE32D;
  static const int faInitTooth = 0xE32D;
  static const int faInitOu = 0xE32E;
  static const int faInitStem = 0xE332; // using medial stem
  static const int faMediTooth = 0xE330;
  static const int faMediOu = 0xE331;
  static const int faMediStem = 0xE332;
  static const int faFina = 0xE32F;

  static const int kaStart = 0xE333;
  static const int kaIsol = 0xE333;
  static const int kaInit = 0xE333;
  static const int kaInitOu = 0xE334;
  static const int kaMediTooth = 0xE336;
  static const int kaMediOu = 0xE337;
  static const int kaMediStem = 0xE338;
  static const int kaFina = 0xE335;

  static const int khaStart = 0xE339;
  static const int khaIsol = 0xE339;
  static const int initKha = 0xE339;
  static const int khaInitOu = 0xE33A;
  static const int khaMediTooth = 0xE33C;
  static const int khaMediOu = 0xE33D;
  static const int khaMediStem = 0xE33E;
  static const int khaFina = 0xE33B;

  static const int tsaStart = 0xE33F;
  static const int tsaIsol = 0xE33F;
  static const int tsaInit = 0xE33F;
  static const int tsaMedi = 0xE341;
  static const int tsaFina = 0xE340;

  static const int zaStart = 0xE342;
  static const int zaIsol = 0xE342;
  static const int zaInit = 0xE342;
  static const int zaMedi = 0xE344;
  static const int zaFina = 0xE343;

  static const int haaStart = 0xE345;
  static const int haaIsol = 0xE345;
  static const int haaInit = 0xE345;
  static const int haaMedi = 0xE347;
  static const int haaFina = 0xE346;

  static const int zraStart = 0xE348;
  static const int zraIsol = 0xE348;
  static const int zraInit = 0xE348;
  static const int zraMedi = 0xE349;
  static const int zraFina = 0xE34A;

  static const int lhaStart = 0xE34B;
  static const int lhaIsol = 0xE34B;
  static const int lhaInit = 0xE34B;
  static const int lhaMedi = 0xE34C;
  static const int lhaMediBp = 0xE34D;
  static const int lhaFina = 0xE34C;
  static const int lhaFinaBp = 0xE34D;

  static const int zhiStart = 0xE34E;
  static const int zhiIsol = 0xE34E;
  static const int zhiInit = 0xE34E;
  static const int zhiMedi = 0xE34E;
  static const int zhiFina = 0xE34E;

  static const int chiStart = 0xE34F;
  static const int chiIsol = 0xE34F;
  static const int chiInit = 0xE34F;
  static const int chiMedi = 0xE34F;
  static const int chiFina = 0xE34F;

  static bool isSpace(int codeUnit) {
    return codeUnit == nonbreakingSpace || codeUnit == unknownSpace;
  }

  static bool isLetter(int character) {
    return character >= aStart && character <= menksoftEnd;
  }

  static bool isConsonant(int character) {
    return character >= naStart && character <= chiFina;
  }

  static bool isVowel(int character) {
    return character >= aStart && character < naStart;
  }

  static bool isMasculineVowel(int character) {
    return (character >= aStart && character < eStart) ||
        (character >= oStart && character < oeStart);
  }

  static bool isFeminineVowel(int character) {
    return (character >= eStart && character < iStart) ||
        (character >= oeStart && character < naStart);
  }

  static bool isI(int character) {
    return character >= iStart && character < oStart;
  }

  static bool isInitialIsolateGlyph(int character) {
    if (character == 0) return false;
    return character == aIsol ||
        character == aIsolFvs1 ||
        character == aInit ||
        character == aInitFvs1 ||
        character == eIsol ||
        character == eInit ||
        character == eInitFvs1 ||
        character == iIsol ||
        character == iIsolFvs1 ||
        character == iInit ||
        character == oInit ||
        character == oIsol ||
        character == uIsol ||
        character == uStart ||
        character == oeIsol ||
        character == oeInit ||
        character == oeIsolFvs1 ||
        character == ueInit ||
        character == ueStart ||
        character == ueIsolFvs1 ||
        character == eeIsol ||
        character == eeInit ||
        character == naInitStem ||
        character == naInitTooth ||
        character == naInitFvs1Stem ||
        character == naInitFvs1Tooth ||
        character == baInitTooth ||
        character == baInitOu ||
        character == baInitStem ||
        character == paInitTooth ||
        character == paInitOu ||
        character == paInitStem ||
        character == qaInitFvs2 ||
        character == qaInitFvs2Ou ||
        character == qaInitFvs4 ||
        character == qaInitFvs4Ou ||
        character == qaInitFvs1Stem ||
        character == qaInitFvs1Tooth ||
        character == qaInitStem ||
        character == qaInitTooth ||
        character == gaInitFvs2 ||
        character == gaInitFvs2Ou ||
        character == gaInitFvs1Stem ||
        character == gaInitFvs1Tooth ||
        character == gaInitStem ||
        character == gaInitTooth ||
        character == maInitTooth ||
        character == maInitStemLong ||
        character == laInitTooth ||
        character == laInitStemLong ||
        character == saInitStem ||
        character == saInitTooth ||
        character == shaInitStem ||
        character == shaInitTooth ||
        character == taInitStem ||
        character == taInitTooth ||
        character == daInitFvs1 ||
        character == daInitStem ||
        character == daInitTooth ||
        character == chaInit ||
        character == jaInitStem ||
        character == jaInitTooth ||
        character == yaInit ||
        character == yaInitFvs1 ||
        character == raInitStem ||
        character == raInitTooth ||
        character == waInit ||
        character == faInitTooth ||
        character == faInitOu ||
        character == faInitStem ||
        character == kaInit ||
        character == kaInitOu ||
        character == initKha ||
        character == khaInitOu ||
        character == tsaInit ||
        character == zaInit ||
        character == haaInit ||
        character == zraInit ||
        character == lhaInit;
  }

  static bool isFinalIsolateGlyph(int character) {
    if (character == 0) return false;
    return character == aIsol ||
        character == aIsolFvs1 ||
        character == aFina ||
        character == aFinaBp ||
        character == aFinaFvs1 ||
        character == aFinaMvs ||
        character == eIsol ||
        character == eFina ||
        character == eFinaBp ||
        character == eFinaMvs ||
        character == iIsol ||
        character == iIsolFvs1 ||
        character == iFina ||
        character == iFinaBp ||
        character == oIsol ||
        character == oFina ||
        character == oFinaFvs1 ||
        character == uIsol ||
        character == uFina ||
        character == uFinaFvs1Bp ||
        character == uFinaFvs1 ||
        character == oeIsol ||
        character == oeIsolFvs1 ||
        character == oeFina ||
        character == oeFinaBp ||
        character == oeFinaFvs1 ||
        character == oeFinaFvs1Bp ||
        character == oeFinaFvs2 ||
        character == ueIsol ||
        character == ueIsolFvs1 ||
        character == ueFina ||
        character == ueFinaBp ||
        character == ueFinaFvs1 ||
        character == ueFinaFvs1Bp ||
        character == ueFinaFvs2 ||
        character == eeIsol ||
        character == eeFina ||
        character == naFina ||
        character == angFina ||
        character == baFina ||
        character == baFinaFvs1 ||
        character == paFina ||
        character == qaFina ||
        character == gaFina ||
        character == gaFinaFvs2 ||
        character == maFina ||
        character == laFina ||
        character == saFina ||
        character == saFinaFvs1 ||
        character == shaFina ||
        character == taFina ||
        character == daFina ||
        character == daFinaFvs1 ||
        character == chaFina ||
        character == jaFina ||
        character == yaFina ||
        character == raFina ||
        character == waFina ||
        character == waFinaFvs1 ||
        character == faFina ||
        character == kaFina ||
        character == khaFina ||
        character == tsaFina ||
        character == zaFina ||
        character == haaFina ||
        character == zraFina;
  }

  static bool isAng(int currentChar) {
    return (currentChar >= angStart && currentChar <= angEnd);
  }
}
