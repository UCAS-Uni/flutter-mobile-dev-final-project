import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../widgets/custom_gradient_appbar_wid.dart';
import '../widgets/custom_textfield_wid.dart';
import '../widgets/large_button_widget.dart';
import 'card_info_scr.dart';

class ChoiceCardScr extends StatelessWidget {
  ChoiceCardScr({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomGradientAppBarWid(
        pageTitle: "Card Title",
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: DottedBorder(
                    color: primaryColor,
                    dashPattern: const [10, 3],
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width - 50,
                      height: 50,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.photo_camera_back_outlined,
                            size: 27,
                            color: lightGreyColor,
                          ),
                          Text(
                            "Image Problem",
                            style: TextStyle(
                              fontSize: normalFontSize,
                              color: blackColor,
                            ),
                          ),
                          SizedBox(width: 37),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "image must be no more than 2 MB Max 5 Image",
                  style:
                      TextStyle(fontSize: smallFontSize, color: lightGreyColor),
                )
              ],
            ),
            const SizedBox(height: 40),
            CustomTextFieldWid(
              isLarge: true,
              controller: _controller,
              textHint: "More Details About Problem …",
            ),
            const Spacer(),
            LargeButtonWid(
                text: "NEXT",
                onTap: () {
                  AppRouter.navigateToWidget(CardInfoScr());
                }),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
