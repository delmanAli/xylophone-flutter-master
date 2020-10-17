import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Icon(Icons.music_note),
        onPressed: () {
          playSound(soundNumber);
        },
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
              buildkey(color: Colors.amber, soundNumber: 1),
              buildkey(color: Colors.green, soundNumber: 2),
              buildkey(color: Colors.red, soundNumber: 3),
              buildkey(color: Colors.blue, soundNumber: 4),
              buildkey(color: Colors.grey, soundNumber: 5),
              buildkey(color: Colors.yellow, soundNumber: 6),
              buildkey(color: Colors.cyan, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
