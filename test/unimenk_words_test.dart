import 'package:mongol_code/alternative/convert_unicode.dart';
import 'package:test/test.dart';

void printResult(String result, String expected) {
  print(
    'actual:   ${result.codeUnits.map((e) => '0x${e.toRadixString(16).toUpperCase()}')}\n'
    'expected: ${expected.codeUnits.map((e) => '0x${e.toRadixString(16).toUpperCase()}')}',
  );
}
// printResult(result, expected);

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

    test('yugenWord', () async {
      final unicode = ' ᠶᠦᠭᠡᠨ'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5';
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
      final unicode = 'ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ'; // CHIRIG (NNBSP) MANI
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
      final unicode = 'ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
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

    test('sodnamPlusWord', () async {
      final unicode = 'ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('lhagbaWord', () async {
      final unicode = 'ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ'; // LHAGBA (NNBSP) LUG(MVS)A
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
      final unicode = 'ᠼᠧᠮᠧᠨᠲ ᠲᠠᠢᠭᠠᠨ'; // TSEMENT (NNBSP) TAIGAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5';
      expect(result, expected);
    });

    test('uniyeWord', () async {
      final unicode = 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEIGEN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5';
      expect(result, expected);
    });

    test('qoyinaWord', () async {
      final unicode = 'ᠬᠣᠢᠨ᠎ᠠ'; // QOIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D2\uE289\uE281\uE2B6\uE26A';
      expect(result, expected);
    });

    test('angnaWord', () async {
      final unicode = 'ᠠᠩᠨ᠎ᠠ'; // ANGN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BE\uE2B6\uE26A';
      expect(result, expected);
    });

    test('chinggaWord', () async {
      final unicode = 'ᠴᠢᠩᠭ᠎ᠠ'; // CHINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      expect(result, expected);
    });

    test('chingalaquWord', () async {
      final unicode = 'ᠴᠢᠩᠭᠠᠯᠠᠬᠤ'; // CHINGGALAQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      expect(result, expected);
    });

    test('daljiigsanWord', () async {
      final unicode = 'ᠳᠠᠯᠵᠢᠢᠭᠰᠠᠨ'; // DALJIIGSAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE27E\uE2EE\uE301\uE26C\uE2B5';
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

    test('baigulquWord', () async {
      final unicode = 'ᠪᠠᠢᠭᠤᠯᠬᠤ'; // BAIGULQU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE281\uE2EC\uE291\uE2FA\uE2DC\uE28D';
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
      final unicode = 'ᠨᠡᠢᠭᠡᠮᠯᠢᠭ'; // NEIGEMLIG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE276\uE281\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8';
      expect(result, expected);
    });

    test('mongolWord', () async {
      final unicode = 'ᠮᠣᠩᠭᠣᠯ'; // MONGGOL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9';
      expect(result, expected);
    });

    test('yatugaWord', () async {
      final unicode = 'ᠶᠠᠲᠤᠭ᠎ᠠ'; // YATUG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A';
      expect(result, expected);
    });

    test('olaganaWord', () async {
      final unicode = 'ᠤᠯᠠᠭᠠᠨ᠎ᠠ'; // OLAGAN(MVS)A
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
      final unicode = 'ᠫᠷᠣᠭ\u180Cᠷᠠᠮ'; // PROG(FVS2)RAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3';
      expect(result, expected);
    });

    test('kartWord', () async {
      final unicode = 'ᠺᠠᠷᠲ'; // KART
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
      final unicode = 'ᠭᠷᠠᠮ'; // GRAM
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2E3\uE327\uE26C\uE2F3';
      expect(result, expected);
    });

    test('minggaWord', () async {
      final unicode = 'ᠮᠢᠩᠭ᠎ᠠ'; // MINGG(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      expect(result, expected);
    });

    test('naimaWordMenksoftVersion', () async {
      final unicode = 'ᠨᠠᠢ\u180Dᠮᠠ'; // NAI(FVS3)MA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      expect(result, expected);
    });

    test('naijaWord', () async {
      final unicode = 'ᠨᠠᠢᠵᠠ'; // NAIJA
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE281\uE31D\uE268';
      expect(result, expected);
    });

    test('bainaWord', () async {
      final unicode = 'ᠪᠠᠢᠨ᠎ᠠ'; // BAIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      expect(result, expected);
    });

    test('baiinaWord', () async {
      final unicode = 'ᠪᠠᠢᠢᠨ᠎ᠠ'; // BAIIN(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      expect(result, expected);
    });

    test('saihanWord', () async {
      final unicode = 'ᠰᠠᠢᠬᠠᠨ'; // SAIHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE281\uE2D8\uE26C\uE2B5';
      expect(result, expected);
    });

    test('sayihanWord', () async {
      final unicode = 'ᠰᠠᠶᠢᠬᠠᠨ'; // SAYIHAN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      expect(result, expected);
    });

    test('sayiWord', () async {
      final unicode = 'ᠰᠠᠶᠢ'; // SAYI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2FD\uE26C\uE320\uE27B';
      expect(result, expected);
    });

    test('taiWord', () async {
      final unicode = 'ᠲᠠᠢ'; // TAI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE308\uE26C\uE27B';
      expect(result, expected);
    });

    test('namayiWord', () async {
      final unicode = 'ᠨᠠᠮᠠᠶ\u180Bᠢ'; // NAMAY(FSV1)I
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      expect(result, expected);
    });

    test('eimuWord', () async {
      final unicode = 'ᠡᠢᠮᠦ'; // EIMU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE271\uE281\uE2F5\uE2A3';
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

    test('qeduinWord', () async {
      final unicode = 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5';
      expect(result, expected);
    });

    test('anggliWord', () async {
      final unicode = 'ᠠᠩᠭᠯᠢ'; // ANGGLI
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE2BD\uE2EB\uE2FC\uE27B';
      expect(result, expected);
    });

    test('asiglajuWord', () async {
      final unicode = 'ᠠᠰᠢᠭᠯᠠᠵᠤ'; // ASIGLAJU
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      expect(result, expected);
    });

    test('narangerelWord', () async {
      final unicode = 'ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      expect(result, expected);
    });

    test('cholmonodoWord', () async {
      final unicode = 'ᠴᠣᠯᠮᠣᠨ\u180Cᠣ\u180Bᠳᠣ'; // CHOLMONO(FVS1)DO
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      expect(result, expected);
    });

    test('bayanunderWord', () async {
      final unicode = 'ᠪᠠᠶᠠᠨ\u180Cᠦ\u180Cᠨᠳᠦᠷ'; // BAYAN(FSV2)U(FVS2)NDUR
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

    test('chogchechegWord', () async {
      final unicode = 'ᠴᠣᠭᠴᠡᠴᠡᠭ'; // CHOGCHECHEG
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE289\uE2EE\uE317\uE276\uE317\uE276\uE2E8';
      printResult(result, expected);
      expect(result, expected);
    });

    test('anggilumchechegWord', () async {
      final unicode = 'ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
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

    test('chinoSpecifiedWord', () async {
      final unicode = 'ᠴᠢᠨᠤ᠎ᠠ'; // CHINU(MVS)A
      final result = convertUnicodeToMenksoft(unicode);
      final expected = '\uE315\uE27E\uE2B9\uE28D\uE26A';
      printResult(result, expected);
      expect(result, expected);
    });
  });
}
