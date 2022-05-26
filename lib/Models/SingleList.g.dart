// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleList.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SingleListAdapter extends TypeAdapter<SingleList> {
  @override
  final int typeId = 1;

  @override
  SingleList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SingleList(
      color: fields[2] as int,
      id: fields[0] as String,
      icon: fields[1] as int,
      title: fields[3] as String,
      reminders: (fields[4] as List).cast<Reminder>(),
    );
  }

  @override
  void write(BinaryWriter writer, SingleList obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.color)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.reminders);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
