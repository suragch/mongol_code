import 'package:flutter/material.dart';
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
    for (int char = Mongol.a; char <= Mongol.chi; char++) {
      final letterList = <String>[];
      letterList.add(String.fromCharCodes([char, Mongol.a]));
      letterList.add(String.fromCharCodes([char, Mongol.e]));
      letterList.add(String.fromCharCodes([char, Mongol.i]));
      letterList.add(String.fromCharCodes([char, Mongol.o]));
      letterList.add(String.fromCharCodes([char, Mongol.u]));
      letterList.add(String.fromCharCodes([char, Mongol.oe]));
      letterList.add(String.fromCharCodes([char, Mongol.ue]));
      letterList.add(String.fromCharCodes([char, Mongol.ee]));
      list.add(letterList);
    }
  }

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
