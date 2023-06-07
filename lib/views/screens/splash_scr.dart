import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({super.key});

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // AppRouter.navigateWithReplacementToWidget(OnboardingScr());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerRight,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              primaryColor,
              secondaryColor,
            ],
          ),
        ),
        child: Image.asset(
          "assets/images/splashLogo.png",
          width: 254,
          height: 342,
        ),
      ),
    );
  }
}
