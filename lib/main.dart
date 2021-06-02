import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerChoosen() {
    print("answer choosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What \'s your favourite color?",
      "What \'s your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Text("The question"),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: answerChoosen,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: answerChoosen,
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: answerChoosen,
            ),
          ],
        ),
      ),
    );
  }
}
