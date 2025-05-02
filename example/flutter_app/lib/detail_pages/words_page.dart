import 'package:flutter/material.dart';
import 'package:mongol_code/alternative/convert.dart';
import 'package:mongol_code/mongol_code.dart';

class WordsPage extends StatefulWidget {
  const WordsPage({super.key});

  @override
  State<WordsPage> createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {
  final code = MongolCode.instance;

  Widget _buildVariantRow(String unicode, String menksoft, {double fontSize = 32}) {
    final same = unicode == menksoft;
    return Row(
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(unicode, style: TextStyle(fontSize: fontSize, color: same ? Colors.green : Colors.red)),
          ),
        ),
        SizedBox(width: 16),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(menksoft, style: TextStyle(fontSize: fontSize, color: Colors.blue)),
          ),
        ),
      ],
    );
  }

  String _convert(String text) {
    return convertUnicodeToMenksoft(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Words')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: pairs.length,
          itemBuilder: (context, index) {
            final (unicode, menksoft) = pairs[index];
            return _buildVariantRow(_convert(unicode), menksoft);
          },
        ),
      ),
    );
  }
}

final pairs = [
  ('ᠪᠢᠴᠢᠭ', '\uE2C1\uE27F\uE317\uE27E\uE2E8'), // bichigWord
  ('ᠡᠭᠡᠰᠢᠭ ᠢᠨᠦ', '\uE271\uE2EB\uE277\uE301\uE27E\uE2E8\uE263\uE27A\uE2B9\uE2A3'), // egeshigWord
  (
    // bujigWord
    'ᠪᠦᠵᠢᠭ ᠢ ᠪᠡᠨ ᠶᠦᠭᠡᠨ',
    '\uE2C2\uE2AA\uE31D\uE27E\uE2E8\uE263\uE282\uE263\uE2C1\uE277\uE2B5\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5',
  ),
  ('ᠴᠢᠷᠢᠭ ᠮᠠᠨᠢ', '\uE315\uE27E\uE327\uE27E\uE2E8\uE263\uE2F1\uE26C\uE2B7\uE27B'), // chirigWord
  ('ᠡᠭᠴᠡ', '\uE271\uE2F0\uE317\uE273'), // egchiWord
  (
    // qugjimWord
    'ᠬᠦᠭᠵᠢᠮ ᠳᠦᠷ ᠢᠶᠡᠨ ᠳᠡᠭᠡᠨ',
    '\uE2D4\uE2AA\uE2F0\uE31D\uE27E\uE2F3\uE263\uE310\uE2AB\uE325\uE263\uE280\uE321\uE276\uE2B5\uE263\uE310\uE276\uE2EB\uE277\uE2B5',
  ),
  ('ᠪᠦᠷᠢᠳᠭᠡᠯ ᠢᠶᠡᠨ', '\uE2C2\uE2AA\uE327\uE27E\uE314\uE2EB\uE277\uE2F9\uE263\uE280\uE321\uE276\uE2B5'), // buridgelWord
  ('ᠰᠡᠳᠬᠢᠯ ᠮᠢᠨᠢ', '\uE2FD\uE276\uE314\uE2DA\uE27F\uE2F9\uE263\uE2F1\uE27E\uE2B7\uE27B'), // sedqilWord
  ('ᠦᠢᠯᠡᠳᠪᠦᠷᠢ ᠳᠦ', '\uE2A2\uE27E\uE2FA\uE276\uE314\uE2C6\uE2AC\uE327\uE27B\uE263\uE310\uE2A3'), // uiledburiWord
  ('ᠵᠡᠯᠢᠭᠦᠳᠬᠡᠨ ᠦ', '\uE31A\uE276\uE2FA\uE27E\uE2ED\uE2AC\uE314\uE2DA\uE277\uE2B5\uE263\uE2A3'), // jeligudqenWord
  (
    // manggalWord
    'ᠮᠠᠩᠭᠠᠯ ᠳᠤᠷ ᠢᠶᠠᠨ ᠳᠠᠭᠠᠨ',
    '\uE2F1\uE26C\uE2BC\uE2EA\uE26C\uE2F9\uE263\uE310\uE291\uE325\uE263\uE280\uE321\uE26C\uE2B5\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5',
  ),
  ('ᠳ᠋ᠦᠩ ᠢ', '\uE310\uE2A9\uE2BB\uE263\uE282'), // dengWord
  (
    // sodnamWord
    'ᠰᠣᠳᠨᠠᠮ ᠠᠴᠠ ᠪᠠᠨ ᠠᠴᠠᠭᠠᠨ',
    '\uE2FE\uE289\uE314\uE2B7\uE26C\uE2F3\uE263\uE267\uE317\uE268\uE263\uE2C1\uE26D\uE2B5\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5',
  ),
  ('ᡀᠠᠭᠪᠠ ᠯᠤᠭ᠎ᠠ', '\uE34B\uE26C\uE2EE\uE2C5\uE26B\uE263\uE2F8\uE291\uE2E9\uE26A'), // lhagbaWord
  ('ᠴᠡᠪᠡᠭᠮᠡᠳ ᠯᠦᠭᠡ', '\uE315\uE276\uE2C5\uE277\uE2EB\uE2F6\uE276\uE311\uE263\uE2F8\uE2AB\uE2EB\uE275'), // chebegmedWord
  ('ᠼᠧᠮᠧᠨᠲ ᠲᠠᠢᠭᠠᠨ', '\uE33F\uE2B0\uE2F4\uE2B0\uE2BA\uE30A\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5'), // tsementWord
  ('ᠦᠨᠢᠶ᠎ᠡ ᠲᠡᠢᠭᠡᠨ', '\uE2A2\uE2B7\uE27E\uE31F\uE274\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5'), // uniyeWord
  ('ᠬᠣᠢᠨ᠎ᠠ', '\uE2D2\uE289\uE281\uE2B6\uE26A'), // qoinaWord
  ('ᠠᠩᠨ᠎ᠠ', '\uE266\uE2BE\uE2B6\uE26A'), // angnaWord
  ('ᠴᠢᠩᠭ᠎ᠠ', '\uE315\uE27E\uE2BC\uE2E9\uE26A'), // chinggaWord
  ('ᠴᠢᠩᠭᠠᠯᠠᠬᠤ', '\uE315\uE27E\uE2BC\uE2EA\uE26C\uE2FA\uE26C\uE2DC\uE28D'), // chingalaquWord
  ('ᠳᠠᠯᠵᠢᠢᠭᠰᠠᠨ', '\uE30E\uE26C\uE2FB\uE31D\uE27E\uE27E\uE2EE\uE301\uE26C\uE2B5'), // daljiigsanWord
  ('ᠢᠯᠪᠢᠭᠴᠢ', '\uE27A\uE2FB\uE2C5\uE27F\uE2F0\uE317\uE27B'), // ilbigchiWord
  ('ᠪᠢᠴᠢᠭᠴᠢ', '\uE2C1\uE27F\uE317\uE27E\uE2F0\uE317\uE27B'), // bichigchiWord
  ('ᠰᠢᠭᠰᠢᠭᠯᠡᠬᠦ', '\uE2FD\uE27E\uE2EF\uE301\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7'), // sigsiglequWord
  ('ᠳᠢᠭᠯᠢᠮᠰᠢᠭᠰᠡᠨ', '\uE30E\uE27E\uE2EB\uE2FC\uE27E\uE2F4\uE301\uE27E\uE2EF\uE301\uE276\uE2B5'), // diglimsigsenWord
  ('ᠴᠢᠭᠢᠭᠯᠢᠭ', '\uE315\uE27E\uE2EB\uE27F\uE2EB\uE2FC\uE27E\uE2E8'), // chigigligWord
  ('ᠮᠥᠩᠭᠡ', '\uE2F2\uE29C\uE2BD\uE2EB\uE275'), // monggeWord
  ('ᠺᠢᠨᠣ᠋', '\uE333\uE27F\uE2B9\uE286'), // kinoWord
  ('ᠪᠠᠢᠭᠤᠯᠬᠤ', '\uE2C1\uE26D\uE281\uE2EC\uE291\uE2FA\uE2DC\uE28D'), // baigulquWord
  ('ᠭᠷᠧᠭ', '\uE2E3\uE327\uE2B0\uE2E8'), // gregWord
  ('ᠮᠣᠲ᠋ᠣᠷ', '\uE2F2\uE289\uE30D\uE289\uE325'), // motorWord
  ('ᠨᠡᠢᠭᠡᠮᠯᠢᠭ', '\uE2B1\uE276\uE281\uE2EB\uE277\uE2F5\uE2FA\uE27E\uE2E8'), // neigemligWord
  ('ᠮᠣᠩᠭᠣᠯ', '\uE2F2\uE289\uE2BC\uE2EC\uE289\uE2F9'), // mongolWord
  ('ᠶᠠᠲᠤᠭ᠎ᠠ', '\uE31E\uE26C\uE30B\uE291\uE2E9\uE26A'), // yatugaWord
  ('ᠤᠯᠠᠭᠠᠨ᠎ᠠ', '\uE28C\uE2FA\uE26C\uE2EA\uE26C\uE2B6\uE26A'), // olaganaWord
  ('ᠪᠢᠴᠢᠭᠯᠡᠬᠦ', '\uE2C1\uE27F\uE317\uE27E\uE2EB\uE2FC\uE276\uE2DD\uE2A7'), // bichiglequWord
  ('ᠫᠷᠣᠭ\u180Cᠷᠠᠮ', '\uE2C8\uE326\uE289\uE2EF\uE327\uE26C\uE2F3'), // programWord
  ('ᠺᠠᠷᠲ', '\uE333\uE26D\uE326\uE30A'), // kartWord
  ('ᠳ᠋ᠦᠩᠨᠡᠯᠲᠡ', '\uE310\uE2A9\uE2BC\uE2B7\uE276\uE2FA\uE30B\uE273'), // dungnelteWord
  ('ᠭᠷᠠᠮ', '\uE2E3\uE327\uE26C\uE2F3'), // gramWord
  ('ᠮᠢᠩᠭ᠎ᠠ', '\uE2F1\uE27E\uE2BC\uE2E9\uE26A'), // minggaWord
  ('ᠨᠠᠢ\u180Dᠮᠠ', '\uE2B1\uE26C\uE27E\uE2F5\uE268'), // naimaWord
  ('ᠨᠠᠢᠵᠠ', '\uE2B1\uE26C\uE281\uE31D\uE268'), // naijaWord
  ('ᠪᠠᠢᠨ᠎ᠠ', '\uE2C1\uE26D\uE281\uE2B6\uE26A'), // bainaWord
  ('ᠪᠠᠢᠢᠨ᠎ᠠ', '\uE2C1\uE26D\uE27E\uE27E\uE2B6\uE26A'), // baiinaWord
  ('ᠰᠠᠢᠬᠠᠨ', '\uE2FD\uE26C\uE281\uE2D8\uE26C\uE2B5'), // saihanWord
  ('ᠰᠠᠶᠢᠬᠠᠨ', '\uE2FD\uE26C\uE320\uE27E\uE2D8\uE26C\uE2B5'), // sayihanWord
  ('ᠰᠠᠶᠢ', '\uE2FD\uE26C\uE320\uE27B'), // sayiWord
  ('ᠲᠠᠢ', '\uE308\uE26C\uE27B'), // taiWord
  ('ᠨᠠᠮᠠᠶ\u180Bᠢ', '\uE2B1\uE26C\uE2F4\uE26C\uE321\uE27B'), // namayiWord
  ('ᠡᠢᠮᠦ', '\uE271\uE281\uE2F5\uE2A3'), // eimuWord
  ('ᠰᠣᠶᠣᠯ', '\uE2FE\uE289\uE320\uE289\uE2F9'), // soyolWord
  ('ᠪᠦᠦ', '\uE2C2\uE2AC\uE2A3'), // buuWord
  ('ᠬᠦᠦ', '\uE2D4\uE2AA\uE2A3'), // quuWord
  ('ᠬᠡᠦᠬᠡᠳ', '\uE2D0\uE277\uE2AB\uE2DA\uE277\uE311'), // qeuqenWord
  ('ᠬᠡᠳᠦᠢᠨ', '\uE2D0\uE277\uE313\uE2AB\uE281\uE2B5'), // qeduinWord
  ('ᠠᠩᠭᠯᠢ', '\uE266\uE2BD\uE2EB\uE2FC\uE27B'), // anggliWord
  ('ᠠᠰᠢᠭᠯᠠᠵᠤ', '\uE266\uE301\uE27E\uE2EE\uE2FA\uE26C\uE31D\uE28D'), // asiglajuWord
  ('ᠨᠠᠷᠠᠨᠭᠡᠷᠡᠯ', '\uE2B1\uE26C\uE327\uE26C\uE2B8\uE2EB\uE277\uE327\uE276\uE2F9'), // narangerelWord
  ('ᠴᠣᠯᠮᠣᠨ\u180Cᠣ\u180Bᠳᠣ', '\uE315\uE289\uE2FB\uE2F5\uE289\uE2BA\uE288\uE313\uE285'), // cholmonodoWord
  ('ᠪᠠᠶᠠᠨ\u180Cᠦ\u180Cᠨᠳᠦᠷ', '\uE2C1\uE26D\uE320\uE26C\uE2BA\uE2A8\uE2B8\uE313\uE2AB\uE325'), // bayanunderWord
  ('ᠰᠣᠳᠣᠪᠢᠯᠢᠭ᠌', '\uE2FE\uE289\uE313\uE289\uE2C5\uE27F\uE2FA\uE27E\uE2E8'), // sodobiligWord
  ('ᠴᠣᠭᠴᠡᠴᠡᠭ', '\uE315\uE289\uE2EE\uE317\uE276\uE317\uE276\uE2E8'), // chogchechegWord
  ('ᠠᠩᠭᠢᠯᠤᠮᠴᠡᠴᠡᠭ', '\uE266\uE2BD\uE2EB\uE27F\uE2FB\uE291\uE2F5\uE317\uE276\uE317\uE276\uE2E8'), // anggilumchechegWord
  ('ᠴᠡᠴᠡᠭᠮ᠎ᠡ', '\uE315\uE276\uE317\uE276\uE2F0\uE2F3\uE274'), // chechegmaWord
  ('ᠰᠢᠭ', '\uE2FD\uE27E\uE2E8'), // sigDefaultWord
  ('ᠰᠢᠭ᠋', '\uE2FD\uE27E\uE2E7'), // sigSpecifiedWord
  ('ᠴᠢᠨᠤ᠎ᠠ', '\uE315\uE27E\uE2B9\uE28D\uE26A'), // chinoaWord
];
