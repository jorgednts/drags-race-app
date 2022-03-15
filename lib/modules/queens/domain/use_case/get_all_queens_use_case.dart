import '../model/queen/queen_model.dart';
import '../repository/queen_repository.dart';

abstract class GetAllQueensUseCase {
  Future<List<QueenModel>> call();
}

class GetAllQueensUseCaseImpl implements GetAllQueensUseCase {
  GetAllQueensUseCaseImpl({
    required QueenRepository queenRepository,
  }) : _queenRepository = queenRepository;

  final QueenRepository _queenRepository;

  @override
  Future<List<QueenModel>> call() async => _queenRepository.getAllQueens();
}