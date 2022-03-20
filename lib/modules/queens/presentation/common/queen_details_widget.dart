import 'package:drags_race_app/modules/queens/constants/queen_constants_images.dart';
import 'package:drags_race_app/modules/queens/presentation/common/queen_base_info_widget.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../controller/queen_details_controller.dart';

class QueenDetailsWidget extends StatelessWidget {
  const QueenDetailsWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final QueenDetailsController controller;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              QueenBaseInfoWidget(controller: controller),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  controller.queen!.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class CustomQueenDetailsText extends StatelessWidget {
  const CustomQueenDetailsText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Container(
        width: 90,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: DragRaceConstantsColors.secondaryColor,
          ),
        ),
      );
}
