import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../controller/queen_details_controller.dart';
import 'custom_queen_details_text_widget.dart';

class QueenGeneralInfoWidget extends StatelessWidget {
  const QueenGeneralInfoWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final QueenDetailsController controller;

  @override
  Widget build(BuildContext context) => Container(
        height: 110,
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: DragRaceConstantsColors.secondaryColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                        text: S.of(context).queenGeneralInfoWinner,
                        fontSize: 18,
                        width: 120,
                      ),
                      setIcon(controller.queen!.winner),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                        text: S.of(context).queenGeneralInfoMissCongeniality,
                        fontSize: 18,
                        width: 120,
                      ),
                      setIcon(controller.queen!.missCongeniality),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget setIcon(bool isPositive) {
    if (isPositive == true) {
      return const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Icon(
          Icons.thumb_up_alt_rounded,
          color: Colors.greenAccent,
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Icon(
          Icons.thumb_down_alt_rounded,
          color: Colors.pink,
        ),
      );
    }
  }
}
