import '../model/details/queen_details_model.dart';
import '../model/queen/queen_model.dart';
import '../model/queen_by_name/queen_by_name_model.dart';

abstract class QueenRepository{
  Future<List<QueenModel>> getAllQueens();

  Future<QueenDetailsModel> getQueenByID(int queenID);

  Future<QueenByNameModel> getQueenByName(String queenName);
}