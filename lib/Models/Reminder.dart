import 'package:reminders/Models/ReminderDetail.dart';
import 'package:hive/hive.dart';

part 'Reminder.g.dart';

@HiveType(typeId: 0)
class Reminder {
  @HiveField(0)
  String title;
  @HiveField(1)
  ReminderDetail detail;
  Reminder({
    required this.title,
    required this.detail,
  });
}
