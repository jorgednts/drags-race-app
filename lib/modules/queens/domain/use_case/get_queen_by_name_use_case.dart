import '../model/details/queen_details_model.dart';
import '../model/queen_by_name/queen_by_name_model.dart';
import '../repository/queen_repository.dart';

abstract class GetQueenByNameUseCase {
  Future<QueenByNameModel> call(String queenName);
}

class GetQueenByNameUseCaseImpl implements GetQueenByNameUseCase {
  GetQueenByNameUseCaseImpl({
    required QueenRepository queenRepository,
  }) : _queenRepository = queenRepository;

  final QueenRepository _queenRepository;

  @override
  Future<QueenByNameModel> call(String queenName) async =>
      _queenRepository.getQueenByName(queenName);
}
