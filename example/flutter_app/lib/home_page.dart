import 'package:flutter/material.dart';
import 'package:flutter_app/words_page.dart';

import 'fvs_page.dart';
import 'mvs_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mongolian Characters')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('FVS'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FvsPage()));
              },
            ),
            ListTile(
              title: Text('MVS'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MvsPage()));
              },
            ),
            ListTile(
              title: Text('Words'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WordsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
