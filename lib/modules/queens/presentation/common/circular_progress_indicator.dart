import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      child: Container(
        alignment: Alignment.center,
        height: 80,
        width: 80,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: CircularProgressIndicator(
              color: DragRaceConstantsColors.primaryColor,
            ),
          ),
        ),
      ),
    );
}
