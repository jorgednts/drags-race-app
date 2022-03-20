import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../controller/queen_details_controller.dart';
import 'queen_base_info_widget.dart';
import 'queen_general_info_widget.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QueenBaseInfoWidget(controller: controller),
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
                controller: controller,
              ),
            ],
          ),
        ),
      );
}


