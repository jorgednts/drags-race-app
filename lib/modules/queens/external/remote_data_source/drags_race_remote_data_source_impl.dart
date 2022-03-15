import 'package:dio/dio.dart';

import '../../constants/queens_constants_url_api.dart';
import '../../data/mapper/remote_to_model.dart';
import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../data/remote/model/all_queens/queen_response.dart';
import '../../data/remote/model/details/queen_details_response.dart';
import '../../domain/model/all_queens/all_queens_model.dart';
import '../../domain/model/details/queen_details_model.dart';

class DragsRaceRemoteDataSourceImpl implements DragsRaceRemoteDataSource {
  DragsRaceRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<AllQueensModel>> getAllQueens() async {
    try {
      final response = await _dio.get(QueensConstantsUrlApi.allQueensBaseUrl);
      final queensResponse = QueenResponse.fromJsonList(response.data);
      final queenModelList = <AllQueensModel>[];

      for (final queenResponse in queensResponse) {
        final queenModel = convertToAllQueensModelList(queenResponse);
        queenModelList.add(queenModel);
      }
      return queenModelList;
    } on DioError catch (dioError, _) {
      throw Exception();
    }
  }

  @override
  Future<QueenDetailsModel> getQueen(int queenID) async {
    try {
      final response = await _dio
          .get('${QueensConstantsUrlApi.queenBaseUrl}${queenID.toString()}');
      final queenDetailsResponse = QueenDetailsResponse.fromJson(response.data);
      final queenDetailsModel =
          convertToQueenDetailsModel(queenDetailsResponse);
      return queenDetailsModel;
    } on DioError catch (dioError, _) {
      throw Exception();
    }
  }

  @override
  Future<AllQueensModel> getTypedQueen(String typedQueenID) async {
    try {
      final response =
          await _dio.get('${QueensConstantsUrlApi.queenBaseUrl}$typedQueenID');
      final queenResponse = QueenResponse.fromJson(response.data);
      final queenModel =
          convertToAllQueensModelList(queenResponse);
      return queenModel;
    } on DioError catch (dioError, _) {
      throw Exception();
    }
  }
}
