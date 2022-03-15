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
    this.missCongeniality,
    this.imageUrl,
    this.quote,
    this.lipsyncs,
    this.seasons,
  });

  factory QueenDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenDetailsResponseFromJson(json);

  final int? id;
  final String? name;
  final bool? winner;
  final bool? missCongeniality;
  final String? imageUrl;
  final String? quote;
  final List<LipsyncsResponse>? lipsyncs;
  final List<SeasonsResponse>? seasons;

  Map<String, dynamic> toJson() => _$QueenDetailsResponseToJson(this);
}
