// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_queens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllQueensResponse _$AllQueensResponseFromJson(Map<String, dynamic> json) =>
    AllQueensResponse(
      queenResponse: (json['queen_response'] as List<dynamic>?)
          ?.map((e) => QueenResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllQueensResponseToJson(AllQueensResponse instance) =>
    <String, dynamic>{
      'queen_response': instance.queenResponse,
    };
