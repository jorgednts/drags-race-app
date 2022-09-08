import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../constants/queens_constants_routes.dart';
import '../../domain/model/details/queen_details_model.dart';
import 'queen_base_info_widget.dart';

class SearchQueenPageCardWidget extends StatelessWidget {
  const SearchQueenPageCardWidget({
    required this.queen,
    Key? key,
  }) : super(key: key);

  final QueenDetailsModel queen;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: () {
            Modular.to.navigate(QueensConstantsRoutes.queenDetailsPage);
          },
          child: QueenBaseInfoWidget(
            queen: queen,
            frameColor: DragRaceConstantsColors.primaryColor,
          ),
        ),
      );
}
