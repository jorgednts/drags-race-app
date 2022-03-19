import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import 'package:flutter/material.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({
    required this.errorText,
    Key? key,
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        child: Text(
          errorText,
          style: const TextStyle(
              color: DragRaceConstantsColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      );
}