import '../../constants/null_responses_constants.dart';

import '../../domain/model/all_queens/all_queens_model.dart';
import '../../domain/model/details/lipsync_model.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_model.dart';
import '../remote/model/all_queens/queen_response.dart';
import '../remote/model/details/queen_details_response.dart';

AllQueensModel convertToAllQueensModelList(QueenResponse queenResponse) =>
    AllQueensModel(
      id: queenResponse.id ?? NullResponseConstants.nullIntResponse,
      name: queenResponse.name ?? NullResponseConstants.nullStringResponse,
      winner: queenResponse.winner ?? NullResponseConstants.nullBoolResponse,
      missCongeniality: queenResponse.missCongeniality ??
          NullResponseConstants.nullBoolResponse,
      imageUrl:
          queenResponse.imageUrl ?? NullResponseConstants.nullStringResponse,
      quote: queenResponse.quote ?? NullResponseConstants.nullStringResponse,
    );

QueenDetailsModel convertToQueenDetailsModel(
        QueenDetailsResponse queenDetailsResponse) =>
    QueenDetailsModel(
      id: queenDetailsResponse.id ?? NullResponseConstants.nullIntResponse,
      name:
          queenDetailsResponse.name ?? NullResponseConstants.nullStringResponse,
      winner:
          queenDetailsResponse.winner ?? NullResponseConstants.nullBoolResponse,
      missCongeniality: queenDetailsResponse.missCongeniality ??
          NullResponseConstants.nullBoolResponse,
      quote: queenDetailsResponse.quote ??
          NullResponseConstants.nullStringResponse,
      imageUrl: queenDetailsResponse.imageUrl ??
          NullResponseConstants.nullStringResponse,
      seasonsList: queenDetailsResponse.seasons
              ?.map(
                (season) => SeasonModel(
                    seasonNumber: season.season?.seasonNumber ??
                        NullResponseConstants.nullStringResponse,
                    id: season.season?.id ??
                        NullResponseConstants.nullIntResponse,
                    place: season.season?.place ??
                        NullResponseConstants.nullIntResponse),
              )
              .toList() ??
          [],
      lipsyncsList: queenDetailsResponse.lipsyncs
              ?.map(
                (lipsync) => LipsyncModel(
                    id: lipsync.lipsync?.id ??
                        NullResponseConstants.nullIntResponse,
                    won: lipsync.lipsync?.won ??
                        NullResponseConstants.nullBoolResponse,
                    name: lipsync.lipsync?.name ??
                        NullResponseConstants.nullStringResponse,
                    artist: lipsync.lipsync?.artist ??
                        NullResponseConstants.nullStringResponse),
              )
              .toList() ??
          [],
    );
