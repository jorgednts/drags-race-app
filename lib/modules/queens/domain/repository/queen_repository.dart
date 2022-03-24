import '../model/details/queen_details_model.dart';
import '../model/queen/queen_model.dart';

abstract class QueenRepository{
  Future<List<QueenModel>> getAllQueens();

  Future<QueenDetailsModel> getQueenByID(int queenID);

  Future<QueenDetailsModel> getQueenByName(String queenName);
}