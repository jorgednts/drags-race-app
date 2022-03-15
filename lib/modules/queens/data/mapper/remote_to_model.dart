import '../../domain/model/all_queens/all_queens_model.dart';
import '../../domain/model/details/lipsync_model.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_model.dart';
import '../remote/model/all_queens/queen_response.dart';
import '../remote/model/details/queen_details_response.dart';

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

QueenDetailsModel convertToQueenDetailsModel(
    QueenDetailsResponse queenDetailsResponse) {
  const nullIntResponse = -1;
  const nullStringResponse = ' - ';
  const nullBoolResponse = false;

  return QueenDetailsModel(
    id: queenDetailsResponse.id ?? nullIntResponse,
    name: queenDetailsResponse.name ?? nullStringResponse,
    winner: queenDetailsResponse.winner ?? nullBoolResponse,
    missCongeniality: queenDetailsResponse.missCongeniality ?? nullBoolResponse,
    quote: queenDetailsResponse.quote ?? nullStringResponse,
    imageUrl: queenDetailsResponse.imageUrl ?? nullStringResponse,
    seasonsList: queenDetailsResponse.seasons
            ?.map(
              (season) => SeasonModel(
                  seasonNumber:
                      season.season?.seasonNumber ?? nullStringResponse,
                  id: season.season?.id ?? nullIntResponse,
                  place: season.season?.place ?? nullIntResponse),
            )
            .toList() ??
        [],
    lipsyncsList: queenDetailsResponse.lipsyncs
            ?.map(
              (lipsync) => LipsyncModel(
                  id: lipsync.lipsync?.id ?? nullIntResponse,
                  won: lipsync.lipsync?.won ?? nullBoolResponse,
                  name: lipsync.lipsync?.name ?? nullStringResponse,
                  artist: lipsync.lipsync?.artist ?? nullStringResponse),
            )
            .toList() ??
        [],
  );
}
