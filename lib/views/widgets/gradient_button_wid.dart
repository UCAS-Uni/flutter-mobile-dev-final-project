import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class HugeGradientButtonWid extends StatelessWidget {
  final String text;
  final Function() onTap;
  const HugeGradientButtonWid(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: secondaryGradient,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
