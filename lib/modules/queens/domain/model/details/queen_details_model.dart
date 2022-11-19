import 'package:equatable/equatable.dart';

import 'lipsync_model.dart';
import 'season_model.dart';

class QueenDetailsModel extends Equatable {
  const QueenDetailsModel({
    required this.id,
    required this.name,
    required this.winner,
    required this.missCongeniality,
    required this.imageUrl,
    required this.seasonsList,
    required this.lipsyncsList,
  });

  final int id;
  final String name;
  final bool winner;
  final bool missCongeniality;
  final String imageUrl;
  final List<SeasonModel> seasonsList;
  final List<LipsyncModel> lipsyncsList;

  @override
  List<Object?> get props => [
        id,
        name,
        winner,
        missCongeniality,
        imageUrl,
        seasonsList,
        lipsyncsList,
      ];
}
