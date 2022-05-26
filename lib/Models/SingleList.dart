import 'package:flutter/material.dart';
import 'package:reminders/Models/Reminder.dart';
import 'package:hive/hive.dart';

part 'SingleList.g.dart';

@HiveType(typeId: 1)
class SingleList {
  @HiveField(0)
  String id;
  @HiveField(1)
  int icon;
  @HiveField(2)
  int color;
  @HiveField(3)
  String title;
  @HiveField(4)
  List<Reminder> reminders;

  SingleList(
      {required this.color,
      required this.id,
      required this.icon,
      required this.title,
      required this.reminders});
}
