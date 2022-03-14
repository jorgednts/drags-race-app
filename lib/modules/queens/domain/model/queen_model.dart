class QueenModel {
  QueenModel({
    required this.id,
    required this.name,
    required this.winner,
    required this.missCongeniality,
    required this.quote,
    required this.imageUrl,
    required this.seasonsList,
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

class Lipsyncs {
  Lipsyncs({
    required this.id,
    required this.won,
    required this.name,
    required this.artist,
  });

  final int id;
  final bool won;
  final String name;
  final String artist;


}

