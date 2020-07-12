import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

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
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have More Questions");
    } else {
      print("No more questions");
    }
  }

  final _questions = const [
    {
      'questionText': 'Do You feel sad?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
    {
      'questionText': 'Do You feel restlessness?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
    {
      'questionText': 'Do You feel extreme tiredness?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
    {
      'questionText':
          'Do You feel everything lost when expections are not met?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
    {
      'questionText': 'Do You think about death?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
    {
      'questionText': 'Do you feel so guilty?',
      'answers': [
        {'text': 'Most of the time', 'score': 10},
        {'text': 'Sometimes', 'score': 6},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Almost Never', 'score': 2}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Depression Test',
          ),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore),
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
