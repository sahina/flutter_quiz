import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = ["What is your fav color??", "What is your fav food?"];
  var _questionIndex = 0;

  void _answer() {
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
        body: Column(
          children: <Widget>[
            Text(_questions[_questionIndex]),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: () => _answer,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: _answer,
            ),
          ],
        ),
      ),
    );
  }
}
