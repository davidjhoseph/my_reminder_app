import 'package:flutter/material.dart';
import 'package:reminders/Models/SingleList.dart';

class ReminderDetail {
  SingleList list;
  DateTime date;
  TimeOfDay time;
  String title;
  String notes;
  String url;
  String location;
  bool flag;
  int priority;
  List<String> subtasks;
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
