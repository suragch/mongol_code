import 'package:flutter/material.dart';
import 'package:mongol_code/mongol_code.dart';

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
                      _convertText(_inputController.text);
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
              onChanged: _convertText,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SelectableText(_original, style: TextStyle(fontSize: 40)),
                  SelectableText(_conversion, style: TextStyle(fontSize: 40)),
                  Text('Input'),
                  SelectableText(_inputCode, style: TextStyle(fontSize: 12)),
                  SelectableText(_outputCode, style: TextStyle(fontSize: 12)),
                  Text('Output'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _convertText(String text) {
    _original = _convertToString(text);
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
