import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../models/entities/work_model.dart';

class ServiceCardWid extends StatelessWidget {
  const ServiceCardWid({super.key, required this.workModel});
  final WorkModel workModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to work details page
      },
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
                  Expanded(child: Image.network(workModel.icon!)),
                  Text(workModel.name!),
                ]),
          )),
    );
  }
}
