import 'package:flutter/material.dart';

import '../../domain/exception/generic_error_status_code_exception.dart';
import '../../domain/exception/network_error_exception.dart';
import '../../domain/model/queen/queen_model.dart';
import '../../domain/use_case/get_all_queens_use_case.dart';
import '../page/queen_list_page_state.dart';

class QueenListPageController extends ValueNotifier<QueenListPageState> {
  QueenListPageController({
    required GetAllQueensUseCase getAllQueensUseCase,
  })
      : _getAllQueensUseCase = getAllQueensUseCase,
        super(QueenListPageState.loading);

  final GetAllQueensUseCase _getAllQueensUseCase;

  List<QueenModel> queenList = [];

  Future<void> getQueenList() async {
    value = QueenListPageState.loading;
    try {
      final queens = await _getAllQueensUseCase.call();
      queenList.addAll(queens);
      value = QueenListPageState.successQueenList;
    }on GenericErrorStatusCodeException {
      value = QueenListPageState.genericError;
    } on NetworkErrorException {
      value = QueenListPageState.networkError;
    } catch (e) {
      value = QueenListPageState.genericError;
    }
  }
}
