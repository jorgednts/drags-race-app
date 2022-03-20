import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CustomQueenDetailsTextWidget extends StatelessWidget {
  const CustomQueenDetailsTextWidget({
    required this.text,
    this.width = 90,
    Key? key,
  }) : super(key: key);

  final String text;
  final double width;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    child: Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: DragRaceConstantsColors.secondaryColor,
      ),
    ),
  );
}
