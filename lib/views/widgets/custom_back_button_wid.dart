import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';

class CustomBackBtnWid extends StatelessWidget {
  const CustomBackBtnWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: whiteColor.withOpacity(0.3),
      ),
      child: GestureDetector(
        onTap: () {
          AppRouter.navigateFrom();
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: whiteColor,
        ),
      ),
    );
  }
}
