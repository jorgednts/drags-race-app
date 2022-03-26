import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 250),
    child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          child: const CircularProgressIndicator(
            color: DragRaceConstantsColors.primaryColor,
          ),
        ),
      ),
  );
}
