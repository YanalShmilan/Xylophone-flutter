import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  AudioCache audioPlugin = AudioCache();
  void playSound(int num) {
    audioPlugin.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.redAccent, num: 1),
                buildKey(color: Colors.orangeAccent, num: 2),
                buildKey(color: Colors.yellowAccent, num: 3),
                buildKey(color: Colors.greenAccent, num: 4),
                buildKey(color: Colors.tealAccent, num: 5),
                buildKey(color: Colors.blueAccent, num: 6),
                buildKey(color: Colors.purpleAccent, num: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
