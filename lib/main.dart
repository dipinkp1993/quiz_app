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
    if (_questionIndex < questions.length) {
      print("We have More Questions");
    } else {
      print("No more questions");
    }
  }

  final questions = const [
    {
      'questionText': 'What\'s your favourte color?',
      'answers': ['Red', 'Blue', 'Green', 'Orange'],
    },
    {
      'questionText': 'What\'s your favourte animal?',
      'answers': ['Dog', 'Cat', 'Goat', 'Camel'],
    },
    {
      'questionText': 'What\'s your favourte Flower?',
      'answers': ['Rose', 'Lotus', 'Jasmine', 'Daliya'],
    },
    {
      'questionText': 'Who\'s your favourte Player?',
      'answers': ['Messi', 'Ronaldo', 'Neymer', 'Mbape'],
    },
    {
      'questionText': 'What\'s your favourte Bird?',
      'answers': ['Peacock', 'Parrot', 'Eagle', 'Chicken'],
    },
    {
      'questionText': 'What\'s your favourte animal?',
      'answers': ['Dog', 'Cat', 'Goat', 'Camel'],
    },
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]
                      ['questionText']), //question widget is custom widget
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text(
                  'You Have Completed The Quiz',
                  style: TextStyle(color: Colors.red, fontSize: 28),
                ),
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
