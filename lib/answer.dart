import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final VoidCallback selectedHandler;
  Answer(this.answerText, this.selectedHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: selectedHandler,
      ),
    );
  }
}
