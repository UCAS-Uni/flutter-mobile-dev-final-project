import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/navigations/app_navigator.dart';
import 'core/themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      navigatorKey: AppRouter.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Home Services Provider',
      theme: appTheme,
      //  home: const SplashScr(),
    );
  }
}
