import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class SearchQueenPageStateMessageWidget extends StatelessWidget {
  const SearchQueenPageStateMessageWidget({
    required this.message,
    Key? key,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          width: 300,
          child: Text(
            message,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: DragRaceConstantsColors.primaryColor),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
