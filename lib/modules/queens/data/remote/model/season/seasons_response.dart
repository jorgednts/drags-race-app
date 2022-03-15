import 'package:json_annotation/json_annotation.dart';

import 'season_response.dart';

part 'seasons_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SeasonsResponse {
  SeasonsResponse({
    this.season,
  });

  factory SeasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonsResponseFromJson(json);

  final SeasonResponse? season;

  Map<String, dynamic> toJson() => _$SeasonsResponseToJson(this);
}
