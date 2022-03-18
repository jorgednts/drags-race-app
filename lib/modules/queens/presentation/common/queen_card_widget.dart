import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../domain/model/queen/queen_model.dart';

class QueenCardWidget extends StatelessWidget {
  const QueenCardWidget({
    required this.queen,
    Key? key,
  }) : super(key: key);

  final QueenModel queen;

  @override
  Widget build(BuildContext context) => Container(
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: DragRaceConstantsColors.secondaryColor, width: 3),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('#${queen.id.toString()}'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                height: 250,
                child: Image.network(
                  queen.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  queen.name,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      );
}
