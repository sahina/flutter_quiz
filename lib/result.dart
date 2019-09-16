import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;

  Result(this._score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You did it! Your score is: $_score"),
    );
  }
}
