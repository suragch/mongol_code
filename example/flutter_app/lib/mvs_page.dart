import 'package:flutter/material.dart';
import 'package:mongol_code/mongol_code.dart';

class MvsPage extends StatefulWidget {
  const MvsPage({super.key});

  @override
  State<MvsPage> createState() => _MvsPageState();
}

class _MvsPageState extends State<MvsPage> {
  final code = MongolCode.instance;

  final mvs = String.fromCharCode(Unicode.MVS);
  final nirugu = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
  final a = String.fromCharCode(Unicode.A);

  final List<String> mongolianCharacters = List.generate(
    0x1842 - 0x1820 + 1,
    (index) => String.fromCharCode(0x1820 + index),
  );

  Widget _buildVariantRow(String label, String text, {double fontSize = 32, double indent = 32}) {
    return Row(
      children: [
        SizedBox(width: indent),
        Text(label),
        SizedBox(width: 16),
        Text(text, style: TextStyle(fontSize: fontSize)),
      ],
    );
  }

  String _getVariant(String text) {
    return code.unicodeToMenksoft(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mongolian Characters')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: mongolianCharacters.length,
          itemBuilder: (context, index) {
            final title = 'U+${(0x1820 + index).toRadixString(16).toUpperCase()}';
            final char = mongolianCharacters[index];
            return _buildVariantRow(title, _getVariant('$nirugu$char$mvs$a'));
          },
        ),
      ),
    );
  }
}
