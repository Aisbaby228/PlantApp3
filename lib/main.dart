import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/app_view_model.dart';

import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(ChangeNotifierProvider(
      create: (context) => AppViewModel(), child:  MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'rayshardenov_s_devochki2',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.focusBreakSkipScreen,
          routes: AppRoutes.routes,
         
        );
      },
    );
  }
}
