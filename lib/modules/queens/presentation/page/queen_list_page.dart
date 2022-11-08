import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/drag_race_constants/drag_race_constants_strings.dart';
import '../../constants/queens_constants_routes.dart';
import '../common/circular_progress_indicator_widget.dart';
import '../common/error_text_widget.dart';
import '../common/queen_list_widget.dart';
import '../controller/queen_list_page_controller.dart';
import 'queen_list_page_state.dart';

class QueenListPage extends StatefulWidget {
  const QueenListPage({Key? key}) : super(key: key);

  @override
  State<QueenListPage> createState() => _QueenListPageState();
}

class _QueenListPageState extends State<QueenListPage> {
  final QueenListPageController controller =
      Modular.get<QueenListPageController>();

  @override
  void initState() {
    super.initState();
    controller.getQueenList();
  }

  void goToSearchQueenPage(BuildContext context) {
    Modular.to.pushNamed(QueensConstantsRoutes.queenSearch);
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
        body: ValueListenableBuilder<QueenListPageState>(
          valueListenable: controller,
          builder: (context, state, _) {
            switch (state) {
              case QueenListPageState.loading:
                return const CircularProgressIndicatorWidget();
              case QueenListPageState.successQueenList:
                return SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Column(
                        children: [
                          QueenListWidget(controller: controller),
                        ],
                      ),
                    ),
                  ),
                );
              case QueenListPageState.genericError:
                return ErrorTextWidget(
                  errorText: S.of(context).genericErrorText,
                );
              case QueenListPageState.networkError:
                return ErrorTextWidget(
                  errorText: S.of(context).networkErrorText,
                );
            }
          },
        ),
      );
}
