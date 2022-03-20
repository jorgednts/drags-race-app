import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/queen_constants_images.dart';
import '../controller/queen_details_controller.dart';
import 'custom_queen_details_text_widget.dart';

class QueenBaseInfoWidget extends StatelessWidget {
  const QueenBaseInfoWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final QueenDetailsController controller;

  String getSeasonByID(int seasonID) {
    if (seasonID <= 4) {
      return seasonID.toString();
    } else {
      if (seasonID % 2 == 0) {
        return (seasonID - 1).toString();
      } else {
        return 'AS${seasonID - 4}';
      }
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: DragRaceConstantsColors.secondaryColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 140,
                child: FadeInImage(
                  image: NetworkImage(
                    controller.queen!.imageUrl,
                  ),
                  placeholder:
                      const AssetImage(QueenConstantsImages.loadingIcon),
                  imageErrorBuilder: (content, error, stackTrace) =>
                      Image.asset(
                    QueenConstantsImages.lilPoundCakeIcon,
                    fit: BoxFit.fitWidth,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          CustomQueenDetailsTextWidget(
                            text: S.of(context).queenDetailsID,
                          ),
                          Text(
                            controller.queen!.id.toString(),
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
                            text: S.of(context).queenDetailsName,
                          ),
                          Text(
                            controller.queen!.name,
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
                            text: S.of(context).queenDetailsSeasons,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Wrap(
                                children: List.generate(
                                  controller.queen!.seasonsList.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Chip(
                                      label: Text(
                                        getSeasonByID(controller
                                            .queen!.seasonsList[index].id),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor: DragRaceConstantsColors
                                          .secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
