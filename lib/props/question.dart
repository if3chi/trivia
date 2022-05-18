import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(
          color: Colors.grey[900],
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
