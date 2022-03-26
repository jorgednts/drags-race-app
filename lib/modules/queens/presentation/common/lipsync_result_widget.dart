import 'package:flutter/material.dart';

class LipsyncResultWidget extends StatelessWidget {
  const LipsyncResultWidget({
    required this.resultText,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String resultText;
  final Color color;

  @override
  Widget build(BuildContext context) => Text(
    resultText,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: color,
    ),
  );
}