// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonsResponse _$SeasonsResponseFromJson(Map<String, dynamic> json) =>
    SeasonsResponse(
      number: json['seasonNumber'] as String?,
      id: json['id'] as int?,
      place: json['place'] as int?,
    );

Map<String, dynamic> _$SeasonsResponseToJson(SeasonsResponse instance) =>
    <String, dynamic>{
      'seasonNumber': instance.number,
      'id': instance.id,
      'place': instance.place,
    };
