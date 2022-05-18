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
  int highScore = 0;
  int totalScore = 0;
  int questionIndex = 0;

  void ansQuestion(int score) {
    setState(() {
      totalScore += score;
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      if (highScore < totalScore) highScore = totalScore;
      setValues();
    });
  }

  void clearGameRecords() {
    setState(() {
      highScore = 0;
      setValues();
    });
  }

  void setValues() {
    totalScore = 0;
    questionIndex = 0;
    quiz.shuffleList();
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
              result: totalScore,
              highScore: highScore,
              resetQuiz: resetQuiz,
              clearScores: clearGameRecords,
            ),
    );
  }
}
