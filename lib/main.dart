import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String note}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 6.0,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(note),
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
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1, note: 'DO'),
                buildKey(color: Colors.orange, soundNumber: 2, note: 'RE'),
                buildKey(color: Colors.yellow, soundNumber: 3, note: 'MI'),
                buildKey(color: Colors.green, soundNumber: 4, note: 'FA'),
                buildKey(color: Colors.teal, soundNumber: 5, note: 'SO'),
                buildKey(color: Colors.blue, soundNumber: 6, note: 'LA'),
                buildKey(color: Colors.purple, soundNumber: 7, note: 'TI'),
              ],
          ),
        ),
      ),
    );
  }
}
