// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lipsyncs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LipsyncsResponse _$LipsyncsResponseFromJson(Map<String, dynamic> json) =>
    LipsyncsResponse(
      lipsync: json['lipsync'] == null
          ? null
          : LipsyncResponse.fromJson(json['lipsync'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LipsyncsResponseToJson(LipsyncsResponse instance) =>
    <String, dynamic>{
      'lipsync': instance.lipsync,
    };
