import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You Have Completed The Quiz',
        style: TextStyle(color: Colors.red, fontSize: 28),
      ),
    );
  }
}
