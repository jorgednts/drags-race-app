import 'package:dio/dio.dart';
import 'package:drags_race_app/modules/queens/constants/queens_constants_url_api.dart';
import 'package:drags_race_app/modules/queens/data/remote/model/all_queens/all_queens_response.dart';

import '../../data/remote/data_source/drags_race_remote_data_source.dart';
import '../../domain/model/all_queens/all_queens_model.dart';
import '../../domain/model/details/queen_details_model.dart';

class DragsRaceRemoteDataSourceImpl implements DragsRaceRemoteDataSource {
  DragsRaceRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  final _dio;

  @override
  Future<List<AllQueensModel>> getAllQueens() {
    final response = await _dio.get(QueensConstantsUrlApi.allQueensBaseUrl);
    final queensResponse = AllQueensResponse.fromJson(response.data);
    final allQueensList = List<AllQueensModel>;

    for(final queenID in queensResponse.id){

    }


    return;
  }

  @override
  Future<QueenDetailsModel> getQueen() {
    // TODO: implement getQueen
    throw UnimplementedError();
  }

  @override
  Future<QueenDetailsModel> getTypedQueen() {
    // TODO: implement getTypedQueen
    throw UnimplementedError();
  }

}