import '../../../domain/model/details/queen_details_model.dart';
import '../../../domain/model/queen/queen_model.dart';

abstract class DragsRaceCacheDataSource {
  Future<void> saveAllQueens(List<QueenModel> queenList);

  Future<List<QueenModel>> getAllQueens();

  Future<void> saveQueenDetails(QueenDetailsModel queenDetailsModel);

  Future<QueenDetailsModel> getQueenDetails(int id);
}
