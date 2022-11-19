import 'package:equatable/equatable.dart';

class LipsyncModel extends Equatable {
  const LipsyncModel({
    required this.id,
    required this.won,
    required this.name,
    required this.artist,
  });

  final int id;
  final bool won;
  final String name;
  final String artist;

  @override
  List<Object?> get props => [
        id,
        won,
        name,
        artist,
      ];
}
