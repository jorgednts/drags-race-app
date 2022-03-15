import '../../domain/model/all_queens/all_queens_model.dart';
import '../remote/model/all_queens/queen_response.dart';

AllQueensModel convertToAllQueensModelList(QueenResponse queenResponse) {
      const nullIntResponse = -1;
      const nullStringResponse = ' - ';
      const nullBoolResponse = false;

  return AllQueensModel(
      id: queenResponse.id ?? nullIntResponse,
      name: queenResponse.name ?? nullStringResponse,
      winner: queenResponse.winner ?? nullBoolResponse,
      missCongeniality: queenResponse.missCongeniality ?? nullBoolResponse,
      imageUrl: queenResponse.imageUrl ?? nullStringResponse,
      quote: queenResponse.quote ?? nullStringResponse,
    );
}
