import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/queen/queen_model.dart';
import '../../domain/repository/queen_repository.dart';
import '../remote/data_source/drags_race_remote_data_source.dart';

class QueenRepositoryImpl implements QueenRepository {
  QueenRepositoryImpl({
    required DragsRaceRemoteDataSource dragsRaceRemoteDataSource,
  }) : _dragsRaceRemoteDataSource = dragsRaceRemoteDataSource;

  final DragsRaceRemoteDataSource _dragsRaceRemoteDataSource;

  @override
  Future<List<QueenModel>> getAllQueens() async {
    final allQueensList = await _dragsRaceRemoteDataSource.getAllQueens();
    return allQueensList;
  }

  @override
  Future<QueenDetailsModel> getQueenByID(int queenID) async =>
      _dragsRaceRemoteDataSource.getQueenByID(queenID);

  @override
  Future<QueenDetailsModel> getQueenByName(String queenName) async =>
      _dragsRaceRemoteDataSource.getQueenByName(queenName);
}