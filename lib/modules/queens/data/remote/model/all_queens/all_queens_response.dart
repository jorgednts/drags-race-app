import 'package:json_annotation/json_annotation.dart';

part 'all_queens_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AllQueensResponse {
  AllQueensResponse(
    this.id,
    this.name,
    this.winner,
    this.missCongeniality,
    this.imageUrl,
    this.quote,
  );

  factory AllQueensResponse.fromJson(Map<String, dynamic> json) =>
      _$AllQueensResponseFromJson(json);

  int id;
  String? name;
  bool? winner;
  bool? missCongeniality;
  String? imageUrl;
  String? quote;

  Map<String, dynamic> toJson() => _$AllQueensResponseToJson(this);
}
