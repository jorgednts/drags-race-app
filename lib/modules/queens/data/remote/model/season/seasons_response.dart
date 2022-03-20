import 'package:json_annotation/json_annotation.dart';

part 'seasons_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SeasonsResponse {
  SeasonsResponse({
    required this.seasonNumber,
    required this.id,
    required this.place,
  });

  factory SeasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonsResponseFromJson(json);

  final String? seasonNumber;
  final int? id;
  final int? place;

  Map<String, dynamic> toJson() => _$SeasonsResponseToJson(this);
}
