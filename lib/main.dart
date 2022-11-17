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
          child: MaterialButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note1.wav'),
              );
            },
            enableFeedback: false,
          ),
        ),
      ),
    );
  }
}
