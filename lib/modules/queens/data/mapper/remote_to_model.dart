import '../../constants/null_responses_constants.dart';
import '../../domain/model/details/lipsync_model.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_model.dart';
import '../../domain/model/queen/queen_model.dart';
import '../remote/model/details/queen_details_response.dart';
import '../remote/model/queen/queen_response.dart';

extension QueenListResponseToQueenListModel on List<QueenResponse> {
  List<QueenModel> toQueenListModel() => map((queenResponse) => QueenModel(
        id: queenResponse.id ?? NullResponseConstants.nullIntResponse,
        name: queenResponse.name ?? NullResponseConstants.nullStringResponse,
        winner: queenResponse.winner ?? NullResponseConstants.nullBoolResponse,
        missCongeniality: queenResponse.congeniality ??
            NullResponseConstants.nullBoolResponse,
        imageUrl:
            queenResponse.imageUrl ?? NullResponseConstants.nullStringResponse,
        quote: queenResponse.quote ?? NullResponseConstants.nullStringResponse,
      )).toList();
}

extension QueenDetailsResponseToQueenDetailsModel on QueenDetailsResponse {
  QueenDetailsModel toQueenDetailsModel() => QueenDetailsModel(
        id: id ?? NullResponseConstants.nullIntResponse,
        name: name ?? NullResponseConstants.nullStringResponse,
        winner: winner ?? NullResponseConstants.nullBoolResponse,
        missCongeniality:
            congeniality ?? NullResponseConstants.nullBoolResponse,
        quote: quote ?? NullResponseConstants.nullStringResponse,
        imageUrl: imageUrl ?? NullResponseConstants.nullStringResponse,
        seasonsList: seasons
                ?.map(
                  (season) => SeasonModel(
                      seasonNumber: season.number ??
                          NullResponseConstants.nullStringResponse,
                      id: season.id ?? NullResponseConstants.nullIntResponse,
                      place: season.place ??
                          NullResponseConstants.nullIntResponse),
                )
                .toList() ??
            [],
        lipsyncsList: lipsyncs
                ?.map(
                  (lipsync) => LipsyncModel(
                      id: lipsync.id ?? NullResponseConstants.nullIntResponse,
                      won:
                          lipsync.won ?? NullResponseConstants.nullBoolResponse,
                      name: lipsync.name ??
                          NullResponseConstants.nullStringResponse,
                      artist: lipsync.artist ??
                          NullResponseConstants.nullStringResponse),
                )
                .toList() ??
            [],
      );
}
