import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback ansQuestion;

  const AnswerButton(
      {Key? key, required this.answerText, required this.ansQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: ansQuestion,
        child: Text(
          answerText,
          strutStyle: const StrutStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            leading: 2,
          ),
        ),
      ),
    );
  }
}
