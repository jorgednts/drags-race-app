import 'package:flutter/material.dart';

import '../../domain/model/queen/queen_model.dart';
import 'queen_card_widget.dart';

class QueenListWidget extends StatelessWidget {
  const QueenListWidget({
    required this.queenList,
    Key? key,
  }) : super(key: key);

  final List<QueenModel> queenList;

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: queenList.length,
          itemBuilder: (context, index) =>
              QueenCardWidget(queen: queenList[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 320,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 2),
        ),
      );
}
