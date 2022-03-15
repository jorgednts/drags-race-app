// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_queens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllQueensResponse _$AllQueensResponseFromJson(Map<String, dynamic> json) =>
    AllQueensResponse(
      json['id'] as int,
      json['name'] as String?,
      json['winner'] as bool?,
      json['miss_congeniality'] as bool?,
      json['image_url'] as String?,
      json['quote'] as String?,
    );

Map<String, dynamic> _$AllQueensResponseToJson(AllQueensResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'winner': instance.winner,
      'miss_congeniality': instance.missCongeniality,
      'image_url': instance.imageUrl,
      'quote': instance.quote,
    };
