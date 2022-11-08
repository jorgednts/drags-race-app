import 'package:hive/hive.dart';

import 'lipsync_cache.dart';
import 'season_cache.dart';

part 'queen_details_cache.g.dart';

@HiveType(typeId: 1)
class QueenDetailsCache {
  QueenDetailsCache({
    required this.id,
    required this.name,
    required this.winner,
    required this.missCongeniality,
    required this.imageUrl,
    required this.seasonsList,
    required this.lipsyncsList,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool winner;
  @HiveField(3)
  final bool missCongeniality;
  @HiveField(4)
  final String imageUrl;
  @HiveField(5)
  final List<SeasonCache> seasonsList;
  @HiveField(6)
  final List<LipsyncCache> lipsyncsList;
}
