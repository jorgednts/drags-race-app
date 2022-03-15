import 'package:json_annotation/json_annotation.dart';

import 'queen_response.dart';

part 'all_queens_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AllQueensResponse{
  AllQueensResponse({this.queenResponse});

//  factory AllQueensResponse.fromJson(Map<String, dynamic> json) =>
//      _$AllQueensResponseFromJson(json);

  final List<QueenResponse>? queenResponse;

//  Map<String, dynamic> toJson() => _$AllQueensResponseToJson(this);

  static List<QueenResponse> fromJsonList(List<dynamic>? json) =>
      json?.map((i) => QueenResponse.fromJson(i)).toList() ?? [];
}

