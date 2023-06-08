import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/navigations/app_navigator.dart';
import '../../core/themes/app_theme.dart';
import 'splash_scr.dart';

class MainScr extends StatelessWidget {
  const MainScr({Key? key}) : super(key: key);

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
      home: const SplashScr(),
    );
  }
}
