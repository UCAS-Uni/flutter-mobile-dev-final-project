import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobile_dev_final_project/controllers/state_manager/auth_provider.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider())
      ],
      child:
          Consumer<AuthProvider>(builder: (BuildContext context, value, child) {
        return GetMaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          navigatorKey: AppRouter.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Home Services Provider',
          theme: appTheme,
          home: const SplashScr(),
        );
      }),
    );
  }
}
