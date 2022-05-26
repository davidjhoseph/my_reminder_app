import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'Priority.dart';
import 'Reminder.dart';

part 'ReminderDetail.g.dart';

@HiveType(typeId: 2)
class ReminderDetail {
  @HiveField(0)
  String list;
  @HiveField(1)
  DateTime date;
  @HiveField(2)
  TimeOfDay time;
  @HiveField(3)
  String title;
  @HiveField(4)
  String notes;
  @HiveField(5)
  String url;
  @HiveField(6)
  String location;
  @HiveField(7)
  bool flag;
  @HiveField(8)
  Priority priority;
  @HiveField(9)
  List<Reminder> subtasks;
  @HiveField(10)
  String image;
  ReminderDetail({
    required this.time,
    required this.list,
    required this.title,
    required this.date,
    required this.notes,
    required this.flag,
    required this.image,
    required this.location,
    required this.priority,
    required this.subtasks,
    required this.url,
  });
}
