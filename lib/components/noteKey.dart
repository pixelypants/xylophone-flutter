import 'package:flutter/material.dart';

class NoteKey extends StatelessWidget {
  final int noteNumber;
  final Function(int) callback;
  final Color color;

  const NoteKey(
      {@required this.noteNumber,
      @required this.callback,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {
            callback(noteNumber);
          },
        ),
      ),
    );
  }
}
