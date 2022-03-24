import 'package:json_annotation/json_annotation.dart';

part 'queen_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QueenResponse {
  QueenResponse(
    this.id,
    this.name,
    this.winner,
    this.congeniality,
    this.imageUrl,
    this.quote,
  );

  factory QueenResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenResponseFromJson(json);

  final int? id;
  final String? name;
  final bool? winner;
  @JsonKey(name: 'missCongeniality')
  final bool? congeniality;
  final String? imageUrl;
  final String? quote;

  Map<String, dynamic> toJson() => _$QueenResponseToJson(this);
}
