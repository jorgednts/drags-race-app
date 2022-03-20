import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../domain/model/details/lipsync_model.dart';
import 'custom_queen_details_text_widget.dart';

class QueenLipsyncsInfoWidget extends StatelessWidget {
  const QueenLipsyncsInfoWidget({
    required this.lipsyncs,
    Key? key,
  }) : super(key: key);

  final List<LipsyncModel> lipsyncs;
  static const shantay = 'Shantay, you stay!';
  static const sashay = 'Sashay away!';

  @override
  Widget build(BuildContext context) => ListView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: lipsyncs.length,
        itemBuilder: (context, index) => Container(
          height: 130,
          child: Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: DragRaceConstantsColors.secondaryColor,
                width: 3,
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
                          lipsyncs[index].name,
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
                          lipsyncs[index].artist,
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
                        getLipsyncResult(
                            lipsyncs[index].won),
                      ],
                    ),
                  ),
                ],
              ),
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