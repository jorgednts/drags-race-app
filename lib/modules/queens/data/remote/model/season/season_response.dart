import 'package:json_annotation/json_annotation.dart';

part 'season_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SeasonResponse {
  SeasonResponse({this.seasonNumber, this.id, this.place});

  factory SeasonResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonResponseFromJson(json);

  final String? seasonNumber;
  final int? id;
  final int? place;

  Map<String, dynamic> toJson() => _$SeasonResponseToJson(this);
}