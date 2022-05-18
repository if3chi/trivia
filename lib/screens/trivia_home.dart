import 'package:flutter/material.dart';

import 'package:my_trivia/res/quiz.dart';
import 'package:my_trivia/props/result.dart';
import 'package:my_trivia/props/question.dart';

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

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: quiz.hasMoreQtns(questionIndex)
          ? Question(
              question: quiz.question(questionIndex),
              answers: quiz.answers(questionIndex),
              choice: ansQuestion,
            )
          : Result(
              resetQuiz: resetQuiz,
              result: 30,
            ),
    );
  }
}
