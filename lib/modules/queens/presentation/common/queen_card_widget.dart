import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/queens_constants_routes.dart';
import '../../domain/model/queen/queen_model.dart';

class QueenCardWidget extends StatelessWidget {
  const QueenCardWidget({
    required this.queen,
    Key? key,
  }) : super(key: key);

  final QueenModel queen;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          Modular.to.pushNamed(
            QueensConstantsRoutes.queenDetails,
            arguments: queen.id,
          );
        },
        child: Container(
          height: 60,
          child: Card(
            color: DragRaceConstantsColors.secondGradientColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: DragRaceConstantsColors.firstGradientColor, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(
                    queenIdToString(queen.id),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 3),
                  height: 250,
                  width: 160,
                  child: Image.network(
                    queen.imageUrl,
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return const Center(
                        child: CircularProgressIndicator(
                          color: DragRaceConstantsColors.primaryColor,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 8, right: 8),
                  child: Text(
                    queen.name,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  String queenIdToString(int queenId) => queenId.toString();
}
