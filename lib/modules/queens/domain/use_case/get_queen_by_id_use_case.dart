import '../model/details/queen_details_model.dart';
import '../repository/queen_repository.dart';

abstract class GetQueenByIdUseCase {
  Future<QueenDetailsModel> call(int queenID);
}

class GetQueenByIdUseCaseImpl implements GetQueenByIdUseCase {
  GetQueenByIdUseCaseImpl({
    required QueenRepository queenRepository,
  }) : _queenRepository = queenRepository;

  final QueenRepository _queenRepository;

  @override
  Future<QueenDetailsModel> call(int queenID) =>
      _queenRepository.getQueenByID(queenID);
}
