// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitty_fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KittyFactAdapter extends TypeAdapter<KittyFact> {
  @override
  final int typeId = 0;

  @override
  KittyFact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KittyFact(
      id: fields[0] as String,
      text: fields[1] as String,
      createdAt: fields[2] as DateTime,
      imageUrl: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, KittyFact obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KittyFactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
