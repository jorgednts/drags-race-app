// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queen_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueenDetailsResponse _$QueenDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    QueenDetailsResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      winner: json['winner'] as bool?,
      congeniality: json['missCongeniality'] as bool?,
      imageUrl: json['image_url'] as String?,
      lipsyncs: (json['lipsyncs'] as List<dynamic>?)
          ?.map((e) => LipsyncsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => SeasonsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueenDetailsResponseToJson(
        QueenDetailsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'winner': instance.winner,
      'missCongeniality': instance.congeniality,
      'image_url': instance.imageUrl,
      'lipsyncs': instance.lipsyncs,
      'seasons': instance.seasons,
    };
