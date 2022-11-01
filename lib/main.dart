// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  int note = 1;

  void playingSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Widget createButton(int q, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playingSound(q);
        },
        child: Container(
          color: color,
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.all(0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "XYLOPHONE APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            createButton(1, Colors.red),
            createButton(2, Colors.blue),
            createButton(3, Colors.deepPurple),
            createButton(4, Colors.amber),
            createButton(5, Colors.greenAccent),
            createButton(6, Colors.orangeAccent),
            createButton(7, Colors.yellow),
          ],
        ),
      ),
    );
  }
}
