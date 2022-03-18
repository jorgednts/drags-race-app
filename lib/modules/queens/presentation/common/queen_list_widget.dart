import 'package:flutter/material.dart';

import '../controller/queen_list_page_controller.dart';
import 'queen_card_widget.dart';

class QueenListWidget extends StatelessWidget {
  const QueenListWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final QueenListPageController controller;

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: controller.queenList.length,
          itemBuilder: (context, index) =>
              QueenCardWidget(queen: controller.queenList[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 320,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 2),
        ),
      );
}
