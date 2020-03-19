import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildkey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(soundNumber: 1, color: Colors.purple),
            buildkey(soundNumber: 2, color: Colors.indigo),
            buildkey(soundNumber: 3, color: Colors.blue),
            buildkey(soundNumber: 4, color: Colors.green),
            buildkey(soundNumber: 5, color: Colors.yellow),
            buildkey(soundNumber: 6, color: Colors.orange),
            buildkey(soundNumber: 7, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
