import 'package:json_annotation/json_annotation.dart';

import '../lipsync/lipsyncs_response.dart';
import '../season/seasons_response.dart';

part 'queen_details_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QueenDetailsResponse {
  QueenDetailsResponse({
    this.id,
    this.name,
    this.winner,
    this.congeniality,
    this.imageUrl,
    this.lipsyncs,
    this.seasons,
  });

  factory QueenDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenDetailsResponseFromJson(json);

  final int? id;
  final String? name;
  final bool? winner;
  @JsonKey(name: 'missCongeniality')
  final bool? congeniality;
  final String? imageUrl;
  final List<LipsyncsResponse>? lipsyncs;
  final List<SeasonsResponse>? seasons;

  Map<String, dynamic> toJson() => _$QueenDetailsResponseToJson(this);
}
