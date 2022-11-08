// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queen_details_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QueenDetailsCacheAdapter extends TypeAdapter<QueenDetailsCache> {
  @override
  final int typeId = 1;

  @override
  QueenDetailsCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QueenDetailsCache(
      id: fields[0] as int,
      name: fields[1] as String,
      winner: fields[2] as bool,
      missCongeniality: fields[3] as bool,
      imageUrl: fields[4] as String,
      seasonsList: (fields[5] as List).cast<SeasonCache>(),
      lipsyncsList: (fields[6] as List).cast<LipsyncCache>(),
    );
  }

  @override
  void write(BinaryWriter writer, QueenDetailsCache obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.winner)
      ..writeByte(3)
      ..write(obj.missCongeniality)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.seasonsList)
      ..writeByte(6)
      ..write(obj.lipsyncsList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueenDetailsCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
