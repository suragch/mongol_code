import 'package:flutter/material.dart';

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
      body: ListView.builder(
        itemCount: mongolianCharacters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mongolianCharacters[index], style: const TextStyle(fontSize: 44)),
            subtitle: Text('U+${(0x1820 + index).toRadixString(16).toUpperCase().padLeft(4, '0')}'),
          );
        },
      ),
    );
  }
}
