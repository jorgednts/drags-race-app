import 'package:drags_race_app/modules/common/drag_race_constants/drag_race_constants_colors.dart';
import 'package:flutter/material.dart';

import '../../domain/model/details/queen_details_model.dart';
import '../../../../generated/l10n.dart';

class QueenDetailsPage extends StatefulWidget {
  const QueenDetailsPage({
    required this.queenID,
    Key? key,
  }) : super(key: key);

  final int queenID;

  @override
  State<QueenDetailsPage> createState() => _QueenDetailsPageState();
}

class _QueenDetailsPageState extends State<QueenDetailsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3, 0.7, 1.0],
              colors: [
                DragRaceConstantsColors.thirdGradientColor,
                DragRaceConstantsColors.secondGradientColor,
                DragRaceConstantsColors.firstGradientColor,
                DragRaceConstantsColors.primaryColor,
              ],
            ),
          ),
        ),
      );
}
