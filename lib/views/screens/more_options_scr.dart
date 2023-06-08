import 'package:flutter/material.dart';

import '../widgets/custom_gradient_appbar_wid.dart';
import '../widgets/option_card_wid.dart';

class MoreOptionsScr extends StatelessWidget {
  MoreOptionsScr({super.key});
  final List<Map<String, dynamic>> _contentList = [
    {
      "title": "Change Passowrd",
      "onTap": () {},
    },
    {
      "title": "FAQ's",
      "onTap": () {},
    },
    {
      "title": "About App",
      "onTap": () {},
    },
    {
      "title": "Terms & Conditions",
      "onTap": () {},
    },
    {
      "title": "Privacy Policy",
      "onTap": () {},
    },
    {
      "title": "Rate App",
      "onTap": () {},
    },
    {
      "title": "Delete Account",
      "onTap": () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomGradientAppBarWid(
        pageTitle: "More",
        isBackButton: false,
      ),
      body: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: _contentList.length,
        itemBuilder: (context, index) => OptionCardWid(
          map: _contentList[index],
        ),
      ),
    );
  }
}
