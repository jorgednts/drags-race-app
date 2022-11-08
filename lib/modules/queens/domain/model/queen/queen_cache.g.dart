// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queen_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QueenCacheAdapter extends TypeAdapter<QueenCache> {
  @override
  final int typeId = 0;

  @override
  QueenCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QueenCache(
      id: fields[0] as int,
      name: fields[1] as String,
      imageUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, QueenCache obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueenCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
