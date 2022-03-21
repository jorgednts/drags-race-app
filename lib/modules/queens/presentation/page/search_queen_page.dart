import 'package:dio/dio.dart';
import 'package:drags_race_app/modules/queens/data/remote/data_source/drags_race_remote_data_source.dart';
import 'package:drags_race_app/modules/queens/data/repository/queen_repository_impl.dart';
import 'package:drags_race_app/modules/queens/domain/repository/queen_repository.dart';
import 'package:drags_race_app/modules/queens/domain/use_case/get_queen_by_name_use_case.dart';
import 'package:drags_race_app/modules/queens/external/remote_data_source/drags_race_remote_data_source_impl.dart';
import 'package:drags_race_app/modules/queens/presentation/controller/search_queen_page_controller.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/drag_race_constants/drag_race_constants_colors.dart';
import '../../../common/drag_race_constants/drag_race_constants_strings.dart';

class SearchQueenPage extends StatefulWidget {
  const SearchQueenPage({Key? key}) : super(key: key);

  @override
  State<SearchQueenPage> createState() => _SearchQueenPageState();
}

class _SearchQueenPageState extends State<SearchQueenPage> {

  late DragsRaceRemoteDataSource dragsRaceRemoteDataSource;
  late QueenRepository queenRepository;
  late GetQueenByNameUseCase getQueenByNameUseCase;
  late SearchQueenPageController controller;
  late TextEditingController queenName;

  @override
  void initState() {
    super.initState();
    dragsRaceRemoteDataSource = DragsRaceRemoteDataSourceImpl(dio: Dio());
    queenRepository = QueenRepositoryImpl(
        dragsRaceRemoteDataSource: dragsRaceRemoteDataSource);
    getQueenByNameUseCase =
        GetQueenByNameUseCaseImpl(queenRepository: queenRepository);
    controller =
        SearchQueenPageController(getQueenByNameUseCase: getQueenByNameUseCase);
    queenName = TextEditingController();
    controller.getQueenByName(queenName.toString());
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
                          decoration: InputDecoration(
                            hintText: S.of(context).searchQueenPageHintText,
                            contentPadding: const EdgeInsets.only(left: 20),
                            hintStyle: const TextStyle(
                                color: Colors.grey),
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
                        onTap: (){},
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
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                      width: 300,
                      child: Text(
                        S.of(context).searchQueenPageInfoText,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: DragRaceConstantsColors.primaryColor),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ),
        ),
      );
}
