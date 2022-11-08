// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lipsync_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LipsyncCacheAdapter extends TypeAdapter<LipsyncCache> {
  @override
  final int typeId = 2;

  @override
  LipsyncCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LipsyncCache(
      id: fields[0] as int,
      won: fields[1] as bool,
      name: fields[2] as String,
      artist: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LipsyncCache obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.won)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.artist);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LipsyncCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
