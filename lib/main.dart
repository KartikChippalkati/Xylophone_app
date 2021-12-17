import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colors, int number) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(number);
        },
        // child: Text("Click me"),
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
            //mainAxisAlignment: MainAxisAlignment.,   // for Colomn to stretch horizontally , u shoud use crossAxisAlignment and viceversa
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.purple, 1),
              buildKey(Colors.indigo, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.orange, 6),
              buildKey(Colors.red, 7),
              //  buildKey(Colors.pinkAccent, 8),
              // buildKey(Colors.orange[600], 9),
              //  buildKey(Colors.greenAccent, 10),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text(
              "Tap & Listen",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
