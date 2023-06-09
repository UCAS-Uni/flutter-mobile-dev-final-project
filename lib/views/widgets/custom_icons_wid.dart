import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconWid extends StatelessWidget {
  final double height;
  final String icon;
  const CustomIconWid({
    super.key,
    required this.height,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height / 5,
      height: height,
      child: SvgPicture.asset(
        'assets/icons/$icon.svg',
        height: height,
      ),
    );
  }
}
