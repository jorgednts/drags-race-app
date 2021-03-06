import 'package:flutter/material.dart';

import '../../domain/exception/generic_error_status_code_exception.dart';
import '../../domain/exception/network_error_exception.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/use_case/get_queen_by_id_use_case.dart';
import '../page/queen_details_page_state.dart';

class QueenDetailsController extends ValueNotifier<QueenDetailsPageState> {
  QueenDetailsController({
    required GetQueenByIdUseCase getQueenByIdUseCase,
  })  : _getQueenByIdUseCase = getQueenByIdUseCase,
        super(QueenDetailsPageState.loading);

  final GetQueenByIdUseCase _getQueenByIdUseCase;
  QueenDetailsModel? queen;

  Future<void> getQueenByID(int queenID) async {
    value = QueenDetailsPageState.loading;
    try {
      queen = await _getQueenByIdUseCase.call(queenID);
      value = QueenDetailsPageState.successQueenList;
    } on GenericErrorStatusCodeException {
      value = QueenDetailsPageState.genericError;
    } on NetworkErrorException {
      value = QueenDetailsPageState.networkError;
    } catch (e) {
      value = QueenDetailsPageState.genericError;
    }
  }
}
