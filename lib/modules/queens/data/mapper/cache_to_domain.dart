import '../../domain/model/details/lipsync_model.dart';
import '../../domain/model/details/queen_details_cache.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_model.dart';
import '../../domain/model/queen/queen_cache.dart';
import '../../domain/model/queen/queen_model.dart';

extension QueenListCacheToQueenListModel on List<QueenCache> {
  List<QueenModel> toQueenListModel() => map((queenResponse) => QueenModel(
        id: queenResponse.id,
        name: queenResponse.name,
        imageUrl: queenResponse.imageUrl,
      )).toList();
}

extension QueenDetailsCacheToQueenDetailsModel on QueenDetailsCache {
  QueenDetailsModel toQueenDetailsModel() => QueenDetailsModel(
        id: id,
        name: name,
        winner: winner,
        missCongeniality: missCongeniality,
        imageUrl: imageUrl,
        seasonsList: seasonsList
            .map(
              (season) => SeasonModel(
                  seasonNumber: season.seasonNumber,
                  id: season.id,
                  place: season.place),
            )
            .toList(),
        lipsyncsList: lipsyncsList
            .map(
              (lipsync) => LipsyncModel(
                  id: lipsync.id,
                  won: lipsync.won,
                  name: lipsync.name,
                  artist: lipsync.artist),
            )
            .toList(),
      );
}
