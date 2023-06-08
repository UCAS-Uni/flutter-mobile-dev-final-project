import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:homeservices/core/constants/constants.dart';
import 'package:homeservices/views/screens/cards/card_info_scr.dart';
import 'package:homeservices/views/widgets/custom_gradient_appbar_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/large_button_widget.dart';

class ChoiceCardScreen extends StatelessWidget {
  ChoiceCardScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomGradientAppBar(
        pageTtile: "Card Title",
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
                InkWell(
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
            CustomTextField(
              isLarge: true,
              controller: _controller,
              textHint: "More Details About Problem …",
            ),
            const Spacer(),
            LargeButton(
                text: "NEXT",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CardInfoScr(),
                    ),
                  );
                }),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
