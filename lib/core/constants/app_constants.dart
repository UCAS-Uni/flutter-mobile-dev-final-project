import 'package:flutter/material.dart';

import '../../views/widgets/custom_icons_wid.dart';
import '../../views/widgets/work_card_wid.dart';

// API Const
const String baseUrl = 'https://studentucas.awamr.com/api/';
const String signupEndpoint = 'auth/register/user';
const String singinEndpoint = 'auth/login/user';
const String allWorkEndpoint = 'all/works';
const String createOrderEndpoint = 'create/order';
// // todo here for Header Requests ::
//   static Map<String, String> header(int typeToken) {
//     Map<String, String> headers = {};
//     if (typeToken == 0) {
//       headers = {
//         'Accept': 'application/json',
//         'Content-Type': 'application/json',
//         'Accept-Language': Get.locale.toString().split("_")[0],
//       };
//     } else if (typeToken == 1) {
//       headers = {
//         'Content-Type': 'application/x-www-form-urlencoded',
//       };
//     } else if (typeToken == 2) {
//       headers = {
//         'authorization': SharedPref.instance.getUserToken(),
//       };
//     } else if (typeToken == 3) {
//       headers = {
//         //  'Authorization': '${SharedPref.instance.getToken().toString()}',
//         'Content-Type': 'application/x-www-form-urlencoded'
//       };
//     } else if (typeToken == 4) {
//       // print("msg_get_user_token ${SharedPref.instance.getUserToken()}");
//       headers = {
//         'Authorization': "Bearer ${SharedPref.instance.getUserToken()}",
//         'Content-Type': 'application/json',
//         'Accept-Language': Get.locale.toString().split("_")[0],
//         'Accept': 'application/json',
//       };
//     }

//     return headers;
//   }
// }

// COLORS
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

// List<WorkWid> services = <WorkWid>[
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.ac),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.lights),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.water),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.bugs),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.cleans),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.saw),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.settingsLarge),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.cleans),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.saw),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.ac),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.lights),
//     onTap: () {},
//   ),
//   WorkWid(
//     title: 'Carpenter',
//     icon: const CustomIconWid(height: 50, icon: CustomAppIcons.water),
//     onTap: () {},
//   ),
// ];
