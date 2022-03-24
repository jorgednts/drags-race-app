import 'package:json_annotation/json_annotation.dart';

import '../season/seasons_response.dart';

part 'queen_by_name_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QueenByNameResponse {
  QueenByNameResponse({
    this.id,
    this.name,
    this.winner,
    this.congeniality,
    this.imageUrl,
    this.quote,
  });

  factory QueenByNameResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenByNameResponseFromJson(json);

  final int? id;
  final String? name;
  final bool? winner;
  @JsonKey(name: 'missCongeniality')
  final bool? congeniality;
  final String? imageUrl;
  final String? quote;

  Map<String, dynamic> toJson() => _$QueenByNameResponseToJson(this);
}
