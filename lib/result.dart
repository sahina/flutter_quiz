import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;
  final Function _restartHandler;

  Result(this._score, this._restartHandler);

  String get resultPhrase {
    return "Your score: $_score";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          onPressed: _restartHandler,
        )
      ],
    );
  }
}
