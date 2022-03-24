// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queen_by_name_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueenByNameResponse _$QueenByNameResponseFromJson(Map<String, dynamic> json) =>
    QueenByNameResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      winner: json['winner'] as bool?,
      congeniality: json['missCongeniality'] as bool?,
      imageUrl: json['image_url'] as String?,
      quote: json['quote'] as String?,
    );

Map<String, dynamic> _$QueenByNameResponseToJson(
        QueenByNameResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'winner': instance.winner,
      'missCongeniality': instance.congeniality,
      'image_url': instance.imageUrl,
      'quote': instance.quote,
    };
