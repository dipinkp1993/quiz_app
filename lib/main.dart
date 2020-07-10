import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//void main()=>runApp(MyApp()); The alernative syntax for function with single expression

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Option pressed");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourte color?',
      'What\'s your favourte animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing Year 2020'),
        ),
        body: Column(
          children: [
            Text("Questions"),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(child: Text("Answer3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
