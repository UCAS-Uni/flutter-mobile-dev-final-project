import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    color: Colors.transparent,
  ),
  useMaterial3: true,
  fontFamily: 'Poppins',
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: orangeColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: extraLightGreyColor),
    ),
  ),
);
