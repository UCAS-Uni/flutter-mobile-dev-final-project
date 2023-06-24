import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'models/local/shared_pref_manager.dart';
import 'models/network/dio_manager.dart';
import 'views/screens/main_scr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DioManagerClass.getInstance.init();
  await SharedPref.instance.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/langs',
      fallbackLocale: const Locale('en'),
      saveLocale: false,
      child: const MainScr(),
    ),
  );
}
