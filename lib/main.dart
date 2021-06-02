import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    "What \'s your favourite color?",
    "What \'s your favourite animal?"
  ];
  void _answerChoosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: _answerChoosen,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: () => print("answer 2 chosen!"),
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: () {
                print("answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
