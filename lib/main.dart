import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//void main()=>runApp(MyApp()); The alernative syntax for function with single expression

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing Year 2020'),
        ),
        body: Text(
            "Testing Year 2020Testing Year 2020Testing Year 2020Testing Year 2020Testing Year 2020Testing Year 2020vTesting Year 2020"),
      ),
    );
  }
}
