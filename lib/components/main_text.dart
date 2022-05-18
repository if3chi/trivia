import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String text;

  const MainText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[900],
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
