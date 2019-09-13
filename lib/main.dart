import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answer() {
    print("clicked");
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
            Text("question"),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
