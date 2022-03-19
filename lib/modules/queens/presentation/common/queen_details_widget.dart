import 'package:flutter/material.dart';

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
          Container(
            padding: const EdgeInsets.only(top: 3),
            height: 280,
            child: Image.network(
              controller.queen!.imageUrl,
              fit: BoxFit.fitHeight,
              loadingBuilder:
                  (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(
                  child: CircularProgressIndicator(
                    color: DragRaceConstantsColors
                        .primaryColor,
                  ),
                );
              },
            ),
          ),
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
