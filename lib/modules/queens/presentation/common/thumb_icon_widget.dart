import 'package:flutter/material.dart';

class ThumbIconWidget extends StatelessWidget {
  const ThumbIconWidget({
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Icon(
      icon,
      color: color,
    ),
  );
}