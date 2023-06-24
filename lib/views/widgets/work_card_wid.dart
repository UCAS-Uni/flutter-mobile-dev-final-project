import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../../models/entities/work_model.dart';
import '../screens/card_info_scr.dart';

class WorkCardWid extends StatelessWidget {
  WorkCardWid({super.key, required this.workModel}) {
    print('WorkCardWid constructor');
    print('WorkCardWid constructor: workModel.name: ${workModel.name}');
    print('WorkCardWid constructor: workModel.icon: ${workModel.icon}');
  }
  final WorkModel workModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateToWidget(CardInfoScr());
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
                  // TODO: Uncomment it if you need to deal with API
                  // Expanded(child: Image.network(workModel.icon!)),

                  // TODO: Comment it if you need to deal png icons
                  // Expanded(
                  //     child: Image.asset("assets/icons/${workModel.icon}.png")),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/icons/${workModel.icon}.svg',
                    ),
                  ),
                  Text(
                    workModel.name!,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ]),
          )),
    );
  }
}
