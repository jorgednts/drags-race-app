// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lipsyncs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LipsyncsResponse _$LipsyncsResponseFromJson(Map<String, dynamic> json) =>
    LipsyncsResponse(
      id: json['id'] as int?,
      won: json['won'] as bool?,
      name: json['name'] as String?,
      artist: json['artist'] as String?,
    );

Map<String, dynamic> _$LipsyncsResponseToJson(LipsyncsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'won': instance.won,
      'name': instance.name,
      'artist': instance.artist,
    };
