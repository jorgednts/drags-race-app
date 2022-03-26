import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_model.dart';
import 'custom_queen_details_text_widget.dart';
import 'thumb_icon_widget.dart';

class QueenGeneralInfoWidget extends StatelessWidget {
  const QueenGeneralInfoWidget({
    required this.queen,
    Key? key,
  }) : super(key: key);

  final QueenDetailsModel queen;

  @override
  Widget build(BuildContext context) => Container(
        height: 140,
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
                        width: 180,
                      ),
                      ThumbIconWidget(
                        icon: setIcon(queen.winner),
                        color: setIconColor(queen.winner),
                      ),
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
                        width: 180,
                      ),
                      ThumbIconWidget(
                        icon: setIcon(queen.missCongeniality),
                        color: setIconColor(queen.missCongeniality),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      CustomQueenDetailsTextWidget(
                        text: S.of(context).queenGeneralInfoBestPlacement,
                        fontSize: 18,
                        width: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          _getQueenBestPlacement(queen.seasonsList),
                          style: const TextStyle(
                              color: DragRaceConstantsColors.secondaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  IconData setIcon(bool isPositive) {
    if (isPositive == true) {
      return Icons.thumb_up_alt_rounded;
    }
    if (isPositive == false) {
      return Icons.thumb_down_alt_rounded;
    } else {
      return Icons.circle;
    }
  }

  Color setIconColor(bool isPositive) {
    if (isPositive == true || isPositive == false) {
      return Colors.pink;
    } else {
      return Colors.grey;
    }
  }

  String _getQueenBestPlacement(List<SeasonModel> seasonsList) {
    var bestPlace = seasonsList[0].place;
    for (final season in seasonsList) {
      if (season.place < bestPlace) {
        bestPlace = season.place;
      }
    }
    return bestPlace.toString();
  }
}
