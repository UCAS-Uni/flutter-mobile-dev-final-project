import 'package:flutter/material.dart';

import '../../core/navigations/app_navigator.dart';
import '../widgets/custom_gradient_appbar_wid.dart';
import '../widgets/custom_phone_field_wid.dart';
import '../widgets/custom_textfield_wid.dart';
import '../widgets/large_button_wid.dart';
import 'card_info_field_scr.dart';

class CardInfoScr extends StatelessWidget {
  CardInfoScr({super.key});
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomGradientAppBarWid(
        pageTitle: "Location",
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/map.png")),
            const SizedBox(height: 25),
            CustomTextFieldWid(
              isLarge: true,
              controller: _detailsController,
              textHint: "More Details About Problem …",
            ),
            const SizedBox(height: 25),
            CustomPhoneFieldWid(controller: _mobileController),
            const Spacer(),
            LargeButtonWid(
                text: "ADD ORDER",
                onTap: () {
                  AppRouter.navigateToWidget(CardInfoFieldScr());
                }),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
