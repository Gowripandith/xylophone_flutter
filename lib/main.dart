import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playsound(soundNumber);
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.lightGreenAccent, soundNumber: 4),
            buildKey(color: Colors.blue, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.pink, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
