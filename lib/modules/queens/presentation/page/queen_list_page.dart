import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/drag_race_constants/drag_race_constants_strings.dart';
import 'search_queen_page.dart';

class QueenListPage extends StatefulWidget {
  const QueenListPage({Key? key}) : super(key: key);

  @override
  State<QueenListPage> createState() => _QueenListPageState();
}

class _QueenListPageState extends State<QueenListPage> {
  void goToSearchQueenPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchQueenPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: DragRaceConstantsColors.primaryColor,
          title: const Text(
            DragRaceConstantsStrings.appBarTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.only(top: 8, right: 12, bottom: 8),
                child: Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
              ),
              onTap: () {
                goToSearchQueenPage(context);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return Text('Item');


                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}