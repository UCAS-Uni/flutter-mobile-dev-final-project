import 'package:flutter/material.dart';

import 'models/local/shared_pref_manager.dart';
import 'models/network/dio_manager.dart';
import 'views/screens/main_scr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioManagerClass.getInstance.init();
  await SharedPref.instance.init();
  runApp(MainScr());
}
