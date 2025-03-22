import 'package:flutter/foundation.dart' hide Unicode;
import 'package:flutter/material.dart';
import 'package:mongol_code/mongol_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Mongolian Unicode range: 0x1820 to 0x1842
  final List<String> mongolianCharacters = List.generate(
    0x1842 - 0x1820 + 1,
    (index) => String.fromCharCode(0x1820 + index),
  );

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
            final fvs1 = String.fromCharCode(Unicode.FVS1);
            final fvs2 = String.fromCharCode(Unicode.FVS2);
            final fvs3 = String.fromCharCode(Unicode.FVS3);
            final nirugu = String.fromCharCode(Unicode.MONGOLIAN_NIRUGU);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('U+${(0x1820 + index).toRadixString(16).toUpperCase()}'),
                    SizedBox(width: 16),
                    Text(char, style: const TextStyle(fontSize: 44)),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: 16),
                    Text('ISOLATE', style: const TextStyle(fontSize: 20)),
                    SizedBox(width: 16),
                    Text(char, style: const TextStyle(fontSize: 44)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS1'),
                    SizedBox(width: 16),
                    Text('$char$fvs1', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS2'),
                    SizedBox(width: 16),
                    Text('$char$fvs2', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS3'),
                    SizedBox(width: 16),
                    Text('$char$fvs3', style: const TextStyle(fontSize: 32)),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: 16),
                    Text('INITIAL', style: const TextStyle(fontSize: 20)),
                    SizedBox(width: 16),
                    Text('$char$nirugu', style: const TextStyle(fontSize: 44)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS1'),
                    SizedBox(width: 16),
                    Text('$char$fvs1$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS2'),
                    SizedBox(width: 16),
                    Text('$char$fvs2$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS3'),
                    SizedBox(width: 16),
                    Text('$char$fvs3$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: 16),
                    Text('MEDIAL', style: const TextStyle(fontSize: 20)),
                    SizedBox(width: 16),
                    Text('$nirugu$char$nirugu', style: const TextStyle(fontSize: 44)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS1'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs1$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS2'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs2$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS3'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs3$nirugu', style: const TextStyle(fontSize: 32)),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: 16),
                    Text('FINAL', style: const TextStyle(fontSize: 20)),
                    SizedBox(width: 16),
                    Text('$nirugu$char', style: const TextStyle(fontSize: 44)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS1'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs1', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS2'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs2', style: const TextStyle(fontSize: 32)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 32),
                    Text('FVS3'),
                    SizedBox(width: 16),
                    Text('$nirugu$char$fvs3', style: const TextStyle(fontSize: 32)),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
