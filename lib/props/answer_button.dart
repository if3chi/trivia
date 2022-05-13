import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback ansQuestion;
  final String option;

  const AnswerButton(
      {Key? key, required this.option, required this.ansQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: ansQuestion,
        child: Text(
          option,
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
