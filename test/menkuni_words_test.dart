import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:test/test.dart';

import 'print_result.dart';

void main() {
  group('Menksoft -> Unicode: Words', () {
    test('bichigWord', () async {
      final menksoft = '\uE2C1\uE27F\uE317\uE27E\uE2E8'; // bichig
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182A\u1822\u1834\u1822\u182D'; // 'ᠪᠢᠴᠢᠭ';
      expect(result, expected);
    });

    test('egeshigWord', () async {
      final menksoft =
          '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3'; // EGESIG INU
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1821\u182D\u1821\u1830\u1822\u182D\u180E\u1822\u1828\u1826'; // 'ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ';
      expect(result, expected);
    });

    test('bujigWord', () async {
      final menksoft =
          '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5'; // BUJIG (NNBSP) I (NNBSP) BEN (NNBSP) YUGEN
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u182A\u1826\u1835\u1822\u182D\u180E\u1822\u180E\u182A\u1821\u1828\u180E\u1836\u1826\u182D\u1821\u1828'; // 'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ';
      expect(result, expected);
    });

    test('chirigWord', () async {
      final menksoft =
          '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1834\u1822\u1837\u1822\u182D\u180E\u182E\u1820\u1828\u1822'; // 'ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ'; // CHIRIG (NNBSP) MANI
      expect(result, expected);
    });

    test('egchiWord', () async {
      final menksoft = '\uE271\uE2F0\uE317\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1821\u182D\u1834\u1821'; // 'ᠡᠭᠴᠡ'; // EGCHI
      expect(result, expected);
    });

    test('qugjimWord', () async {
      final menksoft =
          '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      // 'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ'; // QUGJIM (NNBSP) DUR (NNBSP) IYEN (NNBSP) DEGEN
      final expected =
          '\u182C\u1826\u182D\u1835\u1822\u182E\u180E\u1833\u1826\u1837\u180E\u1822\u1836\u1821\u1828\u180E\u1833\u1821\u182D\u1821\u1828';
      expect(result, expected);
    });

    test('buridgelWord', () async {
      final menksoft =
          '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u182A\u1826\u1837\u1822\u1833\u182D\u1821\u182F\u180E\u1822\u1836\u1821\u1828';
      // 'ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ' BURIDGEL (NNBSP) IYEN
      expect(result, expected);
    });

    test('sedqilWord', () async {
      final menksoft =
          '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1830\u1821\u1833\u182C\u1822\u182F\u180E\u182E\u1822\u1828\u1822';
      // 'ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ'; // SEDQIL (NNBSP) MINI
      expect(result, expected);
    });

    test('uiledburiWord', () async {
      final menksoft =
          '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1826\u1822\u182F\u1821\u1833\u182A\u1826\u1837\u1822\u180E\u1833\u1826';
      //'ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ'; // UILEDBURI (NNBSP) DU
      expect(result, expected);
    });

    test('jeligudqenWord', () async {
      final menksoft =
          '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1835\u1821\u182F\u1822\u182D\u1826\u1833\u182C\u1821\u1828\u180E\u1826';
      //'ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ'; // JELIGUDQEN (NNBSP) U
      expect(result, expected);
    });

    test('manggalWord', () async {
      final menksoft =
          '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u182E\u1820\u1829\u182D\u1820\u182F\u180E\u1833\u1824\u1837\u180E\u1822\u1836\u1820\u1828\u180E\u1833\u1820\u182D\u1820\u1828';
      //'ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ'; // MANGGAL (NNBSP) DUR (NNBSP) IYAN (NNBSP) DAGAN
      expect(result, expected);
    });

    test('dengWord', () async {
      final menksoft = '\uE310\uE2A9\uE2BB\uE263\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1833\u180B\u1826\u1829\u180E\u1822';
      //'ᠳ᠋ᠦᠩ ᠢ'; // D(FVS1)UNG (NNBSP) I
      expect(result, expected);
    });

    test('sodnamWord', () async {
      final menksoft =
          '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1830\u1823\u1833\u1828\u1820\u182E\u180E\u1820\u1834\u1820\u180E\u182A\u1820\u1828\u180E\u1820\u1834\u1820\u182D\u1820\u1828';
      // 'ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ'; // SODNAM (NNBSP) ACHA (NNBSP) BAN (NNBSP) ACHAGAN
      expect(result, expected);
    });

    test('lhagbaWord', () async {
      final menksoft =
          '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1840\u1820\u182D\u182A\u1820\u180E\u182F\u1824\u182D\u180E\u1820';
      // 'ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ'; // LHAGBA (NNBSP) LUG(MVS)A
      expect(result, expected);
    });

    test('chebegmedWord', () async {
      final menksoft =
          '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1834\u1821\u182A\u1821\u182D\u182E\u1821\u1833\u180E\u182F\u1826\u182D\u1821';
      //'ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ'; // CHEBEGMED (NNBSP) LUGE
      expect(result, expected);
    });

    test('tsementWord', () async {
      final menksoft =
          '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE321\uE27E\uE2EA\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u183C\u1827\u182E\u1827\u1828\u1832\u180E\u1832\u1820\u1822\u182D\u1820\u1828';
      // 'ᠼᠧᠮᠧᠨᠲ ᠲᠠᠢᠭᠠᠨ'; // TSEMENT (NNBSP) TAIGAN
      expect(result, expected);
    });

    test('uniyeWord', () async {
      final menksoft =
          '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE321\uE27E\uE2EB\uE277\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1826\u1828\u1822\u1836\u180E\u1821\u180E\u1832\u1821\u1822\u182D\u1821\u1828';
      // 'ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠶᠢᠭᠡᠨ'; // UNIY(MVS)E (NNBSP) TEIGEN
      expect(result, expected);
    });

    test('qoinaWord', () async {
      final menksoft = '\uE2D2\uE289\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182C\u1823\u1822\u1828\u180E\u1820';
      // 'ᠬᠣᠶᠢᠨ᠎ᠠ'; // QOIN(MVS)A
      expect(result, expected);
    });

    test('angnaWord', () async {
      final menksoft = '\uE266\uE2BE\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠩᠨ᠎ᠠ'; // ANGN(MVS)A
      expect(result, expected);
    });

    test('chinggaWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭ᠎ᠠ'; // CHINGG(MVS)A
      expect(result, expected);
    });

    test('chingalaquWord', () async {
      final menksoft = '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠴᠢᠩᠭᠠᠯᠠᠬᠤ'; // CHINGGALAQU
      expect(result, expected);
    });

    test('daljiygsanWord', () async {
      final menksoft =
          '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE321\uE2EE\uE301\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1833\u1820\u182F\u1835\u1822\u1836\u180B\u182D\u1830\u1820\u1828';
      // 'ᠳᠠᠯᠵᠢᠶᠭᠰᠠᠨ'; // DALJIYGSAN
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
      final expected =
          '\u1830\u1822\u182D\u1830\u1822\u182D\u182F\u1821\u182C\u1826';
      // 'ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ'; // SIGSIGLEQU
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

    test('baigulquWord', () async {
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2EC\uE291\uE2FA\uE2DC\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182A\u1820\u1822\u182D\u1824\u182F\u182C\u1824';
      // 'ᠪᠠᠢᠭᠤᠯᠬᠤ'; // BAIGULQU
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
      final expected = '\u1828\u1821\u1822\u182D\u1821\u182E\u182F\u1822\u182D';
      // 'ᠨᠡᠶᠢᠭᠡᠮᠯᠢᠭ'; // NEIGEMLIG
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
      final expected = 'ᠶᠠᠲᠤᠭ᠎ᠠ'; // YATUG(MVS)A
      expect(result, expected);
    });

    test('olaganaWord', () async {
      final menksoft = '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠤᠯᠠᠭᠠᠨ᠎ᠠ'; // OLAGAN(MVS)A
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
      final expected = '\u182B\u1837\u1823\u182D\u180C\u1837\u1820\u182E';
      // PROG(FVS2)RAM
      expect(result, expected);
    });

    test('kartWord', () async {
      final menksoft = '\uE333\uE26D\uE326\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠺᠠᠷᠲ'; // KART
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
      final expected = 'ᠭᠷᠠᠮ'; // GRAM
      expect(result, expected);
    });

    test('minggaWord', () async {
      final menksoft = '\uE2F1\uE27E\uE2BC\uE2E9\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠮᠢᠩᠭ᠎ᠠ'; // MINGG(MVS)A
      expect(result, expected);
    });

    test('naimaWordMenksoftVersion', () async {
      final menksoft = '\uE2B1\uE26C\uE27E\uE2F5\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1828\u1820\u1822\u180D\u182E\u1820';
      // NAI(FVS3)MA
      expect(result, expected);
    });

    test('naijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE281\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠢᠵᠠ'; // NAIJA
      expect(result, expected);
    });

    test('naijaWord', () async {
      final menksoft = '\uE2B1\uE26C\uE321\uE27E\uE31D\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1828\u1820\u1822\u1835\u1820';
      // 'ᠨᠠᠢᠵᠠ'; // NAIJA
      expect(result, expected);
    });

    test('bainaWord', () async {
      final menksoft = '\uE2C1\uE26D\uE281\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠪᠠᠢᠨ᠎ᠠ'; // BAIN(MVS)A
      expect(result, expected);
    });

    test('bayinaWord', () async {
      // BAYIN-A in Menksoft should give BAIN-A in Unicode
      final menksoft = '\uE2C1\uE26D\uE321\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182A\u1820\u1822\u1828\u180E\u1820';
      expect(result, expected);
    });

    test('baiinaWord', () async {
      // BAIIN-A in Menksoft should give BAIN-A in Unicode
      final menksoft = '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182A\u1820\u1822\u1828\u180E\u1820';
      // final expected = 'ᠪᠠᠢᠨ᠎ᠠ';
      expect(result, expected);
    });

    test('saihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE321\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1830\u1820\u1822\u182C\u1820\u1828';
      // 'ᠰᠠᠢᠬᠠᠨ'; // SAIHAN
      expect(result, expected);
    });

    test('sayihanWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1830\u1820\u1836\u1822\u182C\u1820\u1828';
      // 'ᠰᠠᠶᠢᠬᠠᠨ'; // SAYIHAN
      expect(result, expected);
    });

    test('sayiWord', () async {
      final menksoft = '\uE2FD\uE26C\uE320\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1830\u1820\u1836\u1822';
      // 'ᠰᠠᠶᠢ'; // SAYI
      expect(result, expected);
    });

    test('taiWord', () async {
      final menksoft = '\uE308\uE26C\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠲᠠᠢ'; // TAI
      expect(result, expected);
    });

    test('namayiWord', () async {
      final menksoft = '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1828\u1820\u182E\u1820\u1836\u180B\u1822';
      // NAMAY(FVS1)I
      expect(result, expected);
    });

    test('eyimuWord', () async {
      final menksoft = '\uE271\uE321\uE27E\uE2F5\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1821\u1822\u182E\u1826';
      // 'ᠡᠢᠮᠦ'; // EIMU
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
      final expected = '\u182C\u1826\u1826'; // QUU
      expect(result, expected);
    });

    test('qeuqenWord', () async {
      final menksoft = '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠬᠡᠦᠬᠡᠳ'; // QEUQEN
      expect(result, expected);
    });

    test('qeduinWord', () async {
      final menksoft = '\uE2D0\uE277\uE313\uE2AB\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182C\u1821\u1833\u1826\u1822\u1828';
      // 'ᠬᠡᠳᠦᠢᠨ'; // QEDUIN
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
      final expected = 'ᠠᠩᠭᠯᠢ'; // ANGGLI
      expect(result, expected);
    });

    test('asiglajuWord', () async {
      final menksoft = '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠠᠰᠢᠭᠯᠠᠵᠤ'; // ASIGLAJU
      expect(result, expected);
    });

    test('narangerelWord', () async {
      final menksoft =
          '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = 'ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ'; // NARANGEREL
      expect(result, expected);
    });

    test('cholmonodoWord', () async {
      final menksoft = '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1834\u1823\u182F\u182E\u1823\u1828\u180C\u1823\u180B\u1833\u1823';
      // CHOLMON(FVS2)O(FVS1)DO
      expect(result, expected);
    });

    test('bayanunderWord', () async {
      final menksoft =
          '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u182A\u1820\u1836\u1820\u1828\u180C\u1826\u180C\u1828\u1833\u1826\u1837';
      // BAYAN(FVS2)U(FVS1)NDUR
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
      final expected = 'ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ'; // ANGGILUMCHECHEG
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

    test('awangardWord', () async {
      final menksoft = '\uE266\uE32C\uE26C\uE2B7\uE2EA\uE26C\uE327\uE312';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1820\u1838\u1820\u1828\u180B\u182D\u1820\u1837\u1833\u180B';
      expect(result, expected);
    });

    test('abidaquuWord', () async {
      final menksoft = '\uE266\uE2C5\uE27F\uE313\uE26C\uE2DD\uE2AA\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1820\u182A\u1822\u1833\u1820\u182C\u1826\u180B\u1826';
      expect(result, expected);
    });

    test('alexandrWord', () async {
      final menksoft = '\uE266\uE2FA\uE2B0\uE336\uE301\uE26C\uE2B8\uE313\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u1820\u182F\u1827\u183A\u1830\u1820\u1828\u1833\u180B\u1837';
      expect(result, expected);
    });

    test('biligbaatarWord', () async {
      final menksoft =
          '\uE2C1\uE27F\uE2FA\uE27E\uE2F0\uE2C5\uE26D\uE2EA\uE26C\uE30B\uE291\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected =
          '\u182A\u1822\u182F\u1822\u182D\u180C\u182A\u1820\u182D\u1820\u1832\u1824\u1837';
      expect(result, expected);
    });

    test('yinWord', () async {
      final menksoft = '\uE321\uE27E\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1836\u180B\u1822\u1828';
      expect(result, expected);
    });

    test('toWord', () async {
      final menksoft = '\uE309\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1832\u1823\u180C';
      expect(result, expected);
    });

    test('tuWord', () async {
      final menksoft = '\uE309\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1832\u1824\u180C';
      expect(result, expected);
    });

    test('toeWord', () async {
      final menksoft = '\uE309\uE296';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1832\u1825\u180D';
      expect(result, expected);
    });

    test('tueWord', () async {
      final menksoft = '\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1832\u1826\u180D';
      expect(result, expected);
    });

    test('bulugtueWord', () async {
      final menksoft = '\uE2C2\uE2AA\uE2FB\uE2AB\uE2E8\u0020\uE309\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u182A\u1826\u182F\u1826\u182D\u0020\u1832\u1826\u180D';
      expect(result, expected);
    });
  });
}
