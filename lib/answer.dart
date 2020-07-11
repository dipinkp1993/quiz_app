import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFun;
  Answer(this.answerFun);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text("Answer"), color: Colors.red, onPressed: answerFun),
    );
  }
}
