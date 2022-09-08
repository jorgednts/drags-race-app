import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 80,
              width: 80,
              child: const CircularProgressIndicator(
                color: DragRaceConstantsColors.secondaryColor,
              ),
            ),
          ),
        ],
      );
}
