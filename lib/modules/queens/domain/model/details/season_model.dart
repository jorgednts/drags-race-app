import 'package:equatable/equatable.dart';

class SeasonModel extends Equatable {
  const SeasonModel({
    required this.seasonNumber,
    required this.id,
    required this.place,
  });

  final String seasonNumber;
  final int id;
  final int place;

  @override
  List<Object?> get props => [
        seasonNumber,
        id,
        place,
      ];
}
