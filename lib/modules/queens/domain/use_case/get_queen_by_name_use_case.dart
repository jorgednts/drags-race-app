import '../model/details/queen_details_model.dart';
import '../repository/queen_repository.dart';

abstract class GetQueenByNameUseCase {
  Future<QueenDetailsModel> call(String queenName);
}

class GetQueenByNameUseCaseImpl implements GetQueenByNameUseCase {
  GetQueenByNameUseCaseImpl({
    required QueenRepository queenRepository,
  }) : _queenRepository = queenRepository;

  final QueenRepository _queenRepository;

  @override
  Future<QueenDetailsModel> call(String queenName) =>
      _queenRepository.getQueenByName(queenName);
}
