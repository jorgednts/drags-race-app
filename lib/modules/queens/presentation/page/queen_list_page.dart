import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/drag_race_constants/drag_race_constants_strings.dart';
import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../data/repository/queen_repository_impl.dart';
import '../../domain/repository/queen_repository.dart';
import '../../domain/use_case/get_all_queens_use_case.dart';
import '../../external/remote_data_source/drags_race_remote_data_source_impl.dart';
import '../common/circular_progress_indicator.dart';
import '../common/queen_list_widget.dart';
import '../controller/queen_list_page_controller.dart';
import 'queen_list_page_state.dart';
import 'search_queen_page.dart';

class QueenListPage extends StatefulWidget {
  const QueenListPage({Key? key}) : super(key: key);

  @override
  State<QueenListPage> createState() => _QueenListPageState();
}

class _QueenListPageState extends State<QueenListPage> {
  late DragsRaceRemoteDataSource dragsRaceRemoteDataSource;
  late QueenRepository queenRepository;
  late GetAllQueensUseCase getAllQueensUseCase;
  late QueenListPageController controller;

  @override
  void initState() {
    super.initState();
    dragsRaceRemoteDataSource = DragsRaceRemoteDataSourceImpl(dio: Dio());
    queenRepository = QueenRepositoryImpl(
        dragsRaceRemoteDataSource: dragsRaceRemoteDataSource);
    getAllQueensUseCase =
        GetAllQueensUseCaseImpl(queenRepository: queenRepository);
    controller =
        QueenListPageController(getAllQueensUseCase: getAllQueensUseCase);
    controller.getQueenList();
  }

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
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).queenListPageGenericErrorText,
                    style: const TextStyle(
                        color: DragRaceConstantsColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                );
              case QueenListPageState.networkError:
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).queenListPageNetworkErrorText,
                    style: const TextStyle(
                        color: DragRaceConstantsColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                );
            }
          },
        ),
      );
}

