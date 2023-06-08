import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class ServiceWid {
  const ServiceWid({
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final Widget icon;
  final Function() onTap;
}

class ServiceCardWid extends StatelessWidget {
  const ServiceCardWid({super.key, required this.service});
  final ServiceWid service;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: service.onTap,
      child: Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: pinkColor),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: service.icon),
                  Text(service.title),
                ]),
          )),
    );
  }
}
