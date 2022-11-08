import 'package:hive/hive.dart';

part 'lipsync_cache.g.dart';

@HiveType(typeId: 2)
class LipsyncCache {
  LipsyncCache({
    required this.id,
    required this.won,
    required this.name,
    required this.artist,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final bool won;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String artist;
}
