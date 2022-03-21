import 'package:flutter/material.dart';

import '../../domain/exception/generic_error_status_code_exception.dart';
import '../../domain/exception/network_error_exception.dart';
import '../../domain/exception/not_found_queen_exception.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/use_case/get_queen_by_name_use_case.dart';
import '../page/search_queen_page_state.dart';

class SearchQueenPageController extends ValueNotifier<SearchQueenPageState> {
  SearchQueenPageController({
    required GetQueenByNameUseCase getQueenByNameUseCase,
  })  : _getQueenByNameUseCase = getQueenByNameUseCase,
        super(SearchQueenPageState.loading);

  final GetQueenByNameUseCase _getQueenByNameUseCase;

  QueenDetailsModel? queen;

  Future<void> getQueenByName(String queenName) async {
    if(queenName.isEmpty){
      value = SearchQueenPageState.initialState;
    }else{
      value = SearchQueenPageState.loading;
      try {
        queen = await _getQueenByNameUseCase.call(formatQueenName(queenName));
        value = SearchQueenPageState.successQueen;
      } on NotFoundQueenException {
        value = SearchQueenPageState.notFoundQueen;
      } on GenericErrorStatusCodeException {
        value = SearchQueenPageState.genericError;
      } on NetworkErrorException {
        value = SearchQueenPageState.networkError;
      } catch (e) {
        value = SearchQueenPageState.genericError;
      }
    }
  }

  String formatQueenName(String queenName) =>
      queenName.replaceAll(RegExp(' '), '%20');
}
