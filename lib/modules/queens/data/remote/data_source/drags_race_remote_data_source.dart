import '../../../domain/model/details/queen_details_model.dart';
import '../../../domain/model/queen/queen_model.dart';

abstract class DragsRaceRemoteDataSource {
  Future<List<QueenModel>> getAllQueens();

  Future<QueenDetailsModel> getQueenByID(int queenID);

  Future<QueenDetailsModel> getQueenByName(String queenName);
}
