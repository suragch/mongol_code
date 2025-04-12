import 'package:mongol_code/alternative/convert.dart';
import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

MongolCode converter = MongolCode.instance;

String convertMenksoftToUnicode(String menksoft) {
  return converter.menksoftToUnicode(menksoft);
}

String convertToUnicodeAndBackAgain(String menksoft) {
  final unicode = converter.menksoftToUnicode(menksoft);
  return converter.unicodeToMenksoft(unicode);
}

void main() {
  group('Unicode -> Menksoft: Words', () {
    test('bichigWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭ'; // bichig
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2E8';
      expect(result, expected);
    });

    test('egeshigWord', () async {
      final unicode = 'ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ'; // EGESIG (NNBSP) INU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3';
      expect(result, expected);
    });

    test('bujigWord', () async {
      final unicode = 'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('chirigWord', () async {
      final unicode = 'ᠴᠢᠷᠢᠭ ᠮ\u1820ᠨᠢ'; // CHIRIG (NNBSP) MANI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
      expect(result, expected);
    });

    test('egchiWord', () async {
      final unicode = 'ᠡᠭᠴᠡ'; // EGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2F0\uE317\uE273';
      expect(result, expected);
    });

    test('qugjimWord', () async {
      final unicode = 'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('buridgelWord', () async {
      final unicode = 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ'; // BURIDGEL (NNBSP) IYEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      expect(result, expected);
    });

    test('sedqilWord', () async {
      final unicode = 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      expect(result, expected);
    });

    test('uiledburiWord', () async {
      final unicode = 'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      expect(result, expected);
    });

    test('jeligudqenWord', () async {
      final unicode = 'ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ'; // JELIGUDQEN (NNBSP) U
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
      expect(result, expected);
    });

    test('manggalWord', () async {
      final unicode =
          'ᠮ\u1820ᠩᠭ\u1820ᠯ ᠳᠤᠷ ᠢᠶ\u1820ᠨ ᠳ\u1820ᠭ\u1820ᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('dengWord', () async {
      final unicode = 'ᠳ᠋ᠦᠩ ᠢ'; // D(FVS1)UNG (NNBSP) I
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE310\uE2A9\uE2BB\uE263\uE282';
      expect(result, expected);
    });

    test('sodnamWord', () async {
      final unicode =
          'ᠰᠣᠳᠨ\u1820ᠮ \u1820ᠴ\u1820 ᠪ\u1820ᠨ \u1820ᠴ\u1820ᠭ\u1820ᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('lhagbaWord', () async {
      final unicode = 'ᡀ\u1820ᠭᠪ\u1820 ᠯᠤᠭ᠎\u1820'; // LHAGBA (NNBSP) LUG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      expect(result, expected);
    });

    test('chebegmedWord', () async {
      final unicode = 'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      expect(result, expected);
    });

    test('tsementWord', () async {
      final unicode = 'ᠼᠧᠮᠧᠨᠲ ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; // TSEMENT (NNBSP) TAYIGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('uniyeWord', () async {
      final unicode = 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEYIGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('qoyinaWord', () async {
      final unicode = 'ᠬᠣᠶᠢᠨ᠎\u1820'; // QOYIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A';
      expect(result, expected);
    });

    test('angnaWord', () async {
      final unicode = '\u1820ᠩᠨ᠎\u1820'; // ANGN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BE\uE2B6\uE26A';
      expect(result, expected);
    });

    test('chinggaWord', () async {
      final unicode = 'ᠴᠢᠩᠭ᠎\u1820'; // CHINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      expect(result, expected);
    });

    test('chingalaquWord', () async {
      final unicode = 'ᠴᠢᠩᠭ\u1820ᠯ\u1820ᠬᠤ'; // CHINGGALAQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      expect(result, expected);
    });

    test('daljiygsanWord', () async {
      final unicode = 'ᠳ\u1820ᠯᠵᠢᠶᠭᠰ\u1820ᠨ'; // DALJIYGSAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
      expect(result, expected);
    });

    test('ilbigchiWord', () async {
      final unicode = 'ᠢᠯᠪᠢᠭᠴᠢ'; // ILBIGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B';
      expect(result, expected);
    });

    test('bichigchiWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭᠴᠢ'; // BICHIGCHI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B';
      expect(result, expected);
    });

    test('sigsiglequWord', () async {
      final unicode = 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2EF\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      expect(result, expected);
    });

    test('diglimsigsenWord', () async {
      final unicode = 'ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ'; // DIGLIMSIGSEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EF\uE301\uE276\uE2B5';
      expect(result, expected);
    });

    test('chigigligWord', () async {
      final unicode = 'ᠴᠢᠭᠢᠭᠯᠢᠭ'; // CHIGIGLIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8';
      expect(result, expected);
    });

    test('monggeWord', () async {
      final unicode = 'ᠮᠥᠩᠭᠡ'; // MONGGE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE29C\uE2BD\uE2EB\uE275';
      expect(result, expected);
    });

    test('kinoWord', () async {
      final unicode = 'ᠺᠢᠨᠣ᠋'; // KINO(FVS1)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE333\uE27F\uE2B9\uE286';
      expect(result, expected);
    });

    test('bayigulquWord', () async {
      final unicode = 'ᠪ\u1820ᠶᠢᠭᠤᠯᠬᠤ'; // BAYIGULQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D';
      expect(result, expected);
    });

    test('gregWord', () async {
      final unicode = 'ᠭᠷᠧᠭ'; // GREG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2E3\uE327\uE2B0\uE2E8';
      expect(result, expected);
    });

    test('motorWord', () async {
      final unicode = 'ᠮᠣᠲ᠋ᠣᠷ'; // MOT(FVS1)OR
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE289\uE30D\uE289\uE325';
      expect(result, expected);
    });

    test('neigemligWord', () async {
      final unicode = 'ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ'; // NEYIGEMLIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
      expect(result, expected);
    });

    test('mongolWord', () async {
      final unicode = 'ᠮᠣᠩᠭᠣᠯ'; // MONGGOL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9';
      expect(result, expected);
    });

    test('yatugaWord', () async {
      final unicode = 'ᠶ\u1820ᠲᠤᠭ᠎\u1820'; // YATUG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A';
      expect(result, expected);
    });

    test('olaganaWord', () async {
      final unicode = 'ᠤᠯ\u1820ᠭ\u1820ᠨ᠎\u1820'; // OLAGAN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A';
      expect(result, expected);
    });

    test('bichiglequWord', () async {
      final unicode = 'ᠪᠢᠴᠢᠭᠯᠡᠬᠦ'; // BICHIGLEQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      expect(result, expected);
    });

    test('programWord', () async {
      final unicode = 'ᠫᠷᠣᠭ᠍ᠷ\u1820ᠮ'; // PROG(FVS3)RAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3';
      expect(result, expected);
    });

    test('kartWord', () async {
      final unicode = 'ᠺ\u1820ᠷᠲ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE333\uE26D\uE326\uE30A';
      expect(result, expected);
    });

    test('dungnelteWord', () async {
      final unicode = 'ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ'; // D(FVS1)UNGNELTE
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273';
      expect(result, expected);
    });

    test('gramWord', () async {
      final unicode = 'ᠭᠷ\u1820ᠮ'; // GRAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2E3\uE327\uE26C\uE2F3';
      expect(result, expected);
    });

    test('minggaWord', () async {
      final unicode = 'ᠮᠢᠩᠭ᠎\u1820'; // MINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      expect(result, expected);
    });

    test('naimaWord', () async {
      final unicode = 'ᠨ\u1820\u200Dᠢᠮ\u1820'; // NA(ZWJ)IMA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      expect(result, expected);
    });

    test('naimaWordMenksoftVersion', () async {
      final unicode = 'ᠨ\u1820ᠢ\u180Cᠮ\u1820'; // NAI(FVS2)MA (not defined in Unicode 10.0)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      expect(result, expected);
    });

    test('naijaWord', () async {
      final unicode = 'ᠨ\u1820ᠢᠵ\u1820'; // NAIJA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE281\uE31D\uE268';
      expect(result, expected);
    });

    test('nayijaWord', () async {
      final unicode = 'ᠨ\u1820ᠶᠢᠵ\u1820'; // NAYIJA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE321\uE27E\uE31D\uE268';
      expect(result, expected);
    });

    test('bainaWord', () async {
      final unicode = 'ᠪ\u1820ᠢᠨ᠎\u1820'; // BAIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      expect(result, expected);
    });

    test('bayinaWord', () async {
      final unicode = 'ᠪ\u1820ᠶᠢᠨ᠎\u1820'; // BAYIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A';
      expect(result, expected);
    });

    test('baiinaWord', () async {
      final unicode = 'ᠪ\u1820ᠢᠢᠨ᠎\u1820'; // BAIIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      expect(result, expected);
    });

    test('saihanWord', () async {
      final unicode = 'ᠰ\u1820ᠶᠢᠬ\u1820ᠨ'; // SAYIHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5';
      expect(result, expected);
    });

    test('sayihanWord', () async {
      final unicode = 'ᠰ\u1820ᠶ\u180Bᠢᠬ\u1820ᠨ'; // SAY(FVS1)IHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      expect(result, expected);
    });

    test('sayiWord', () async {
      final unicode = 'ᠰ\u1820ᠶ\u180Bᠢ'; // SAY(FVS1)I
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27B';
      expect(result, expected);
    });

    test('taiWord', () async {
      final unicode = 'ᠲ\u1820ᠢ'; // TAI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE308\uE26C\uE27B';
      expect(result, expected);
    });

    test('namayiWord', () async {
      final unicode = 'ᠨ\u1820ᠮ\u1820ᠶᠢ'; // NAMAYI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      expect(result, expected);
    });

    test('eyimuWord', () async {
      final unicode = 'ᠡᠶᠢᠮᠦ'; // EYIMU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE321\uE27E\uE2F5\uE2A3';
      expect(result, expected);
    });

    test('soyolWord', () async {
      final unicode = 'ᠰᠣᠶᠣᠯ'; // SOYOL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FE\uE289\uE320\uE289\uE2F9';
      expect(result, expected);
    });

    test('buuWord', () async {
      final unicode = 'ᠪᠦᠦ'; // BUU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C2\uE2AC\uE2A3';
      expect(result, expected);
    });

    test('quuWord', () async {
      final unicode = 'ᠬᠦᠦ'; // QUU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D4\uE2AA\uE2A3';
      expect(result, expected);
    });

    test('qeuqenWord', () async {
      final unicode = 'ᠬᠡᠦᠬᠡᠳ'; // QEUQEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311';
      expect(result, expected);
    });

    test('qeduyinWord', () async {
      final unicode = 'ᠬᠡᠳᠦᠶᠢᠨ'; // QEDUYIN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5';
      expect(result, expected);
    });

    test('qeduinWord', () async {
      final unicode = 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5';
      expect(result, expected);
    });

    test('anggliWord', () async {
      final unicode = '\u1820ᠩᠭᠯᠢ'; // ANGGLI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BD\uE2EB\uE2FC\uE27B';
      expect(result, expected);
    });

    test('asiglajuWord', () async {
      final unicode = '\u1820ᠰᠢᠭᠯ\u1820ᠵᠤ'; // ASIGLAJU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      expect(result, expected);
    });

    test('narangerelWord', () async {
      final unicode = 'ᠨ\u1820ᠷ\u1820ᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      expect(result, expected);
    });

    test('cholmonodoWord', () async {
      final unicode = 'ᠴᠣᠯᠮᠣᠨ\u200Dᠣ᠋ᠳᠣ'; // CHOLMON(ZWJ)O(FVS1)DO
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      expect(result, expected);
    });

    test('cholmonodo2Word', () async {
      final unicode = 'ᠴᠣᠯᠮᠣᠨᠣ᠋ᠳᠣ'; // CHOLMONO(FVS1)DO
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      expect(result, expected);
    });

    test('bayanunderWord', () async {
      final unicode = 'ᠪ\u1820ᠶ\u1820ᠨ\u200Dᠦ᠌ᠨᠳᠦᠷ'; // BAYAN(ZWJ)U(FVS1)NDUR
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
      expect(result, expected);
    });

    test('sodobiligWord', () async {
      final unicode = 'ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌'; // SODOBILIG(FVS2)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8';
      expect(result, expected);
    });

    test('anggilumchechegWord', () async {
      final unicode = '\u1820ᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8';
      expect(result, expected);
    });

    test('chechegmaWord', () async {
      final unicode = 'ᠴᠡᠴᠡᠭᠮ᠎ᠡ'; // CHECHEGM(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274';
      expect(result, expected);
    });

    test('sigDefaultWord', () async {
      final unicode = 'ᠰᠢᠭ'; // SIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2E8';
      expect(result, expected);
    });

    test('sigSpecifiedWord', () async {
      final unicode = 'ᠰᠢᠭ᠋'; // SIG(FVS1)
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE27E\uE2E7';
      expect(result, expected);
    });
  });

  group('Unicode -> Menksoft: Suffixes', () {
    test('yinSuffix', () async {
      final unicode = ' ᠶᠢᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27E\uE2B5';
      expect(result, expected);
    });

    test('unSuffix', () async {
      final unicode = ' ᠤᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE2B5';
      expect(result, expected);
    });

    test('uenSuffix', () async {
      final unicode = ' ᠦᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2B5';
      expect(result, expected);
    });

    test('uSuffix', () async {
      final unicode = ' ᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE28D';
      expect(result, expected);
    });

    test('ueSuffix', () async {
      final unicode = ' ᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2A3';
      expect(result, expected);
    });

    test('iSuffix', () async {
      final unicode = ' ᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE282';
      expect(result, expected);
    });

    test('yiSuffix', () async {
      final unicode = ' ᠶᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE321\uE27B';
      expect(result, expected);
    });

    test('duSuffix', () async {
      final unicode = ' ᠳᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE28D';
      expect(result, expected);
    });

    test('dueSuffix', () async {
      final unicode = ' ᠳᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2A3';
      expect(result, expected);
    });

    test('tuSuffix', () async {
      final unicode = ' ᠲᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE28D';
      expect(result, expected);
    });

    test('tueSuffix', () async {
      final unicode = ' ᠲᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2A3';
      expect(result, expected);
    });

    test('durSuffix', () async {
      final unicode = ' ᠳᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE291\uE325';
      expect(result, expected);
    });

    test('duerSuffix', () async {
      final unicode = ' ᠳᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE2AB\uE325';
      expect(result, expected);
    });

    test('turSuffix', () async {
      final unicode = ' ᠲᠤᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE291\uE325';
      expect(result, expected);
    });

    test('tuerSuffix', () async {
      final unicode = ' ᠲᠦᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE309\uE2AB\uE325';
      expect(result, expected);
    });

    test('daqiSuffix', () async {
      final unicode = ' ᠳ\u1820ᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2DA\uE27C';
      expect(result, expected);
    });

    test('deqiSuffix', () async {
      final unicode = ' ᠳᠡᠬᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2DA\uE27C';
      expect(result, expected);
    });

    test('achaSuffix', () async {
      final unicode = ' \u1820ᠴ\u1820'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE268';
      expect(result, expected);
    });

    test('echeSuffix', () async {
      final unicode = ' ᠡᠴᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE273';
      expect(result, expected);
    });

    test('barSuffix', () async {
      final unicode = ' ᠪ\u1820ᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE325';
      expect(result, expected);
    });

    test('berSuffix', () async {
      final unicode = ' ᠪᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE325';
      expect(result, expected);
    });

    test('iyarSuffix', () async {
      final unicode = ' ᠢᠶ\u1820ᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE325';
      expect(result, expected);
    });

    test('iyerSuffix', () async {
      final unicode = ' ᠢᠶᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE325';
      expect(result, expected);
    });

    test('taiSuffix', () async {
      final unicode = ' ᠲ\u1820ᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE27B';
      expect(result, expected);
    });

    test('teiSuffix', () async {
      final unicode = ' ᠲᠡᠢ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE27B';
      expect(result, expected);
    });

    test('lugaSuffix', () async {
      final unicode = ' ᠯᠤᠭ᠎\u1820'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE291\uE2E9\uE26A';
      expect(result, expected);
    });

    test('luegeSuffix', () async {
      final unicode = ' ᠯᠦᠭᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2F8\uE2AB\uE2EB\uE275';
      expect(result, expected);
    });

    test('banSuffix', () async {
      final unicode = ' ᠪ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE26D\uE2B5';
      expect(result, expected);
    });

    test('benSuffix', () async {
      final unicode = ' ᠪᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2C1\uE277\uE2B5';
      expect(result, expected);
    });

    test('iyanSuffix', () async {
      final unicode = ' ᠢᠶ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE26C\uE2B5';
      expect(result, expected);
    });

    test('iyenSuffix', () async {
      final unicode = ' ᠢᠶᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE280\uE321\uE276\uE2B5';
      expect(result, expected);
    });

    test('yuganSuffix', () async {
      final unicode = ' ᠶᠤᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('yuegenSuffix', () async {
      final unicode = ' ᠶᠦᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('daganSuffix', () async {
      final unicode = ' ᠳ\u1820ᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('degenSuffix', () async {
      final unicode = ' ᠳᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('taganSuffix', () async {
      final unicode = ' ᠲ\u1820ᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('tegenSuffix', () async {
      final unicode = ' ᠲᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('achaganSuffix', () async {
      final unicode = ' \u1820ᠴ\u1820ᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('echegenSuffix', () async {
      final unicode = ' ᠡᠴᠡᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('taiganSuffix', () async {
      final unicode = ' ᠲ\u1820ᠢᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('tayiganSuffix', () async {
      final unicode = ' ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('teigenSuffix', () async {
      final unicode = ' ᠲᠡᠢᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('teyigenSuffix', () async {
      final unicode = ' ᠲᠡᠶᠢᠭᠡᠨ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('udSuffix', () async {
      final unicode = ' ᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE311';
      expect(result, expected);
    });

    test('uedSuffix', () async {
      final unicode = ' ᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE311';
      expect(result, expected);
    });

    test('nugudSuffix', () async {
      final unicode = ' ᠨᠤᠭᠤᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE291\uE2EC\uE291\uE311';
      expect(result, expected);
    });

    test('nueguedSuffix', () async {
      final unicode = ' ᠨᠦᠭᠦᠳ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311';
      expect(result, expected);
    });

    test('narSuffix', () async {
      final unicode = ' ᠨ\u1820ᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE26C\uE325';
      expect(result, expected);
    });

    test('nerSuffix', () async {
      final unicode = ' ᠨᠡᠷ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2B1\uE276\uE325';
      expect(result, expected);
    });

    test('uuSuffix', () async {
      final unicode = ' ᠤᠤ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE292\uE28D';
      expect(result, expected);
    });

    test('ueueSuffix', () async {
      final unicode = ' ᠦᠦ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE2AC\uE2A3';
      expect(result, expected);
    });

    test('daSuffix', () async {
      final unicode = ' ᠳ\u1820'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE268';
      expect(result, expected);
    });

    test('deSuffix', () async {
      final unicode = ' ᠳᠡ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE310\uE273';
      expect(result, expected);
    });
  });

  group('Unicode -> Menksoft: Todo Script', () {
    test('todoAllTodoCode', () async {
      final unicode = 'ᡐᡆᡑᡆ'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᡐᡆᡑᡆ';
      expect(result, expected);
    });

    test('todoMixedTodoMongolCode', () async {
      final unicode = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯ\u1820ᡋ\u1820'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = 'ᠰᡇᠷᡋᡇᠯᡓᡅᠯ\u1820ᡋ\u1820';
      expect(result, expected);
    });

    test('todoZWJ', () async {
      final unicode = '\u200Dᡐ\u200D'; //
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200Dᡐ\u200D';
      expect(result, expected);
    });

    test('todoFVS', () async {
      final unicode = '\u1847\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u1847\u180B';
      expect(result, expected);
    });

    test('todoZwjFvsMix', () async {
      final unicode = '\u200D\u1847\u180B\u200D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\u200D\u1847\u180B\u200D';
      expect(result, expected);
    });
  });

  group('Unicode -> Menksoft: Other random tests', () {
    test('qmqShortTailM', () async {
      final unicode = 'ᠬᠮᠬ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2F4\uE2D6';
      expect(result, expected);
    });

    test('qlqShortTailL', () async {
      final unicode = 'ᠬᠯᠬ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2CE\uE2FA\uE2D6';
      expect(result, expected);
    });

    test('egnenBigG', () async {
      final unicode = 'ᠡᠭᠨᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2B7\uE276\uE2B5';
      expect(result, expected);
    });

    test('egmenBigG', () async {
      final unicode = 'ᠡᠭᠮᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2F6\uE276\uE2B5';
      expect(result, expected);
    });

    test('eglenBigG', () async {
      final unicode = 'ᠡᠭᠯᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EB\uE2FC\uE276\uE2B5';
      expect(result, expected);
    });

    test('egdenSmallG', () async {
      final unicode = 'ᠡᠭᠳᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE313\uE276\uE2B5';
      expect(result, expected);
    });

    test('egsenSmallG', () async {
      final unicode = 'ᠡᠭᠰᠡᠨ'; // KART
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE2EF\uE301\uE276\uE2B5';
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: non-Menksoft strings', () {
    test('emptyString', () async {
      final unicode = '';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '';
      expect(result, expected);
    });

    test('englishKeyboardChars', () async {
      final unicode = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#\$%^&*()-=_+`~;:\'" ,./<>?';
      expect(result, expected);
    });

    test('chineseChars', () async {
      final unicode = '中文';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '中文';
      expect(result, expected);
    });

    test('emojiChars', () async {
      final unicode = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      final result = convertMenksoftToUnicode(unicode);
      final expected = '\uD83D\uDE04\uD83D\uDD90\uD83C\uDFFC\uD83C\uDDF3\uD83C\uDDF4';
      expect(result, expected);
    });

    test('unicodeString', () async {
      final unicode = 'ᠮᠤᠩᠭᠤᠯ';
      final result = convertMenksoftToUnicode(unicode);
      final expected = 'ᠮᠤᠩᠭᠤᠯ';
      expect(result, expected);
    });
  });

  group('Menksoft -> Unicode: all isolate values', () {
    test('isolateE234', () async {
      final menksoft = '\uE234';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_BIRGA);
      expect(result, expected);
    });

    test('isolateE235', () async {
      final menksoft = '\uE235';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_ELLIPSIS);
      expect(result, expected);
    });

    test('isolateE236', () async {
      final menksoft = '\uE236';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COMMA);
      expect(result, expected);
    });

    test('isolateE237', () async {
      final menksoft = '\uE237';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FULL_STOP);
      expect(result, expected);
    });

    test('isolateE238', () async {
      final menksoft = '\uE238';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_COLON);
      expect(result, expected);
    });

    test('isolateE239', () async {
      final menksoft = '\uE239';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
      expect(result, expected);
    });

    test('isolateE23A', () async {
      final menksoft = '\uE23A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_TODO_SOFT_HYPHEN);
      expect(result, expected);
    });

    test('isolateE23B', () async {
      final menksoft = '\uE23B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
      expect(result, expected);
    });

    test('isolateE23C', () async {
      final menksoft = '\uE23C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_COMMA);
      expect(result, expected);
    });

    test('isolateE23D', () async {
      final menksoft = '\uE23D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_MANCHU_FULL_STOP);
      expect(result, expected);
    });

    test('isolateE23E', () async {
      final menksoft = '\uE23E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180A';
      expect(result, expected);
    });

    test('isolateE23F', () async {
      final menksoft = '\uE23F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE60'; //BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE240', () async {
      final menksoft = '\uE240';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE61'; // ROTATED_BIRGA
      expect(result, expected);
    });

    test('isolateE241', () async {
      final menksoft = '\uE241';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE62'; // DOUBLE_BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE242', () async {
      final menksoft = '\uE242';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\uD805\uDE63'; // TRIPLE_BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE243', () async {
      final menksoft = '\uE243';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MIDDLE_DOT);
      expect(result, expected);
    });

    test('isolateE244', () async {
      final menksoft = '\uE244';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ZERO);
      expect(result, expected);
    });

    test('isolateE245', () async {
      final menksoft = '\uE245';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_ONE);
      expect(result, expected);
    });

    test('isolateE246', () async {
      final menksoft = '\uE246';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_TWO);
      expect(result, expected);
    });

    test('isolateE247', () async {
      final menksoft = '\uE247';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_THREE);
      expect(result, expected);
    });

    test('isolateE248', () async {
      final menksoft = '\uE248';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FOUR);
      expect(result, expected);
    });

    test('isolateE249', () async {
      final menksoft = '\uE249';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_FIVE);
      expect(result, expected);
    });

    test('isolateE24A', () async {
      final menksoft = '\uE24A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SIX);
      expect(result, expected);
    });

    test('isolateE24B', () async {
      final menksoft = '\uE24B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_SEVEN);
      expect(result, expected);
    });

    test('isolateE24C', () async {
      final menksoft = '\uE24C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_EIGHT);
      expect(result, expected);
    });

    test('isolateE24D', () async {
      final menksoft = '\uE24D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.MONGOLIAN_DIGIT_NINE);
      expect(result, expected);
    });

    test('isolateE24E', () async {
      final menksoft = '\uE24E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(result, expected);
    });

    test('isolateE24F', () async {
      final menksoft = '\uE24F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(result, expected);
    });

    test('isolateE250', () async {
      final menksoft = '\uE250';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(result, expected);
    });

    test('isolateE251', () async {
      final menksoft = '\uE251';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(result, expected);
    });

    test('isolateE252', () async {
      final menksoft = '\uE252';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(result, expected);
    });

    test('isolateE253', () async {
      final menksoft = '\uE253';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(result, expected);
    });

    test('isolateE254', () async {
      final menksoft = '\uE254';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(result, expected);
    });

    test('isolateE255', () async {
      final menksoft = '\uE255';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('isolateE256', () async {
      final menksoft = '\uE256';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('isolateE257', () async {
      final menksoft = '\uE257';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('isolateE258', () async {
      final menksoft = '\uE258';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('isolateE259', () async {
      final menksoft = '\uE259';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('isolateE25A', () async {
      final menksoft = '\uE25A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('isolateE25B', () async {
      final menksoft = '\uE25B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(result, expected);
    });

    test('isolateE25C', () async {
      final menksoft = '\uE25C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
      expect(result, expected);
    });

    test('isolateE25D', () async {
      final menksoft = '\uE25D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_COMMA);
      expect(result, expected);
    });

    test('isolateE25E', () async {
      final menksoft = '\uE25E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.PUNCTUATION_X);
      expect(result, expected);
    });

    test('isolateE25F', () async {
      final menksoft = '\uE25F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.REFERENCE_MARK);
      expect(result, expected);
    });

    test('isolateE260', () async {
      final menksoft = '\uE260';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EN_DASH);
      expect(result, expected);
    });

    test('isolateE261', () async {
      final menksoft = '\uE261';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.VERTICAL_EM_DASH);
      expect(result, expected);
    });

    test('isolateE262', () async {
      final menksoft = '\uE262';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = ' '; // TODO is this really what is expected
      expect(result, expected);
    });

    test('isolateE263', () async {
      final menksoft = '\uE263';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Unicode.NNBS);
      expect(result, expected);
    });

    test('isolateE264', () async {
      final menksoft = '\uE264';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A]);
      expect(result, expected);
    });

    test('isolateE265', () async {
      final menksoft = '\uE265';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE266', () async {
      final menksoft = '\uE266';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE267', () async {
      final menksoft = '\uE267';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.A, Unicode.FVS1, Unicode.MONGOLIAN_NIRUGU]);
      expect(result, expected);
    });

    test('isolateE268', () async {
      final menksoft = '\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A]);
      expect(result, expected);
    });

    test('isolateE269', () async {
      final menksoft = '\uE269';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE26A', () async {
      final menksoft = '\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE26B', () async {
      final menksoft = '\uE26B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE26C', () async {
      final menksoft = '\uE26C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE26D', () async {
      final menksoft = '\uE26D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE26E', () async {
      final menksoft = '\uE26E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE26F', () async {
      final menksoft = '\uE26F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.A, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE270', () async {
      final menksoft = '\uE270';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E]);
      expect(result, expected);
    });

    test('isolateE271', () async {
      final menksoft = '\uE271';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE272', () async {
      final menksoft = '\uE272';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.E, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE273', () async {
      final menksoft = '\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E]);
      expect(result, expected);
    });

    test('isolateE274', () async {
      final menksoft = '\uE274';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE275', () async {
      final menksoft = '\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE276', () async {
      final menksoft = '\uE276';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE277', () async {
      final menksoft = '\uE277';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE278', () async {
      final menksoft = '\uE278';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.E, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE279', () async {
      final menksoft = '\uE279';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.I]);
      expect(result, expected);
    });

    test('isolateE27A', () async {
      final menksoft = '\uE27A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.I, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE27B', () async {
      final menksoft = '\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(result, expected);
    });

    test('isolateE27C', () async {
      final menksoft = '\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(result, expected);
    });

    test('isolateE27D', () async {
      final menksoft = '\uE27D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE27E', () async {
      final menksoft = '\uE27E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE27F', () async {
      final menksoft = '\uE27F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE280', () async {
      final menksoft = '\uE280';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE281', () async {
      final menksoft = '\uE281';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA, Unicode.I, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE282', () async {
      final menksoft = '\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(result, expected);
    });

    test('isolateE283', () async {
      final menksoft = '\uE283';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.O]);
      expect(result, expected);
    });

    test('isolateE284', () async {
      final menksoft = '\uE284';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.O, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE285', () async {
      final menksoft = '\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O]);
      expect(result, expected);
    });

    test('isolateE286', () async {
      final menksoft = '\uE286';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE287', () async {
      final menksoft = '\uE287';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE288', () async {
      final menksoft = '\uE288';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE289', () async {
      final menksoft = '\uE289';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE28A', () async {
      final menksoft = '\uE28A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE28B', () async {
      final menksoft = '\uE28B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.U]);
      expect(result, expected);
    });

    test('isolateE28C', () async {
      final menksoft = '\uE28C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.U, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE28D', () async {
      final menksoft = '\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(result, expected);
    });

    test('isolateE28E', () async {
      final menksoft = '\uE28E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE28F', () async {
      final menksoft = '\uE28F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE290', () async {
      final menksoft = '\uE290';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE291', () async {
      final menksoft = '\uE291';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE292', () async {
      final menksoft = '\uE292';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE293', () async {
      final menksoft = '\uE293';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.OE]);
      expect(result, expected);
    });

    test('isolateE294', () async {
      final menksoft = '\uE294';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE295', () async {
      final menksoft = '\uE295';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.OE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE296', () async {
      final menksoft = '\uE296';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE]);
      expect(result, expected);
    });

    test('isolateE297', () async {
      final menksoft = '\uE297';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE298', () async {
      final menksoft = '\uE298';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE299', () async {
      final menksoft = '\uE299';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE29A', () async {
      final menksoft = '\uE29A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.O, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE29B', () async {
      final menksoft = '\uE29B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS2, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE29C', () async {
      final menksoft = '\uE29C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE29D', () async {
      final menksoft = '\uE29D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE29E', () async {
      final menksoft = '\uE29E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE29F', () async {
      final menksoft = '\uE29F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.OE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2A0', () async {
      final menksoft = '\uE2A0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE]);
      expect(result, expected);
    });

    test('isolateE2A1', () async {
      final menksoft = '\uE2A1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2A2', () async {
      final menksoft = '\uE2A2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.UE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2A3', () async {
      final menksoft = '\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE]);
      expect(result, expected);
    });

    test('isolateE2A4', () async {
      final menksoft = '\uE2A4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2A5', () async {
      final menksoft = '\uE2A5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2A6', () async {
      final menksoft = '\uE2A6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2A7', () async {
      final menksoft = '\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2A8', () async {
      final menksoft = '\uE2A8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS2, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2A9', () async {
      final menksoft = '\uE2A9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2AA', () async {
      final menksoft = '\uE2AA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2AB', () async {
      final menksoft = '\uE2AB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2AC', () async {
      final menksoft = '\uE2AC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.UE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2AD', () async {
      final menksoft = '\uE2AD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.EE]);
      expect(result, expected);
    });

    test('isolateE2AE', () async {
      final menksoft = '\uE2AE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.EE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2AF', () async {
      final menksoft = '\uE2AF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.EE]);
      expect(result, expected);
    });

    test('isolateE2B0', () async {
      final menksoft = '\uE2B0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.EE, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B1', () async {
      final menksoft = '\uE2B1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA]);
      expect(result, expected);
    });

    test('isolateE2B2', () async {
      final menksoft = '\uE2B2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B3', () async {
      final menksoft = '\uE2B3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA]);
      expect(result, expected);
    });

    test('isolateE2B4', () async {
      final menksoft = '\uE2B4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B5', () async {
      final menksoft = '\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA]);
      expect(result, expected);
    });

    test('isolateE2B6', () async {
      final menksoft = '\uE2B6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS2, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B7', () async {
      final menksoft = '\uE2B7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B8', () async {
      final menksoft = '\uE2B8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2B9', () async {
      final menksoft = '\uE2B9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2BA', () async {
      final menksoft = '\uE2BA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2BB', () async {
      final menksoft = '\uE2BB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ANG]);
      expect(result, expected);
    });

    test('isolateE2BC', () async {
      final menksoft = '\uE2BC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(result, expected);
    });

    test('isolateE2BD', () async {
      final menksoft = '\uE2BD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(result, expected);
    });

    test('isolateE2BE', () async {
      final menksoft = '\uE2BE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ANG]);
      expect(result, expected);
    });

    test('isolateE2BF', () async {
      final menksoft = '\uE2BF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2C0', () async {
      final menksoft = '\uE2C0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.NA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2C1', () async {
      final menksoft = '\uE2C1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C2', () async {
      final menksoft = '\uE2C2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C3', () async {
      final menksoft = '\uE2C3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C4', () async {
      final menksoft = '\uE2C4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.BA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2C5', () async {
      final menksoft = '\uE2C5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C6', () async {
      final menksoft = '\uE2C6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C7', () async {
      final menksoft = '\uE2C7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.BA]);
      expect(result, expected);
    });

    test('isolateE2C8', () async {
      final menksoft = '\uE2C8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2C9', () async {
      final menksoft = '\uE2C9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2CA', () async {
      final menksoft = '\uE2CA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2CB', () async {
      final menksoft = '\uE2CB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2CC', () async {
      final menksoft = '\uE2CC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2CD', () async {
      final menksoft = '\uE2CD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.PA]);
      expect(result, expected);
    });

    test('isolateE2CE', () async {
      final menksoft = '\uE2CE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2CF', () async {
      final menksoft = '\uE2CF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(result, expected);
    });

    test('isolateE2D0', () async {
      final menksoft = '\uE2D0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2D1', () async {
      final menksoft = '\uE2D1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2D2', () async {
      final menksoft = '\uE2D2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2D3', () async {
      final menksoft = '\uE2D3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(result, expected);
    });

    test('isolateE2D4', () async {
      final menksoft = '\uE2D4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2D5', () async {
      final menksoft = '\uE2D5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2D6', () async {
      final menksoft = '\uE2D6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2D7', () async {
      final menksoft = '\uE2D7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2D8', () async {
      final menksoft = '\uE2D8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2D9', () async {
      final menksoft = '\uE2D9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2DA', () async {
      final menksoft = '\uE2DA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2DB', () async {
      final menksoft = '\uE2DB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2DC', () async {
      final menksoft = '\uE2DC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.QA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2DD', () async {
      final menksoft = '\uE2DD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2DE', () async {
      final menksoft = '\uE2DE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2DF', () async {
      final menksoft = '\uE2DF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2E0', () async {
      final menksoft = '\uE2E0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE2E1', () async {
      final menksoft = '\uE2E1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(result, expected);
    });

    test('isolateE2E2', () async {
      final menksoft = '\uE2E2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2E3', () async {
      final menksoft = '\uE2E3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2E4', () async {
      final menksoft = '\uE2E4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]);
      expect(result, expected);
    });

    test('isolateE2E5', () async {
      final menksoft = '\uE2E5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.QA]);
      expect(result, expected);
    });

    test('isolateE2E6', () async {
      final menksoft = '\uE2E6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2E7', () async {
      final menksoft = '\uE2E7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA]);
      expect(result, expected);
    });

    test('isolateE2E8', () async {
      final menksoft = '\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2]);
      expect(result, expected);
    });

    test('isolateE2E9', () async {
      final menksoft = '\uE2E9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS2, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2EA', () async {
      final menksoft = '\uE2EA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2EB', () async {
      final menksoft = '\uE2EB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2EC', () async {
      final menksoft = '\uE2EC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2ED', () async {
      final menksoft = '\uE2ED';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.GA]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2EE', () async {
      final menksoft = '\uE2EE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2EF', () async {
      final menksoft = '\uE2EF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2F0', () async {
      final menksoft = '\uE2F0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.GA, Unicode.FVS3, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2F1', () async {
      final menksoft = '\uE2F1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.MA]);
      expect(result, expected);
    });

    test('isolateE2F2', () async {
      final menksoft = '\uE2F2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.MA]);
      expect(result, expected);
    });

    test('isolateE2F3', () async {
      final menksoft = '\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA]);
      expect(result, expected);
    });

    test('isolateE2F4', () async {
      final menksoft = '\uE2F4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2F5', () async {
      final menksoft = '\uE2F5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2F6', () async {
      final menksoft = '\uE2F6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.MA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2F7', () async {
      final menksoft = '\uE2F7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LA]);
      expect(result, expected);
    });

    test('isolateE2F8', () async {
      final menksoft = '\uE2F8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LA]);
      expect(result, expected);
    });

    test('isolateE2F9', () async {
      final menksoft = '\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA]);
      expect(result, expected);
    });

    test('isolateE2FA', () async {
      final menksoft = '\uE2FA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2FB', () async {
      final menksoft = '\uE2FB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2FC', () async {
      final menksoft = '\uE2FC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE2FD', () async {
      final menksoft = '\uE2FD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SA]);
      expect(result, expected);
    });

    test('isolateE2FE', () async {
      final menksoft = '\uE2FE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SA]);
      expect(result, expected);
    });

    test('isolateE2FF', () async {
      final menksoft = '\uE2FF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA]);
      expect(result, expected);
    });

    test('isolateE300', () async {
      final menksoft = '\uE300';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE301', () async {
      final menksoft = '\uE301';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE302', () async {
      final menksoft = '\uE302';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE303', () async {
      final menksoft = '\uE303';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SHA]);
      expect(result, expected);
    });

    test('isolateE304', () async {
      final menksoft = '\uE304';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.SHA]);
      expect(result, expected);
    });

    test('isolateE305', () async {
      final menksoft = '\uE305';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA]);
      expect(result, expected);
    });

    test('isolateE306', () async {
      final menksoft = '\uE306';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE307', () async {
      final menksoft = '\uE307';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.SHA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE308', () async {
      final menksoft = '\uE308';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(result, expected);
    });

    test('isolateE309', () async {
      final menksoft = '\uE309';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(result, expected);
    });

    test('isolateE30A', () async {
      final menksoft = '\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA]);
      expect(result, expected);
    });

    test('isolateE30B', () async {
      final menksoft = '\uE30B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE30C', () async {
      final menksoft = '\uE30C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE30D', () async {
      final menksoft = '\uE30D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE30E', () async {
      final menksoft = '\uE30E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(result, expected);
    });

    test('isolateE30F', () async {
      final menksoft = '\uE30F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TA]);
      expect(result, expected);
    });

    test('isolateE310', () async {
      final menksoft = '\uE310';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.DA]);
      expect(result, expected);
    });

    test('isolateE311', () async {
      final menksoft = '\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA]);
      expect(result, expected);
    });

    test('isolateE312', () async {
      final menksoft = '\uE312';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.FVS1]);
      expect(result, expected);
    });

    test('isolateE313', () async {
      final menksoft = '\uE313';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.FVS1, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE314', () async {
      final menksoft = '\uE314';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.DA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE315', () async {
      final menksoft = '\uE315';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHA]);
      expect(result, expected);
    });

    test('isolateE316', () async {
      final menksoft = '\uE316';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.CHA]);
      expect(result, expected);
    });

    test('isolateE317', () async {
      final menksoft = '\uE317';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHA]);
      expect(result, expected);
    });

    test('isolateE318', () async {
      final menksoft = '\uE318';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(result, expected);
    });

    test('isolateE319', () async {
      final menksoft = '\uE319';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(result, expected);
    });

    test('isolateE31A', () async {
      final menksoft = '\uE31A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.JA]);
      expect(result, expected);
    });

    test('isolateE31B', () async {
      final menksoft = '\uE31B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.JA]);
      expect(result, expected);
    });

    test('isolateE31C', () async {
      final menksoft = '\uE31C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.I]);
      expect(result, expected);
    });

    test('isolateE31D', () async {
      final menksoft = '\uE31D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.JA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE31E', () async {
      final menksoft = '\uE31E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.YA]);
      expect(result, expected);
    });

    test('isolateE31F', () async {
      final menksoft = '\uE31F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA]);
      expect(result, expected);
    });

    test('isolateE320', () async {
      final menksoft = '\uE320';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.YA]);
      expect(result, expected);
    });

    test('isolateE321', () async {
      final menksoft = '\uE321';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.YA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE322', () async {
      final menksoft = '\uE322';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE323', () async {
      final menksoft = '\uE323';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE324', () async {
      final menksoft = '\uE324';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE325', () async {
      final menksoft = '\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE326', () async {
      final menksoft = '\uE326';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE327', () async {
      final menksoft = '\uE327';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE328', () async {
      final menksoft = '\uE328';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.RA]);
      expect(result, expected);
    });

    test('isolateE329', () async {
      final menksoft = '\uE329';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.WA]);
      expect(result, expected);
    });

    test('isolateE32A', () async {
      final menksoft = '\uE32A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.WA]);
      expect(result, expected);
    });

    test('isolateE32B', () async {
      final menksoft = '\uE32B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.U]);
      expect(result, expected);
    });

    test('isolateE32C', () async {
      final menksoft = '\uE32C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.WA]);
      expect(result, expected);
    });

    test('isolateE32D', () async {
      final menksoft = '\uE32D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE32E', () async {
      final menksoft = '\uE32E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE32F', () async {
      final menksoft = '\uE32F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE330', () async {
      final menksoft = '\uE330';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE331', () async {
      final menksoft = '\uE331';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE332', () async {
      final menksoft = '\uE332';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.FA]);
      expect(result, expected);
    });

    test('isolateE333', () async {
      final menksoft = '\uE333';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE334', () async {
      final menksoft = '\uE334';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE335', () async {
      final menksoft = '\uE335';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE336', () async {
      final menksoft = '\uE336';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE337', () async {
      final menksoft = '\uE337';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE338', () async {
      final menksoft = '\uE338';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KA]);
      expect(result, expected);
    });

    test('isolateE339', () async {
      final menksoft = '\uE339';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33A', () async {
      final menksoft = '\uE33A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33B', () async {
      final menksoft = '\uE33B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33C', () async {
      final menksoft = '\uE33C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33D', () async {
      final menksoft = '\uE33D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33E', () async {
      final menksoft = '\uE33E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.KHA]);
      expect(result, expected);
    });

    test('isolateE33F', () async {
      final menksoft = '\uE33F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TSA]);
      expect(result, expected);
    });

    test('isolateE340', () async {
      final menksoft = '\uE340';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.TSA]);
      expect(result, expected);
    });

    test('isolateE341', () async {
      final menksoft = '\uE341';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.TSA]);
      expect(result, expected);
    });

    test('isolateE342', () async {
      final menksoft = '\uE342';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZA]);
      expect(result, expected);
    });

    test('isolateE343', () async {
      final menksoft = '\uE343';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZA]);
      expect(result, expected);
    });

    test('isolateE344', () async {
      final menksoft = '\uE344';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZA]);
      expect(result, expected);
    });

    test('isolateE345', () async {
      final menksoft = '\uE345';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.HAA]);
      expect(result, expected);
    });

    test('isolateE346', () async {
      final menksoft = '\uE346';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.HAA]);
      expect(result, expected);
    });

    test('isolateE347', () async {
      final menksoft = '\uE347';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.HAA, Unicode.ZWJ]);
      expect(result, expected);
    });

    test('isolateE348', () async {
      final menksoft = '\uE348';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZRA]);
      expect(result, expected);
    });

    test('isolateE349', () async {
      final menksoft = '\uE349';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZRA]);
      expect(result, expected);
    });

    test('isolateE34A', () async {
      final menksoft = '\uE34A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.ZRA]);
      expect(result, expected);
    });

    test('isolateE34B', () async {
      final menksoft = '\uE34B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.LHA]);
      expect(result, expected);
    });

    test('isolateE34C', () async {
      final menksoft = '\uE34C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(result, expected);
    });

    test('isolateE34D', () async {
      final menksoft = '\uE34D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZWJ, Unicode.LHA]);
      expect(result, expected);
    });

    test('isolateE34E', () async {
      final menksoft = '\uE34E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.ZHI]);
      expect(result, expected);
    });

    test('isolateE34F', () async {
      final menksoft = '\uE34F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Unicode.CHI]);
      expect(result, expected);
    });
  });

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
      final expected = String.fromCharCode(Unicode.MONGOLIAN_SIBE_SYLLABLE_BOUNDARY_MARKER);
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
      final expected = String.fromCharCode(Unicode.QUESTION_EXCLAMATION_MARK);
      expect(result, expected);
    });

    test('punctuationExclamationQuestion', () async {
      final menksoft = Menksoft.EXCLAMATION_QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.EXCLAMATION_QUESTION_MARK);
      expect(result, expected);
    });

    test('punctuationExclamation', () async {
      final menksoft = Menksoft.EXCLAMATION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_EXCLAMATION_MARK);
      expect(result, expected);
    });

    test('punctuationQuestion', () async {
      final menksoft = Menksoft.QUESTION;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_QUESTION_MARK);
      expect(result, expected);
    });

    test('punctuationSemicolon', () async {
      final menksoft = Menksoft.SEMICOLON;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_SEMICOLON);
      expect(result, expected);
    });

    test('punctuationLeftParenthesis', () async {
      final menksoft = Menksoft.LEFT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationRightParenthesis', () async {
      final menksoft = Menksoft.RIGHT_PARENTHESIS;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_PARENTHESIS);
      expect(result, expected);
    });

    test('punctuationLeftAngleBracket', () async {
      final menksoft = Menksoft.LEFT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftBracket', () async {
      final menksoft = Menksoft.LEFT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightBracket', () async {
      final menksoft = Menksoft.RIGHT_TORTOISE_SHELL_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_TORTOISE_SHELL_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftDoubleAngleBracket', () async {
      final menksoft = Menksoft.LEFT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightDoubleAngleBracket', () async {
      final menksoft = Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_DOUBLE_ANGLE_BRACKET);
      expect(result, expected);
    });

    test('punctuationLeftWhiteCornerBracket', () async {
      final menksoft = Menksoft.LEFT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
      expect(result, expected);
    });

    test('punctuationRightWhiteCornerBracket', () async {
      final menksoft = Menksoft.RIGHT_WHITE_CORNER_BRACKET;
      final result = convertMenksoftToUnicode(String.fromCharCode(menksoft));
      final expected = String.fromCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
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
      final menksoft = '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3'; // EGESIG (NNBSP) INU
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
      final menksoft = '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
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
      final expected = 'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      expect(result, expected);
    });

    test('buridgelWord', () async {
      final menksoft = '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ'; // BURIDGEL (NNBSP) IYEN
      expect(result, expected);
    });

    test('sedqilWord', () async {
      final menksoft = '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      expect(result, expected);
    });

    test('uiledburiWord', () async {
      final menksoft = '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      expect(result, expected);
    });

    test('jeligudqenWord', () async {
      final menksoft = '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
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
      final menksoft = '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᡀ\u1820ᠭᠪ\u1820 ᠯᠤᠭ᠎\u1820'; // LHAGBA (NNBSP) LUG(MVS)A
      expect(result, expected);
    });

    test('chebegmedWord', () async {
      final menksoft = '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      expect(result, expected);
    });

    test('tsementWord', () async {
      final menksoft = '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠼᠧᠮᠧᠨᠲ ᠲ\u1820ᠶᠢᠭ\u1820ᠨ'; // TSEMENT (NNBSP) TAYIGAN
      expect(result, expected);
    });

    test('uniyeWord', () async {
      final menksoft = '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
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
      final menksoft = '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
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
      final menksoft = '\uE2FD\uE27E\uE2EB\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
      expect(result, expected);
    });

    test('diglimsigsenWord', () async {
      final menksoft = '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EB\uE301\uE276\uE2B5';
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
      final menksoft = '\uE2B1\uE276\uE321\uE27E\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
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
      final expected = 'ᠨ\u1820ᠢ\u180Cᠮ\u1820'; // NAI(FVS2)MA (not defined in Unicode 10.0)
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
      final menksoft = '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
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
      final menksoft = '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
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
      final menksoft = '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8';
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
