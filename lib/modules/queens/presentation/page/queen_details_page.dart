import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../data/repository/queen_repository_impl.dart';
import '../../domain/repository/queen_repository.dart';
import '../../domain/use_case/get_queen_by_id_use_case.dart';
import '../../external/remote_data_source/drags_race_remote_data_source_impl.dart';
import '../common/circular_progress_indicator_widget.dart';
import '../common/error_text_widget.dart';
import '../common/queen_details_widget.dart';
import '../controller/queen_details_controller.dart';
import 'queen_details_page_state.dart';

class QueenDetailsPage extends StatefulWidget {
  const QueenDetailsPage({
    required this.queenID,
    Key? key,
  }) : super(key: key);

  final int queenID;

  @override
  State<QueenDetailsPage> createState() => _QueenDetailsPageState();
}

class _QueenDetailsPageState extends State<QueenDetailsPage> {
  late DragsRaceRemoteDataSource dragsRaceRemoteDataSource;
  late QueenRepository queenRepository;
  late GetQueenByIdUseCase getQueenByIdUseCase;
  late QueenDetailsController controller;

  @override
  void initState() {
    super.initState();
    dragsRaceRemoteDataSource = DragsRaceRemoteDataSourceImpl(dio: Dio());
    queenRepository = QueenRepositoryImpl(
        dragsRaceRemoteDataSource: dragsRaceRemoteDataSource);
    getQueenByIdUseCase =
        GetQueenByIdUseCaseImpl(queenRepository: queenRepository);
    controller =
        QueenDetailsController(getQueenByIdUseCase: getQueenByIdUseCase);
    controller.getQueenByID(widget.queenID);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3, 0.7, 1.0],
              colors: [
                DragRaceConstantsColors.thirdGradientColor,
                DragRaceConstantsColors.secondGradientColor,
                DragRaceConstantsColors.firstGradientColor,
                DragRaceConstantsColors.primaryColor,
              ],
            ),
          ),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: ValueListenableBuilder<QueenDetailsPageState>(
                valueListenable: controller,
                builder: (context, state, _) {
                  switch (state) {
                    case QueenDetailsPageState.loading:
                      return const CircularProgressIndicatorWidget();
                    case QueenDetailsPageState.successQueenList:
                      return QueenDetailsWidget(queen: controller.queen!);
                    case QueenDetailsPageState.genericError:
                      return ErrorTextWidget(
                        errorText: S.of(context).genericErrorText,
                      );
                    case QueenDetailsPageState.networkError:
                      return ErrorTextWidget(
                        errorText: S.of(context).networkErrorText,
                      );
                  }
                }),
          ),
        ),
      );
}
