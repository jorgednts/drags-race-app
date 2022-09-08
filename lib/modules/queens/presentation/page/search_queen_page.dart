import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/drag_race_constants/drag_race_constants_strings.dart';
import '../common/circular_progress_indicator_widget.dart';
import '../common/search_queen_page_card_widget.dart';
import '../common/search_queen_page_state_message_widget.dart';
import '../controller/search_queen_page_controller.dart';
import 'search_queen_page_state.dart';

class SearchQueenPage extends StatefulWidget {
  const SearchQueenPage({Key? key}) : super(key: key);

  @override
  State<SearchQueenPage> createState() => _SearchQueenPageState();
}

class _SearchQueenPageState
    extends ModularState<SearchQueenPage, SearchQueenPageController> {
  late TextEditingController queenName;

  @override
  void initState() {
    super.initState();
    queenName = TextEditingController();
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
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 280,
                        child: TextField(
                          controller: queenName,
                          decoration: InputDecoration(
                            hintText: S.of(context).searchQueenPageHintText,
                            contentPadding: const EdgeInsets.only(left: 20),
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: DragRaceConstantsColors.secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.getQueenByName(
                            formatQueenName(
                              queenName.text.toString(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.search_rounded,
                            color: DragRaceConstantsColors.secondaryColor,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ValueListenableBuilder<SearchQueenPageState>(
                  valueListenable: controller,
                  builder: (context, state, _) {
                    switch (state) {
                      case SearchQueenPageState.initialState:
                        return SearchQueenPageStateMessageWidget(
                          message: S.of(context).searchQueenPageInfoText,
                        );
                      case SearchQueenPageState.successQueen:
                        return SearchQueenPageCardWidget(
                            queen: controller.queen!);
                      case SearchQueenPageState.loading:
                        return const CircularProgressIndicatorWidget();
                      case SearchQueenPageState.notFoundQueen:
                        return SearchQueenPageStateMessageWidget(
                            message: S.of(context).notFoundErrorText);
                      case SearchQueenPageState.genericError:
                        return SearchQueenPageStateMessageWidget(
                            message: S.of(context).genericErrorText);
                      case SearchQueenPageState.networkError:
                        return SearchQueenPageStateMessageWidget(
                            message: S.of(context).networkErrorText);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );

  String formatQueenName(String queenName) {
    final formatQueenName = queenName.replaceAll(RegExp(' '), '%20');
    return formatQueenName;
  }
}
