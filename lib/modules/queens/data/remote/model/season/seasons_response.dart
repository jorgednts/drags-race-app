import 'package:json_annotation/json_annotation.dart';

part 'seasons_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SeasonsResponse {
  SeasonsResponse({
    required this.number,
    required this.id,
    required this.place,
  });

  factory SeasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonsResponseFromJson(json);

  @JsonKey(name: 'seasonNumber')
  final String? number;
  final int? id;
  final int? place;

  Map<String, dynamic> toJson() => _$SeasonsResponseToJson(this);
}
