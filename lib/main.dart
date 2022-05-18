import 'package:flutter/material.dart';

import 'package:my_trivia/screens/trivia_home.dart';

void main() => runApp(const Trivia());

class Trivia extends StatelessWidget {
  const Trivia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trivia App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Trivia: General')),
        ),
        body: const TriviaHome(),
      ),
    );
  }
}
