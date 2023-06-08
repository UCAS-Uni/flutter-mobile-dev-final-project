import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static navigateToWidget(Widget widgetToNavigate) {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) {
          return widgetToNavigate;
        },
      ),
    );
  }

  static navigateWithReplacementToWidget(Widget widgetToNavigate) {
    Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) {
          return widgetToNavigate;
        },
      ),
    );
  }

  static void navigateFrom() {
    Navigator.pop(navigatorKey.currentContext!);
  }
}
