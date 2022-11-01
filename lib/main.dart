// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(1, Colors.red),
              createButton(2, Colors.orange),
              createButton(3, Colors.yellow),
              createButton(4, Colors.green),
              createButton(5, Colors.teal),
              createButton(6, Colors.blue),
              createButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
