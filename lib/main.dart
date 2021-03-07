import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: xylophoneApp()));
}

class xylophoneApp extends StatefulWidget {
  @override
  _xylophoneAppState createState() => _xylophoneAppState();
}

class _xylophoneAppState extends State<xylophoneApp> {
  void buttonPressed(int buttonNumber) {
    final player = AudioCache();
    player.play('note$buttonNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(1);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(2);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(3);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(4);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(5);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(6);
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      buttonPressed(7);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
