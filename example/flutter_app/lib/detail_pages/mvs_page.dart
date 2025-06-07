import 'package:flutter/material.dart';
import 'package:mongol_code/mongol_code.dart';

class MvsPage extends StatefulWidget {
  const MvsPage({super.key});

  @override
  State<MvsPage> createState() => _MvsPageState();
}

class _MvsPageState extends State<MvsPage> {
  final mvs = String.fromCharCode(Mongol.mvs);
  final nirugu = String.fromCharCode(Mongol.nirugu);
  final a = String.fromCharCode(Mongol.a);

  Widget _buildVariantRow(
    String label,
    String text, {
    double fontSize = 32,
    double indent = 32,
  }) {
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
        child: ListView(
          children: [
            _buildVariantRow('I', _getVariant('$nirugu\u1822$mvs$a')),
            _buildVariantRow('O', _getVariant('$nirugu\u1823$mvs$a')),
            _buildVariantRow('U', _getVariant('$nirugu\u1824$mvs$a')),
            _buildVariantRow('OE', _getVariant('$nirugu\u1825$mvs$a')),
            _buildVariantRow('UE', _getVariant('$nirugu\u1826$mvs$a')),
            _buildVariantRow('NA', _getVariant('$nirugu\u1828$mvs$a')),
            _buildVariantRow(
              'NA FVS1',
              _getVariant('$nirugu\u1828\u180B$mvs$a'),
            ),
            _buildVariantRow(
              'NA FVS2',
              _getVariant('$nirugu\u1828\u180C$mvs$a'),
            ),
            _buildVariantRow('QA', _getVariant('$nirugu\u182C$mvs$a')),
            _buildVariantRow(
              'QA FVS1',
              _getVariant('$nirugu\u182C\u180B$mvs$a'),
            ),
            _buildVariantRow('GA', _getVariant('$nirugu\u182D$mvs$a')),
            _buildVariantRow(
              'GA FVS1',
              _getVariant('$nirugu\u182D\u180B$mvs$a'),
            ),
            _buildVariantRow(
              'GA FVS3',
              _getVariant('$nirugu\u182D\u180D$mvs$a'),
            ),
            _buildVariantRow('MA', _getVariant('$nirugu\u182E$mvs$a')),
            _buildVariantRow('LA', _getVariant('$nirugu\u182F$mvs$a')),
            _buildVariantRow('SA', _getVariant('$nirugu\u1830$mvs$a')),
            _buildVariantRow(
              'SA FVS1',
              _getVariant('$nirugu\u1830\u180B$mvs$a'),
            ),
            _buildVariantRow('SHA', _getVariant('$nirugu\u1831$mvs$a')),
            _buildVariantRow('JA', _getVariant('$nirugu\u1835$mvs$a')),
            _buildVariantRow('YA', _getVariant('$nirugu\u1836$mvs$a')),
            _buildVariantRow('RA', _getVariant('$nirugu\u1837$mvs$a')),
            _buildVariantRow('WA', _getVariant('$nirugu\u1838$mvs$a')),
          ],
        ),
      ),
    );
  }
}
