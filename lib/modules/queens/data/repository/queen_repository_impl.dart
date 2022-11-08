import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/queen/queen_model.dart';
import '../../domain/repository/queen_repository.dart';
import '../remote/cache/drags_race_cache_data_source.dart';
import '../remote/data_source/drags_race_remote_data_source.dart';

class QueenRepositoryImpl implements QueenRepository {
  QueenRepositoryImpl({
    required DragsRaceRemoteDataSource dragsRaceRemoteDataSource,
    required DragsRaceCacheDataSource dragsRaceCacheDataSource,
  })  : _dragsRaceRemoteDataSource = dragsRaceRemoteDataSource,
        _dragsRaceCacheDataSource = dragsRaceCacheDataSource;

  final DragsRaceRemoteDataSource _dragsRaceRemoteDataSource;
  final DragsRaceCacheDataSource _dragsRaceCacheDataSource;

  @override
  Future<List<QueenModel>> getAllQueens() async {
    try {
      final allQueensList = await _dragsRaceRemoteDataSource.getAllQueens();
      await _dragsRaceCacheDataSource.saveAllQueens(allQueensList);
      return await _dragsRaceCacheDataSource.getAllQueens();
    } catch (e) {
      return _dragsRaceCacheDataSource.getAllQueens();
    }
  }

  @override
  Future<QueenDetailsModel> getQueenByID(int queenID) async {
    try {
      final queenDetails =
          await _dragsRaceRemoteDataSource.getQueenByID(queenID);
      await _dragsRaceCacheDataSource.saveQueenDetails(queenDetails);
      return await _dragsRaceCacheDataSource.getQueenDetails(queenID);
    } catch (e) {
      return _dragsRaceCacheDataSource.getQueenDetails(queenID);
    }
  }

  @override
  Future<QueenDetailsModel> getQueenByName(String queenName) async =>
      _dragsRaceRemoteDataSource.getQueenByName(queenName);
}
