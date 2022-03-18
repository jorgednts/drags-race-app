import 'package:flutter/material.dart';

import '../../../drag_race_constants/drag_race_constants_colors.dart';
import '../../../../generated/l10n.dart';

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
          title: const Text(
            "RuPaul's Drag Race App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintStyle: TextStyle(
                              color: DragRaceConstantsColors.hintTextColor),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search_rounded,
                        color: DragRaceConstantsColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                      width: 300,
                      child: Text(
                        S.of(context).searchQueenPageInfoText,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      );
}
