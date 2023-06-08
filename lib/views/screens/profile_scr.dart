import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/custom_icons_widget.dart';
import '../widgets/option_card_wid.dart';

class ProfileScr extends StatelessWidget {
  ProfileScr({super.key});
  final List<Map<String, dynamic>> _options = [
    {"title": "Language", "onTap": () {}, "content": "English"},
    {"title": "My Rates", "onTap": () {}},
    {"title": "Contact us", "onTap": () {}},
    {"title": "Share App", "onTap": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: primaryGradient,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: CustomIconWid(
                  height: 24,
                  icon: CustomAppIcons.settings,
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.only(top: 40),
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: offWhiteColor,
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/58864791'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  const Positioned(
                    top: 110,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Abdelrahman',
                          style: TextStyle(
                              color: blackColor,
                              fontSize: largeFontSize,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Khanunis, Palestine',
                          style: TextStyle(
                            color: lightGreyColor,
                            fontSize: normalFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: offWhiteColor,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      OptionCardWid(map: _options[0], haveContent: true),
                      OptionCardWid(map: _options[1]),
                      OptionCardWid(map: _options[2]),
                      OptionCardWid(map: _options[3]),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        color: whiteColor,
                        height: 50,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: orangeColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'SIGN OUT',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: normalFontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
