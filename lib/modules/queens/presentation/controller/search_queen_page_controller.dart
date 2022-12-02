import 'package:flutter/material.dart';

import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/queen/queen_model.dart';
import '../../domain/use_case/get_queen_by_name_use_case.dart';
import '../page/search_queen_page_state.dart';

class SearchQueenPageController extends ValueNotifier<SearchQueenPageState> {
  SearchQueenPageController({
    required GetQueenByNameUseCase getQueenByNameUseCase,
  })  : _getQueenByNameUseCase = getQueenByNameUseCase,
        super(SearchQueenPageState.initialState);

  final GetQueenByNameUseCase _getQueenByNameUseCase;

  QueenDetailsModel? queen;
  List<QueenModel> filteredQueenList = [];

  // --------------------- TO BE DONE -------------------------
  // Future<void> getQueenByName(String queenName) async {
  //   value = SearchQueenPageState.loading;
  //   try {
  //     queen = await _getQueenByNameUseCase.call(queenName);
  //     value = SearchQueenPageState.successQueen;
  //   } on NotFoundQueenException {
  //     value = SearchQueenPageState.notFoundQueen;
  //   } on NetworkErrorException {
  //     value = SearchQueenPageState.networkError;
  //   } catch (e) {
  //     value = SearchQueenPageState.genericError;
  //   }
  // }

  void getQueenByName(String queenName, List<QueenModel> queenList) {
    filteredQueenList = queenList
        .where((queen) => queen.name.toLowerCase().contains(queenName))
        .toList();
    if (filteredQueenList.isEmpty) {
      value = SearchQueenPageState.notFoundQueen;
    } else {
      value = SearchQueenPageState.successQueen;
    }
    notifyListeners();
  }
}
