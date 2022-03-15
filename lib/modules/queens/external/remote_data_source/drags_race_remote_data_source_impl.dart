import 'dart:io';

import 'package:dio/dio.dart';

import '../../constants/queens_constants_url_api.dart';
import '../../data/mapper/remote_to_model.dart';
import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../data/remote/model/details/queen_details_response.dart';
import '../../data/remote/model/queen/queen_response.dart';
import '../../domain/exception/generic_error_status_code_exception.dart';
import '../../domain/exception/network_error_exception.dart';
import '../../domain/exception/not_found_queen_exception.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/queen/queen_model.dart';

class DragsRaceRemoteDataSourceImpl implements DragsRaceRemoteDataSource {
  DragsRaceRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<QueenModel>> getAllQueens() async {
    try {
      final response =
          await _dio.get('${QueensConstantsUrlApi.queenBaseUrl}/all/');
      final List<QueenResponse> queensResponseList = response.data
          .map(QueenResponse.fromJson)
          .toList()
          .cast<QueenResponse>();
      return queensResponseList.toQueenListModel();
    } on DioError catch (dioError, _) {
      if (dioError.type == DioErrorType.response) {
        throw GenericErrorStatusCodeException();
      } else {
        throw NetworkErrorException();
      }
    }
  }

  @override
  Future<QueenDetailsModel> getQueenByID(int queenID) async {
    try {
      final response = await _dio
          .get('${QueensConstantsUrlApi.queenBaseUrl}/${queenID.toString()}');
      final queenDetailsResponse = QueenDetailsResponse.fromJson(response.data);
      return queenDetailsResponse.toQueenDetailsModel();
    } on DioError catch (dioError, _) {
      if (dioError.type == DioErrorType.response) {
        throw GenericErrorStatusCodeException();
      } else {
        throw NetworkErrorException();
      }
    }
  }

  @override
  Future<QueenDetailsModel> getQueenByName(String queenName) async {
    final queen = queenName;
    try {
      final response = await _dio
          .get('${QueensConstantsUrlApi.queenBaseUrl}/queens?name=$queen');
      final queenDetailsResponse = QueenDetailsResponse.fromJson(response.data);
      return queenDetailsResponse.toQueenDetailsModel();
    } on DioError catch (dioError, _) {
      if (dioError.type == DioErrorType.response) {
        if (dioError.response?.statusCode == HttpStatus.notFound) {
          throw NotFoundQueenException();
        }
        throw GenericErrorStatusCodeException();
      } else {
        throw NetworkErrorException();
      }
    }
  }
}
