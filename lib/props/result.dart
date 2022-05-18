import 'package:flutter/material.dart';

import 'package:my_trivia/components/header_text.dart';
import 'package:my_trivia/components/answer_button.dart';

class Result extends StatelessWidget {
  final int result;
  final int highScore;
  final VoidCallback resetQuiz;
  final VoidCallback clearScores;

  const Result({
    Key? key,
    required this.result,
    required this.resetQuiz,
    required this.highScore,
    required this.clearScores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...highScoreText(),
          AnswerButton(
            answerText: 'Reset Quiz',
            ansQuestion: resetQuiz,
            clearRecords: clearScores,
          )
        ],
      ),
    );
  }

  List<HeaderText> highScoreText() => [
        if (highScore > 0 && result > highScore)
          HeaderText(text: "New High Score: $result"),
        if (highScore > 0) HeaderText(text: "High Score: $highScore"),
        HeaderText(text: "End of Quiz, you scored: $result")
      ];
}
