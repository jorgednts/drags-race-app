// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queen_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueenResponse _$QueenResponseFromJson(Map<String, dynamic> json) =>
    QueenResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['winner'] as bool?,
      json['missCongeniality'] as bool?,
      json['image_url'] as String?,
      json['quote'] as String?,
    );

Map<String, dynamic> _$QueenResponseToJson(QueenResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'winner': instance.winner,
      'missCongeniality': instance.congeniality,
      'image_url': instance.imageUrl,
      'quote': instance.quote,
    };
