// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lipsync_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LipsyncResponse _$LipsyncResponseFromJson(Map<String, dynamic> json) =>
    LipsyncResponse(
      id: json['id'] as int?,
      won: json['won'] as bool?,
      name: json['name'] as String?,
      artist: json['artist'] as String?,
    );

Map<String, dynamic> _$LipsyncResponseToJson(LipsyncResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'won': instance.won,
      'name': instance.name,
      'artist': instance.artist,
    };
