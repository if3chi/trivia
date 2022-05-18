import 'package:flutter/material.dart';

import 'package:my_trivia/res/quiz.dart';
import 'package:my_trivia/props/question.dart';
import 'package:my_trivia/props/answer_button.dart';

class TriviaHome extends StatefulWidget {
  const TriviaHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TriviaHomeState();
}

class TriviaHomeState extends State<TriviaHome> {
  Quiz quiz = Quiz();
  int questionIndex = 0;

  void ansQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Question(question: quiz.question(questionIndex)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...quiz.answers(questionIndex).map(
                    (answer) => AnswerButton(
                      answerText: answer,
                      ansQuestion: ansQuestion,
                    ),
                  ),
            ],
          )
        ],
      ),
    );
  }
}
