import 'package:equatable/equatable.dart';

class QueenModel extends Equatable {
  const QueenModel({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final String imageUrl;

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
      ];
}
