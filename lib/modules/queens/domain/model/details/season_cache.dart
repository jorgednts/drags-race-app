import 'package:hive/hive.dart';

part 'season_cache.g.dart';

@HiveType(typeId: 3)
class SeasonCache {
  SeasonCache({
    required this.seasonNumber,
    required this.id,
    required this.place,
  });

  @HiveField(0)
  final String seasonNumber;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final int place;
}