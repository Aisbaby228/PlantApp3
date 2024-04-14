import 'package:flutter/material.dart';
import '../presentation/focus_break_skip_screen/focus_break_skip_screen.dart';
import '../presentation/stats_monthly_march_screen/stats_monthly_march_screen.dart';
import '../presentation/my_lists_screen/my_lists_screen.dart';
import '../presentation/Schedule_lists/school_monday_screen.dart';
import '../presentation/month_march_screen/month_march_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String focusBreakSkipScreen = '/focus_break_skip_screen';

  static const String statsMonthlyMarchScreen = '/stats_monthly_march_screen';

  static const String myListsScreen = '/my_lists_screen';

  static const String schoolMondayScreen = '/school_monday_screen';

  static const String monthMarchScreen = '/month_march_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    focusBreakSkipScreen: (context) => FocusBreakSkipScreen(),
    statsMonthlyMarchScreen: (context) => StatsMonthlyMarchScreen(),
    myListsScreen: (context) => MyListsScreen(),
    schoolMondayScreen: (context) => SchoolMondayScreen(),
    monthMarchScreen: (context) => MonthMarchScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
