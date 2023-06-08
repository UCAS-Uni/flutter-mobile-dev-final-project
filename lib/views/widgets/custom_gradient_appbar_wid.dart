import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import 'custom_appbar_shape_wid.dart';
import 'custom_back_button_wid.dart';

class CustomGradientAppBarWid extends StatelessWidget
    implements PreferredSizeWidget {
  final String pageTitle;
  final bool isBackButton;
  const CustomGradientAppBarWid({
    super.key,
    required this.pageTitle,
    this.isBackButton = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(null),
      toolbarHeight: 110,
      flexibleSpace: ClipPath(
        clipper: CustomAppBarShapeWid(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
          child: Row(
            mainAxisAlignment: isBackButton
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: isBackButton
                ? [
                    const CustomBackBtnWid(),
                    Text(
                      pageTitle,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: mediumFontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 25),
                    //   child: Icon(
                    //     Icons.notifications_outlined,
                    //     size: 26,
                    //     color: whiteColor,
                    //   ),
                    // ),
                    const SizedBox(
                      width: 65,
                    ),
                    // Spacer(),
                  ]
                : [
                    Text(
                      pageTitle,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: mediumFontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
