import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFun;
  final String answerText;
  Answer(this.answerFun, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answerText),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: answerFun),
    );
  }
}
