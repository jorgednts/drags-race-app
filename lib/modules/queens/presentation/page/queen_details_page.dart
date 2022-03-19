import 'package:dio/dio.dart';
import 'package:drags_race_app/modules/queens/presentation/common/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../data/repository/queen_repository_impl.dart';
import '../../domain/repository/queen_repository.dart';
import '../../domain/use_case/get_queen_by_id_use_case.dart';
import '../../external/remote_data_source/drags_race_remote_data_source_impl.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                ValueListenableBuilder<QueenDetailsPageState>(
                    valueListenable: controller,
                    builder: (context, state, _) {
                      switch (state) {
                        case QueenDetailsPageState.loading:
                          return const CircularProgressIndicatorWidget();
                        case QueenDetailsPageState.successQueenList:
                          return Center(
                            child: Text('1'),
                          );
                        case QueenDetailsPageState.notFoundQueenError:
                          return Center(
                            child: Text('Não encontrado'),
                          );
                        case QueenDetailsPageState.genericError:
                          return Center(
                            child: Text('erro'),
                          );
                        case QueenDetailsPageState.networkError:
                          return Center(
                            child: Text('erro de internet'),
                          );
                      }
                    }),
              ],
            ),
          ),
        ),
      );
}