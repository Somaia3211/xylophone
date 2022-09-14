import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}
git init
class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioCache();

  void soundPlayer(int number) {
    player.play('note$number.wav');
  }

  Expanded createKey({Color color, number}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          soundPlayer(number);
        },
        style: TextButton.styleFrom(backgroundColor: color),
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
              createKey(color: Colors.red, number: 1),
              createKey(color: Colors.orange, number: 2),
              createKey(color: Colors.yellow, number: 3),
              createKey(color: Colors.teal, number: 4),
              createKey(color: Colors.blue, number: 5),
              createKey(color: Colors.purple, number: 6),
              createKey(color: Colors.deepPurple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
