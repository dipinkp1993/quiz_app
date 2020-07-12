import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultOutput {
    var resultText;
    if (resultScore <= 16) {
      resultText = "You are not depressed and perfectly alright";
    } else if (resultScore <= 28) {
      resultText = "You are not depressed but Ok ";
    } else if (resultScore <= 40) {
      resultText = "You are  not dpressed but sad ,revalidate your thoughts ";
    } else if (resultScore <= 54) {
      resultText = "You may be depressed,revalidate your thoughts ";
    } else {
      resultText =
          "You Are depressed,Because You believe you are depressed and know Feelings are not facts ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultOutput,
        style: TextStyle(
          color: Colors.red,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
