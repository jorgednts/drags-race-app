import 'package:json_annotation/json_annotation.dart';

part 'queen_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QueenResponse {
  QueenResponse(
    this.id,
    this.name,
    this.imageUrl,
  );

  factory QueenResponse.fromJson(Map<String, dynamic> json) =>
      _$QueenResponseFromJson(json);

  final int? id;
  final String? name;
  final String? imageUrl;

  Map<String, dynamic> toJson() => _$QueenResponseToJson(this);
}
