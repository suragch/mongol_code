import 'package:flutter/material.dart';
import 'package:mongol_code/alternative/convert.dart';
import 'package:mongol_code/mongol_code.dart';

class FvsPage extends StatefulWidget {
  const FvsPage({super.key});

  @override
  State<FvsPage> createState() => _FvsPageState();
}

class _FvsPageState extends State<FvsPage> {
  final code = MongolCode.instance;

  final fvs1 = String.fromCharCode(Unicode.FVS1);
  final fvs2 = String.fromCharCode(Unicode.FVS2);
  final fvs3 = String.fromCharCode(Unicode.FVS3);
  final fvs4 = String.fromCharCode(Unicode.FVS4);
  final nirugu = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);

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
    return convertUnicodeToMenksoft(text);
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
            final char = mongolianCharacters[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('U+${(0x1820 + index).toRadixString(16).toUpperCase()}', style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 16),
                    Text(char, style: const TextStyle(fontSize: 44)),
                  ],
                ),
                _buildVariantRow('ISOLATE', _getVariant(char), fontSize: 44, indent: 16),
                _buildVariantRow('FVS1', _getVariant('$char$fvs1')),
                _buildVariantRow('FVS2', _getVariant('$char$fvs2')),
                _buildVariantRow('FVS3', _getVariant('$char$fvs3')),
                _buildVariantRow('FVS4', _getVariant('$char$fvs4')),
                _buildVariantRow('INITIAL', _getVariant('$char$nirugu'), fontSize: 44, indent: 16),
                _buildVariantRow('FVS1', _getVariant('$char$fvs1$nirugu')),
                _buildVariantRow('FVS2', _getVariant('$char$fvs2$nirugu')),
                _buildVariantRow('FVS3', _getVariant('$char$fvs3$nirugu')),
                _buildVariantRow('FVS4', _getVariant('$char$fvs4$nirugu')),
                _buildVariantRow('MEDIAL', _getVariant('$nirugu$char$nirugu'), fontSize: 44, indent: 16),
                _buildVariantRow('FVS1', _getVariant('$nirugu$char$fvs1$nirugu')),
                _buildVariantRow('FVS2', _getVariant('$nirugu$char$fvs2$nirugu')),
                _buildVariantRow('FVS3', _getVariant('$nirugu$char$fvs3$nirugu')),
                _buildVariantRow('FVS4', _getVariant('$nirugu$char$fvs4$nirugu')),
                _buildVariantRow('FINAL', _getVariant('$nirugu$char'), fontSize: 44, indent: 16),
                _buildVariantRow('FVS1', _getVariant('$nirugu$char$fvs1')),
                _buildVariantRow('FVS2', _getVariant('$nirugu$char$fvs2')),
                _buildVariantRow('FVS3', _getVariant('$nirugu$char$fvs3')),
                _buildVariantRow('FVS4', _getVariant('$nirugu$char$fvs4')),
              ],
            );
          },
        ),
      ),
    );
  }
}
