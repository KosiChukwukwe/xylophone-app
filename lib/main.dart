import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int note = 1;
    final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: TextButton(
                  onPressed: () async {
                    await player.setSource(
                      AssetSource('note1.wav'),
                    );
                    await player.resume();
                  },
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 70,
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.deepPurple,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.amber,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.greenAccent,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.orangeAccent,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await player.setSource(
                    AssetSource('note1.wav'),
                  );
                  await player.resume();
                },
                child: Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: 70,
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
