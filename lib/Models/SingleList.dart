import 'package:flutter/material.dart';
import 'package:reminders/Models/Reminder.dart';

class SingleList {
  IconData icon;
  Color color;
  String title;
  List<Reminder> reminders;

  SingleList({required this.color, required this.icon, required this.title, required this.reminders});
}
