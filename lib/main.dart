import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.red,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.orange,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.yellow,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.green,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note6.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.indigo,
              ),
              MaterialButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'),
                  );
                },
                enableFeedback: false,
                color: Colors.purple.shade900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
