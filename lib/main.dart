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

  Expanded BuildKey({int soundNumber = 0, required Color colorName, double width = 400}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: MaterialButton(
            height: double.infinity,
            onPressed: () {
              PlaySound(soundNumber);
            },
            minWidth: width,
            enableFeedback: false,
            color: colorName,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  BuildKey(soundNumber:1, colorName:Colors.red, width: 350),
                  BuildKey(soundNumber:2, colorName:Colors.orange, width: 320),
                  BuildKey(soundNumber:3, colorName:Colors.yellow, width: 290),
                  BuildKey(soundNumber:4, colorName:Colors.green, width: 260),
                  BuildKey(soundNumber:5, colorName:Colors.blue, width: 230),
                  BuildKey(soundNumber:6, colorName:Colors.indigo, width: 200),
                  BuildKey(soundNumber:7, colorName:Colors.purple.shade800, width: 170),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
