import 'package:flutter/material.dart';
import 'package:my_trivia/res/quiz.dart';
import 'package:my_trivia/props/answer_button.dart';

class TriviaHome extends StatefulWidget {
  const TriviaHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TriviaHomeState();
}

class TriviaHomeState extends State<TriviaHome> {
  var quiz = Quiz();
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
          Center(
            child: Text(
              quiz.question(questionIndex),
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnswerButton(
                  ansQuestion: ansQuestion,
                  option: quiz.answer(questionIndex)[0],
                ),
                AnswerButton(
                  ansQuestion: ansQuestion,
                  option: quiz.answer(questionIndex)[1],
                ),
                AnswerButton(
                  ansQuestion: ansQuestion,
                  option: quiz.answer(questionIndex)[2],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
