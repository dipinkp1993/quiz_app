import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}
//void main()=>runApp(MyApp()); The alernative syntax for function with single expression

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions = [
    'What\'s your favourte color?',
    'What\'s your favourte animal?',
    'What\'s your favourte Player?',
    'What\'s your favourte Flower?',
    'What\'s your favourte Birds?',
    'What\'s your favourte Actor?',
    'What\'s your favourte Song?',
    'What\'s your favourte Dacer?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Testing Year 2020',
          ),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]), //question widget is custom widget
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
