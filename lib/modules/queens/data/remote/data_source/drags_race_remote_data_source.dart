import '../../../domain/model/all_queens/all_queens_model.dart';
import '../../../domain/model/details/queen_details_model.dart';

abstract class DragsRaceRemoteDataSource {
  Future<List<AllQueensModel>> getAllQueens();

  Future<QueenDetailsModel> getQueen(int queenID);

  Future<QueenDetailsModel> getTypedQueen();
}
