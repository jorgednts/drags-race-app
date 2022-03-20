import 'package:json_annotation/json_annotation.dart';

import 'lipsync_response.dart';

part 'lipsyncs_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LipsyncsResponse {
  LipsyncsResponse({
    required this.id,
    required this.won,
    required this.name,
    required this.artist,
  });

  factory LipsyncsResponse.fromJson(Map<String, dynamic> json) =>
      _$LipsyncsResponseFromJson(json);

  final int? id;
  final bool? won;
  final String? name;
  final String? artist;

  Map<String, dynamic> toJson() => _$LipsyncsResponseToJson(this);
}
