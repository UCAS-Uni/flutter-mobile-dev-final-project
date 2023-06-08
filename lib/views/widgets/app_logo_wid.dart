import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoWid extends StatelessWidget {
  final bool isIcon;
  const AppLogoWid({
    super.key,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isIcon ? 25 : 170,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
      ),
    );
  }
}
