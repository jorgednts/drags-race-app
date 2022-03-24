import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../page/queen_details_page.dart';
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QueenDetailsPage(
                  queenID: queen.id,
                ),
              ),
            );
          },
          child: QueenBaseInfoWidget(
            queen: queen,
            frameColor: DragRaceConstantsColors.primaryColor,
          ),
        ),
      );
}
