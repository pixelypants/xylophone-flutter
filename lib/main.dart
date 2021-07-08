import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'components/noteKey.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            NoteKey(noteNumber: 1, callback: playSound, color: Colors.red),
            NoteKey(noteNumber: 2, callback: playSound, color: Colors.orange),
            NoteKey(noteNumber: 3, callback: playSound, color: Colors.yellow),
            NoteKey(noteNumber: 4, callback: playSound, color: Colors.green),
            NoteKey(noteNumber: 5, callback: playSound, color: Colors.teal),
            NoteKey(noteNumber: 6, callback: playSound, color: Colors.blue),
            NoteKey(noteNumber: 7, callback: playSound, color: Colors.purple),
          ]),
        ),
      ),
    );
  }
}
