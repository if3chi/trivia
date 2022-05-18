import 'package:flutter/material.dart';

import 'package:my_trivia/components/main_text.dart';
import 'package:my_trivia/components/answer_button.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback resetQuiz;

  const Result({Key? key, required this.result, required this.resetQuiz})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainText(text: "End of Quiz, you scored: $result"),
          AnswerButton(answerText: 'Reset Quiz', ansQuestion: resetQuiz)
        ],
      ),
    );
  }
}
