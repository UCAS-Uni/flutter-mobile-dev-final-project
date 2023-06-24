import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../widgets/huge_gradient_button_wid.dart';
import 'home_scr.dart';

class CardInfoFieldScr extends StatelessWidget {
  const CardInfoFieldScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: GestureDetector(
                        onTap: () {
                          AppRouter.navigateWithReplacementToWidget(HomeScr());
                        },
                        child: const Icon(Icons.close)),
                  ),
                  const Image(
                      image: AssetImage("assets/images/illustration.png")),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                        text: "ORDER ",
                        style: TextStyle(
                            fontSize: largeFontSize,
                            fontWeight: FontWeight.w800,
                            color: blackColor),
                        children: [
                          TextSpan(
                            text: "DONE",
                            style: TextStyle(
                                fontSize: largeFontSize,
                                fontWeight: FontWeight.w800,
                                color: primaryColor),
                          ),
                          TextSpan(
                            text: "!",
                            style: TextStyle(
                                fontSize: largeFontSize,
                                fontWeight: FontWeight.w800,
                                color: orangeColor),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 15, width: double.infinity),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: const Text(
                      "The ORDER has been sent. A technician will contact you",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: normalFontSize, color: blackColor),
                    ),
                  ),
                  const SizedBox(height: 15),
                  HugeGradientBtnWid(
                      text: "GO TO HOME",
                      onTap: () {
                        AppRouter.navigateWithReplacementToWidget(HomeScr());
                      }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
