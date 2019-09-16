import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
        {"text": "blue", "score": 6},
        {"text": "green", "score": 3},
        {"text": "red", "score": 3},
        {"text": "white", "score": 1},
      ]
    },
    {
      "text": "What is your fav food?",
      "answers": [
        {"text": "tacos", "score": 6},
        {"text": "pasta", "score": 6},
        {"text": "bbq", "score": 6},
        {"text": "sandwich", "score": 6},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
