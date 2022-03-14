// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonResponse _$SeasonResponseFromJson(Map<String, dynamic> json) =>
    SeasonResponse(
      seasonNumber: json['season_number'] as String?,
      id: json['id'] as int?,
      place: json['place'] as int?,
    );

Map<String, dynamic> _$SeasonResponseToJson(SeasonResponse instance) =>
    <String, dynamic>{
      'season_number': instance.seasonNumber,
      'id': instance.id,
      'place': instance.place,
    };
