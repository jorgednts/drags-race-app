// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonsResponse _$SeasonsResponseFromJson(Map<String, dynamic> json) =>
    SeasonsResponse(
      season: json['season'] == null
          ? null
          : SeasonResponse.fromJson(json['season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeasonsResponseToJson(SeasonsResponse instance) =>
    <String, dynamic>{
      'season': instance.season,
    };
