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

  Expanded BuildKey({int soundNumber = 0, required Color colorName}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          PlaySound(soundNumber);
        },
        minWidth: double.infinity,
        enableFeedback: false,
        color: colorName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                BuildKey(soundNumber:1, colorName:Colors.red),
                BuildKey(soundNumber:2, colorName:Colors.orange),
                BuildKey(soundNumber:3, colorName:Colors.yellow),
                BuildKey(soundNumber:4, colorName:Colors.green),
                BuildKey(soundNumber:5, colorName:Colors.blue),
                BuildKey(soundNumber:6, colorName:Colors.indigo),
                BuildKey(soundNumber:7, colorName:Colors.purple.shade800),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
