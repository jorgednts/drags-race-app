import 'package:json_annotation/json_annotation.dart';

import 'lipsync_response.dart';

part 'lipsyncs_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LipsyncsResponse {
  LipsyncsResponse({
    required this.lipsync,
  });

  factory LipsyncsResponse.fromJson(Map<String, dynamic> json) =>
      _$LipsyncsResponseFromJson(json);

  final LipsyncResponse? lipsync;

  Map<String, dynamic> toJson() => _$LipsyncsResponseToJson(this);
}
