import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  bool isEnglish = true;
  void changeLang() {
    isEnglish = !isEnglish;
    notifyListeners();
  }
}
