import 'lypsincs_model.dart';
import 'season_model.dart';

class QueenModel {
  QueenModel({
    required this.id,
    required this.name,
    required this.winner,
    required this.missCongeniality,
    required this.quote,
    required this.imageUrl,
    required this.seasonsList,
    required this.lipsyncsList,
  });

  final int id;
  final String name;
  final bool winner;
  final bool missCongeniality;
  final String quote;
  final String imageUrl;
  final List<Seasons> seasonsList;
  final List<Lipsyncs> lipsyncsList;
}



