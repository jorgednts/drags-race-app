import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../domain/model/details/lipsync_model.dart';
import 'custom_queen_details_text_widget.dart';

class LipsyncCardWidget extends StatelessWidget {
  const LipsyncCardWidget({
    required this.lipsync,
    Key? key,
  }) : super(key: key);

  final LipsyncModel lipsync;
  static const shantay = 'Shantay, you stay!';
  static const sashay = 'Sashay away!';

  @override
  Widget build(BuildContext context) => Container(
        height: 130,
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: DragRaceConstantsColors.secondaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                          text: S.of(context).queenLipsyncInfoSongName),
                      Text(
                        lipsync.name,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                          text: S.of(context).queenLipsyncInfoSongArtist),
                      Text(
                        lipsync.artist,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                          text: S.of(context).queenLipsyncInfoResult),
                      getLipsyncResult(lipsync.won),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget getLipsyncResult(bool lipsyncResult) {
    if (lipsyncResult == true) {
      return const Text(
        shantay,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.greenAccent,
        ),
      );
    } else {
      return const Text(
        sashay,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.pinkAccent,
        ),
      );
    }
  }
}
