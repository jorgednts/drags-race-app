// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonsResponse _$SeasonsResponseFromJson(Map<String, dynamic> json) =>
    SeasonsResponse(
      seasonNumber: json['season_number'] as String?,
      id: json['id'] as int?,
      place: json['place'] as int?,
    );

Map<String, dynamic> _$SeasonsResponseToJson(SeasonsResponse instance) =>
    <String, dynamic>{
      'season_number': instance.seasonNumber,
      'id': instance.id,
      'place': instance.place,
    };
