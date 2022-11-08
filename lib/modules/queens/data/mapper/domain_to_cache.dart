import '../../domain/model/details/lipsync_cache.dart';
import '../../domain/model/details/queen_details_cache.dart';
import '../../domain/model/details/queen_details_model.dart';
import '../../domain/model/details/season_cache.dart';
import '../../domain/model/queen/queen_cache.dart';
import '../../domain/model/queen/queen_model.dart';

extension QueenListModelToQueenListCache on List<QueenModel> {
  List<QueenCache> toQueenListCache() => map((queenCache) => QueenCache(
        id: queenCache.id,
        name: queenCache.name,
        imageUrl: queenCache.imageUrl,
      )).toList();
}

extension QueenDetailsModelToQueenDetailsCache on QueenDetailsModel {
  QueenDetailsCache toQueenDetailsCache() => QueenDetailsCache(
        id: id,
        name: name,
        winner: winner,
        missCongeniality: missCongeniality,
        imageUrl: imageUrl,
        seasonsList: seasonsList
            .map(
              (season) => SeasonCache(
                  seasonNumber: season.seasonNumber,
                  id: season.id,
                  place: season.place),
            )
            .toList(),
        lipsyncsList: lipsyncsList
            .map(
              (lipsync) => LipsyncCache(
                  id: lipsync.id,
                  won: lipsync.won,
                  name: lipsync.name,
                  artist: lipsync.artist),
            )
            .toList(),
      );
}
