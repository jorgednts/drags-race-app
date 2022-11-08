import 'package:hive/hive.dart';

part 'queen_cache.g.dart';

@HiveType(typeId: 0)
class QueenCache {
  QueenCache({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String imageUrl;
}
