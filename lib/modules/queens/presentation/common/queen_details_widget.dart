import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../controller/queen_details_controller.dart';
import 'queen_base_info_widget.dart';
import 'queen_general_info_widget.dart';
import 'queen_lipsyncs_info_widget.dart';

class QueenDetailsWidget extends StatelessWidget {
  const QueenDetailsWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final QueenDetailsController controller;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QueenBaseInfoWidget(queen: controller.queen!),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: Text(
                  S.of(context).queenDetailsGeneralInfo,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              QueenGeneralInfoWidget(
                queen: controller.queen!,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  S.of(context).queenDetailsLipsyncsInfo,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: QueenLipsyncsInfoWidget(
                  lipsyncs: controller.queen!.lipsyncsList,
                ),
              ),
            ],
          ),
        ),
      );
}
