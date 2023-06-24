import 'package:flutter/material.dart';

// API Const
const String baseUrl = 'https://studentucas.awamr.com/api/';
const String signupEndpoint = 'auth/register/user';
const String singinEndpoint = 'auth/login/user';
const String allWorkEndpoint = 'all/works';
const String createOrderEndpoint = 'create/order';

const primaryColor = Color(0xff346EDF);
const secondaryColor = Color(0xff6FC8FB);
const cyanColor = Color(0xff0E9CF9);
const blackColor = Color(0xff222328);
const greyColor = Color(0xff646781);
const lightGreyColor = Color(0xff7F8FA6);
const extraLightGreyColor = Color(0xffF0F0F0);
const whiteColor = Color(0xffFFFFFF);
const offWhiteColor = Color(0xffF2F6F6);
const pinkColor = Color(0xffDE1487);
const orangeColor = Color(0xffAF8344);
Gradient primaryGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    primaryColor,
    secondaryColor,
  ],
);
Gradient secondaryGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    secondaryColor,
    primaryColor,
  ],
);

const double extraLargeFontSize = 30;
const double largeFontSize = 24;
const double mediumFontSize = 20;
const double normalFontSize = 15;
const double smallFontSize = 12;
