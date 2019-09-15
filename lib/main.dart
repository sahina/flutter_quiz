import 'package:flutter/material.dart';
import 'package:flutter_quiz/question.dart';
import 'package:flutter_quiz/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = const [
    {
      "text": "What is your favorite color?",
      "answers": [
        "blue",
        "green",
        "red",
        "blue",
      ]
    },
    {
      "text": "What is your fav food?",
      "answers": [
        "tacos",
        "pasta",
        "bbq",
        "sandwich",
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length ? Column(
          children: <Widget>[
            Question(_questions[_questionIndex]["text"]),
            ...(_questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ) : Center(child: Text("You did it!")),
      ),
    );
  }
}
