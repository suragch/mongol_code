import 'package:flutter/material.dart';
import 'package:mongol_code/alternative/convert.dart';
import 'package:mongol_code/mongol_code.dart';

class SuffixPage extends StatefulWidget {
  const SuffixPage({super.key});

  @override
  State<SuffixPage> createState() => _SuffixPageState();
}

class _SuffixPageState extends State<SuffixPage> {
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
      appBar: AppBar(title: const Text('Suffixes')),
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
  (' ᠶᠢᠨ', '\uE263\uE321\uE27E\uE2B5'), // yinSuffix
  (' ᠤᠨ', '\uE263\uE292\uE2B5'), // unSuffix
  (' ᠦᠨ', '\uE263\uE2AC\uE2B5'), // uenSuffix
  (' ᠤ', '\uE263\uE28D'), // uSuffix
  (' ᠦ', '\uE263\uE2A3'), // ueSuffix
  (' ᠢ', '\uE263\uE282'), // iSuffix
  (' ᠶᠢ', '\uE263\uE321\uE27B'), // yiSuffix
  (' ᠳᠤ', '\uE263\uE310\uE28D'), // duSuffix
  (' ᠳᠦ', '\uE263\uE310\uE2A3'), // dueSuffix
  (' ᠲᠤ', '\uE263\uE309\uE28D'), // tuSuffix
  (' ᠲᠦ', '\uE263\uE309\uE2A3'), // tueSuffix
  (' ᠳᠤᠷ', '\uE263\uE310\uE291\uE325'), // durSuffix
  (' ᠳᠦᠷ', '\uE263\uE310\uE2AB\uE325'), // duerSuffix
  (' ᠲᠤᠷ', '\uE263\uE309\uE291\uE325'), // turSuffix
  (' ᠲᠦᠷ', '\uE263\uE309\uE2AB\uE325'), // tuerSuffix
  (' ᠳᠠᠬᠢ', '\uE263\uE310\uE26C\uE2DA\uE27C'), // daqiSuffix
  (' ᠳᠡᠬᠢ', '\uE263\uE310\uE276\uE2DA\uE27C'), // deqiSuffix
  (' ᠠᠴᠠ', '\uE263\uE267\uE317\uE268'), // achaSuffix
  (' ᠡᠴᠡ', '\uE263\uE271\uE317\uE273'), // echeSuffix
  (' ᠪᠠᠷ', '\uE263\uE2C1\uE26D\uE325'), // barSuffix
  (' ᠪᠡᠷ', '\uE263\uE2C1\uE277\uE325'), // berSuffix
  (' ᠢᠶᠠᠷ', '\uE263\uE280\uE321\uE26C\uE325'), // iyarSuffix
  (' ᠢᠶᠡᠷ', '\uE263\uE280\uE321\uE276\uE325'), // iyerSuffix
  (' ᠲᠠᠢ', '\uE263\uE308\uE26C\uE27B'), // taiSuffix
  (' ᠲᠡᠢ', '\uE263\uE308\uE276\uE27B'), // teiSuffix
  (' ᠯᠤᠭ᠎ᠠ', '\uE263\uE2F8\uE291\uE2E9\uE26A'), // lugaSuffix
  (' ᠯᠦᠭᠡ', '\uE263\uE2F8\uE2AB\uE2EB\uE275'), // luegeSuffix
  (' ᠪᠠᠨ', '\uE263\uE2C1\uE26D\uE2B5'), // banSuffix
  (' ᠪᠡᠨ', '\uE263\uE2C1\uE277\uE2B5'), // benSuffix
  (' ᠢᠶᠠᠨ', '\uE263\uE280\uE321\uE26C\uE2B5'), // iyanSuffix
  (' ᠢᠶᠡᠨ', '\uE263\uE280\uE321\uE276\uE2B5'), // iyenSuffix
  (' ᠶᠤᠭᠠᠨ', '\uE263\uE31E\uE291\uE2EA\uE26C\uE2B5'), // yuganSuffix
  (' ᠶᠦᠭᠡᠨ', '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5'), // yuegenSuffix
  (' ᠳᠠᠭᠠᠨ', '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5'), // daganSuffix
  (' ᠳᠡᠭᠡᠨ', '\uE263\uE310\uE276\uE2EB\uE277\uE2B5'), // degenSuffix
  (' ᠲᠠᠭᠠᠨ', '\uE263\uE308\uE26C\uE2EA\uE26C\uE2B5'), // taganSuffix
  (' ᠲᠡᠭᠡᠨ', '\uE263\uE308\uE276\uE2EB\uE277\uE2B5'), // tegenSuffix
  (' ᠠᠴᠠᠭᠠᠨ', '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5'), // achaganSuffix
  (' ᠡᠴᠡᠭᠡᠨ', '\uE263\uE271\uE317\uE276\uE2EB\uE277\uE2B5'), // echegenSuffix
  (' ᠲᠠᠢᠭᠠᠨ', '\uE263\uE308\uE26C\uE281\uE2EA\uE26C\uE2B5'), // taiganSuffix
  (' ᠲᠡᠢᠭᠡᠨ', '\uE263\uE308\uE276\uE281\uE2EB\uE277\uE2B5'), // teigenSuffix
  (' ᠤᠳ', '\uE263\uE292\uE311'), // udSuffix
  (' ᠦᠳ', '\uE263\uE2AC\uE311'), // uedSuffix
  (' ᠨᠤᠭᠤᠳ', '\uE263\uE2B3\uE291\uE2EC\uE291\uE311'), // nugudSuffix
  (' ᠨᠦᠭᠦᠳ', '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311'), // nueguedSuffix
  (' ᠨᠠᠷ', '\uE263\uE2B1\uE26C\uE325'), // narSuffix
  (' ᠨᠡᠷ', '\uE263\uE2B1\uE276\uE325'), // nerSuffix
  ('ᠤᠤ', '\uE292\uE28D'), // uuWord
  ('ᠦᠦ', '\uE2AC\uE2A3'), // ueueWord
  (' ᠳᠠ', '\uE263\uE310\uE268'), // daSuffix
  (' ᠳᠡ', '\uE263\uE310\uE273'), // deSuffix
];
