// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeasonCacheAdapter extends TypeAdapter<SeasonCache> {
  @override
  final int typeId = 3;

  @override
  SeasonCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeasonCache(
      seasonNumber: fields[0] as String,
      id: fields[1] as int,
      place: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SeasonCache obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.seasonNumber)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.place);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeasonCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
