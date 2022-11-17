import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void PlaySound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  PlaySound(1);
                  },
                enableFeedback: false,
                color: Colors.red,
              ),
              MaterialButton(
                onPressed: () {
                  PlaySound(2);
                },
                enableFeedback: false,
                color: Colors.orange,
              ),
              MaterialButton(
                onPressed: () {
                  PlaySound(3);
                },
                enableFeedback: false,
                color: Colors.yellow,
              ),
              MaterialButton(
                onPressed: () {
                 PlaySound(4);
                },
                enableFeedback: false,
                color: Colors.green,
              ),
              MaterialButton(
                onPressed: () {
                 PlaySound(5);
                },
                enableFeedback: false,
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  PlaySound(6);
                },
                enableFeedback: false,
                color: Colors.indigo,
              ),
              MaterialButton(
                onPressed: () {
                  PlaySound(7);
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
