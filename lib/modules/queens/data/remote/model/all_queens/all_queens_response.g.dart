// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_queens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllQueensResponse _$AllQueensResponseFromJson(Map<String, dynamic> json) =>
    AllQueensResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      winner: json['winner'] as bool?,
      missCongeniality: json['miss_congeniality'] as bool?,
      imageUrl: json['image_url'] as String?,
      quote: json['quote'] as String?,
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
