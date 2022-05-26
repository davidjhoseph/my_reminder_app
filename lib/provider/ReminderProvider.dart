import 'package:flutter/material.dart';
import 'package:reminders/Models/SingleList.dart';
import 'package:hive/hive.dart';

class ReminderProvider extends ChangeNotifier {
  List<SingleList> _lists = [
    SingleList(
      id: 'hello',
      color: 0xFFFF9800,
      icon: 0xf05b1,
      title: "Reminders",
      reminders: [],
    ),
  ];
  List<int> colors = [
    0xFFF44336,
    0xFFE91E63,
    0xFF9C27B0,
    0xFF2196F3,
    0xFF000000,
    0xFFFFEB3B,
    0xFF795548,
    0xFF00BCD4,
    0xFFFF5722,
    0xFF607D8B,
    0xFF009688,
    0xFF3F51B5,
  ];

  List<int> icons = [
    0xf04b6,
    0xe037,
    0xe038,
    0xe03a,
    0xe03c,
    0xe03e,
    0xe03f,
    0xee30,
    0xf51d,
    0xe040,
    0xe041,
    0xe042,
    0xee35,
    0xee36,
    0xe045,
    0xe046,
    0xe047,
    0xe048,
    0xe049,
    0xe04a,
    0xee3c,
    0xe04c,
    0xe04d,
    0xf04b7,
    0xe04e,
    0xe04f,
    0xee3f,
    0xee41,
    0xf06d6,
    0xee42,
    0xe053,
    0xe054,
    0xee45,
    0xee46,
    0xe057,
    0xe058,
    0xe059,
    0xe05a,
    0xe05b,
    0xe05c,
    0xee4f,
  ];

  int _selectedColor = 0xFF1565C0;

  int _selectedIcon = 0xf04b6;

  String _selectedTitle = '';

  int get selectedColor {
    return _selectedColor;
  }

  int get selectedIcon {
    return _selectedIcon;
  }

  String get selectedTitle {
    return _selectedTitle;
  }

  List<SingleList> get lists {
    return [..._lists];
  }

  void changeSelectedIcon(int icon) {
    _selectedIcon = icon;
    notifyListeners();
  }

  void changeSelectedColor(int color) {
    _selectedColor = color;
    notifyListeners();
  }

  void changeSelectedTitle(String title) {
    _selectedTitle = title;
  }

  void addToList(
      {required int icon, required String title, required int color}) {
    final reminderList = Hive.box('reminderLists');
    reminderList.add(SingleList(
        color: color, title: title, icon: icon, reminders: [], id: 'hh'));
    _lists.add(SingleList(color: color, title: title, icon: icon, reminders: [], id: 'jj'));
    print(_lists);
    notifyListeners();
  }
}
