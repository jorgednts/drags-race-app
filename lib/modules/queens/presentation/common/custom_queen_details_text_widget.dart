import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CustomQueenDetailsTextWidget extends StatelessWidget {
  const CustomQueenDetailsTextWidget({
    required this.text,
    this.width = 90,
    this.fontSize = 15,
    Key? key,
  }) : super(key: key);

  final String text;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            color: DragRaceConstantsColors.secondaryColor,
          ),
        ),
      );
}
