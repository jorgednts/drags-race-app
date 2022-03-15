import 'package:json_annotation/json_annotation.dart';

part 'queen_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QueenResponse {
  QueenResponse(
    this.id,
    this.name,
    this.winner,
    this.missCongeniality,
    this.imageUrl,
    this.quote,
  );

  factory QueenResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenResponseFromJson(json);

  int? id;
  String? name;
  bool? winner;
  bool? missCongeniality;
  String? imageUrl;
  String? quote;

  Map<String, dynamic> toJson() => _$QueenResponseToJson(this);

  static List<QueenResponse> fromJsonList(List<dynamic>? json) =>
      json?.map((i) => QueenResponse.fromJson(i)).toList() ?? [];
}
