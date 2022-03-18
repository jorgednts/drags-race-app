import 'package:drags_race_app/modules/drag_race_constants/drag_race_constants_colors.dart';
import 'package:flutter/material.dart';

class SearchQueenPage extends StatefulWidget {
  const SearchQueenPage({Key? key}) : super(key: key);

  @override
  State<SearchQueenPage> createState() => _SearchQueenPageState();
}

class _SearchQueenPageState extends State<SearchQueenPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: DragRaceConstantsColors.primaryColor,
          title: const Text("Rupaul's Drag Race App"),
          centerTitle: true,
        ),
      );
}
