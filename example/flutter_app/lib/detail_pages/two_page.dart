import 'package:flutter/material.dart';
import 'package:mongol_code/alternative/convert.dart';
import 'package:mongol_code/mongol_code.dart';

class TwoLetterWordPage extends StatefulWidget {
  const TwoLetterWordPage({super.key});

  @override
  State<TwoLetterWordPage> createState() => _TwoLetterWordPageState();
}

class _TwoLetterWordPageState extends State<TwoLetterWordPage> {
  final list = <List<String>>[];

  @override
  void initState() {
    super.initState();
    for (int char = Unicode.A; char <= Unicode.CHI; char++) {
      final letterList = <String>[];
      letterList.add(String.fromCharCodes([char, Unicode.A]));
      letterList.add(String.fromCharCodes([char, Unicode.E]));
      letterList.add(String.fromCharCodes([char, Unicode.I]));
      letterList.add(String.fromCharCodes([char, Unicode.O]));
      letterList.add(String.fromCharCodes([char, Unicode.U]));
      letterList.add(String.fromCharCodes([char, Unicode.OE]));
      letterList.add(String.fromCharCodes([char, Unicode.UE]));
      letterList.add(String.fromCharCodes([char, Unicode.EE]));
      list.add(letterList);
    }
  }

  // Widget _buildVariantRow(String text) {

  //   return Row(
  //     children: [

  //     ],
  //   );
  // }

  String _rowText(List<String> letters) {
    final buffer = StringBuffer();
    for (int i = 0; i < letters.length; i++) {
      final pair = letters[i];
      final menksoft = _convert(pair);
      buffer.write(menksoft);
      buffer.write(' ');
    }
    return buffer.toString();
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
          itemCount: list.length,
          itemBuilder: (context, index) {
            final text = _rowText(list[index]);
            return Text(text, style: TextStyle(fontSize: 32));
          },
        ),
      ),
    );
  }
}
