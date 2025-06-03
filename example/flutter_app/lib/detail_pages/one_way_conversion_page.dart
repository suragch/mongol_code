import 'package:flutter/material.dart';
import 'package:mongol_code/alternative/convert_menksoft.dart';
import 'package:mongol_code/alternative/convert_unicode.dart';

class OneWayConversionPage extends StatefulWidget {
  const OneWayConversionPage({super.key});

  @override
  State<OneWayConversionPage> createState() => _OneWayConversionPageState();
}

class _OneWayConversionPageState extends State<OneWayConversionPage> {
  final TextEditingController _inputController = TextEditingController();
  String _inputCode = '';
  String _outputCode = '';
  String _conversion = '';
  String _original = '';
  bool _isMenksoftToUnicode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('One Way Conversion')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_isMenksoftToUnicode ? 'Menksoft' : 'Unicode'),
                IconButton(
                  icon: Icon(Icons.swap_horiz),
                  onPressed: () {
                    setState(() {
                      _isMenksoftToUnicode = !_isMenksoftToUnicode;
                    });
                  },
                ),
                Text(_isMenksoftToUnicode ? 'Unicode' : 'Menksoft'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _inputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText:
                    _isMenksoftToUnicode ? 'Menksoft Input' : 'Unicode Input',
              ),
              maxLines: 3,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(_original, style: TextStyle(fontSize: 40)),
                  Text(_conversion, style: TextStyle(fontSize: 40)),
                  Text('Input'),
                  Text(_inputCode, style: TextStyle(fontSize: 12)),
                  Text(_outputCode, style: TextStyle(fontSize: 12)),
                  Text('Output'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _convertText,
              child: Text('Convert'),
            ),
          ),
        ],
      ),
    );
  }

  void _convertText() {
    _original = _convertToString(_inputController.text);
    final String output;
    if (_isMenksoftToUnicode) {
      output = convertMenksoftToUnicode(_original);
    } else {
      output = convertUnicodeToMenksoft(_original);
    }
    setState(() {
      _conversion = output;
      _inputCode = _toHex(_original);
      _outputCode = _toHex(output);
    });
  }

  String _toHex(String input) {
    return input.codeUnits
        .map((e) => '\\u${e.toRadixString(16).padLeft(4, '0').toUpperCase()}')
        .join();
  }

  String _convertToString(String input) {
    if (!input.startsWith('\\u')) return input;
    final pattern = RegExp(r'\\u[0-9A-Fa-f]{4}');
    return input.replaceAllMapped(pattern, (match) {
      final hexString = match.group(0)!.substring(2); // Remove '\u'
      final codeUnit = int.parse(hexString, radix: 16);
      return String.fromCharCode(codeUnit);
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
