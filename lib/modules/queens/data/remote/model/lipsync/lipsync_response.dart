import 'package:json_annotation/json_annotation.dart';

part 'lipsync_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LipsyncResponse {
  LipsyncResponse({
    this.id,
    this.won,
    this.name,
    this.artist,
  });

  factory LipsyncResponse.fromJson(Map<String, dynamic> json) =>
      _$LipsyncResponseFromJson(json);

  final int? id;
  final bool? won;
  final String? name;
  final String? artist;

  Map<String, dynamic> toJson() => _$LipsyncResponseToJson(this);
}
