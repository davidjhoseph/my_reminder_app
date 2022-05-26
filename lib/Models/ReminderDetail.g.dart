// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReminderDetail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReminderDetailAdapter extends TypeAdapter<ReminderDetail> {
  @override
  final int typeId = 2;

  @override
  ReminderDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReminderDetail(
      time: fields[2] as TimeOfDay,
      list: fields[0] as String,
      title: fields[3] as String,
      date: fields[1] as DateTime,
      notes: fields[4] as String,
      flag: fields[7] as bool,
      image: fields[10] as String,
      location: fields[6] as String,
      priority: fields[8] as Priority,
      subtasks: (fields[9] as List).cast<Reminder>(),
      url: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ReminderDetail obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.list)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.notes)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.location)
      ..writeByte(7)
      ..write(obj.flag)
      ..writeByte(8)
      ..write(obj.priority)
      ..writeByte(9)
      ..write(obj.subtasks)
      ..writeByte(10)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReminderDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
