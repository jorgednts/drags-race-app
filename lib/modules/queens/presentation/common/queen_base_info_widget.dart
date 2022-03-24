import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/queen_constants_images.dart';
import '../../domain/model/details/queen_details_model.dart';
import 'custom_queen_details_text_widget.dart';

class QueenBaseInfoWidget extends StatelessWidget {
  const QueenBaseInfoWidget({
    required this.queen,
    this.frameColor = DragRaceConstantsColors.secondaryColor,
    Key? key,
  }) : super(key: key);

  final QueenDetailsModel queen;
  final Color frameColor;

  @override
  Widget build(BuildContext context) => Container(
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: frameColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 140,
                width: 120,
                child: FadeInImage(
                  image: NetworkImage(
                    queen.imageUrl,
                  ),
                  placeholder:
                      const AssetImage(QueenConstantsImages.loadingIcon),
                  imageErrorBuilder: (content, error, stackTrace) =>
                      Image.asset(
                    QueenConstantsImages.lilPoundCakeIcon,
                    fit: BoxFit.fitWidth,
                  ),
                  fit: BoxFit.fitHeight,
                  placeholderFit: BoxFit.fitWidth,
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
                            queen.id.toString(),
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
                            queen.name,
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
                                  queen.seasonsList.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Chip(
                                      label: Text(
                                        queen.seasonsList[index].seasonNumber,
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
