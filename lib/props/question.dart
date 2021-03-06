import 'package:flutter/material.dart';

import 'package:my_trivia/components/header_text.dart';
import 'package:my_trivia/components/answer_button.dart';

class Question extends StatelessWidget {
  final List answers;
  final String question;
  final Function choice;

  const Question({
    Key? key,
    required this.question,
    required this.answers,
    required this.choice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: double.infinity,
          child: HeaderText(text: question),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...answers.map(
              (answer) => AnswerButton(
                answerText: answer['text'],
                clearRecords: () {},
                ansQuestion: () => choice(answer['score']),
              ),
            ),
          ],
        )
      ],
    );
  }
}
