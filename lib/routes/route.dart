import 'package:flutter/material.dart';
import 'package:reminders/screens/all_screen.dart';
import 'package:reminders/screens/flagged_screen.dart';
import 'package:reminders/screens/home_screen.dart';
import 'package:reminders/screens/scheduled_screen.dart';
import 'package:reminders/screens/single_list_screen.dart';
import 'package:reminders/screens/today_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case ScheduledScreen.routeName:
      return MaterialPageRoute(builder: (_) => ScheduledScreen());
    case TodayScreen.routeName:
      return MaterialPageRoute(builder: (_) => TodayScreen());
    case AllScreen.routeName:
      return MaterialPageRoute(builder: (_) => AllScreen());
    case FlaggedScreen.routeName:
      return MaterialPageRoute(builder: (_) => FlaggedScreen());
    case SingleListScreen.routeName:
      return MaterialPageRoute(builder: (_) => SingleListScreen());
    default:
      return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
