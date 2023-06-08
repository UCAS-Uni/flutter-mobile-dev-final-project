import 'package:flutter/material.dart';
import 'package:homeservices/views/screens/cards/card_info_field_scr.dart';
import 'package:homeservices/views/widgets/custom_gradient_appbar_widget.dart';
import 'package:homeservices/views/widgets/custom_phone_texfield_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/large_button_widget.dart';

class CardInfoScr extends StatelessWidget {
  CardInfoScr({super.key});
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomGradientAppBar(
        pageTtile: "Location",
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/map.png")),
            const SizedBox(height: 25),
            CustomTextField(
              isLarge: true,
              controller: _detailsController,
              textHint: "More Details About Problem …",
            ),
            const SizedBox(height: 25),
            CustomPhoneTextField(controller: _mobileController),
            const Spacer(),
            LargeButton(
                text: "ADD ORDER",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CardInfoFieldScr()));
                }),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
