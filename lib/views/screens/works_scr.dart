import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/state_manager/auth_provider.dart';
import '../../core/constants/app_constants.dart';
import '../../core/navigations/app_navigator.dart';
import '../../models/entities/work_model.dart';
import '../widgets/app_logo_wid.dart';
import '../widgets/custom_appbar_shape_wid.dart';
import '../widgets/custom_icons_wid.dart';
import '../widgets/work_card_wid.dart';
import 'choice_card_scr.dart';

class WorksScr extends StatelessWidget {
  List<WorkModel> localWorks = [
    WorkModel(
      name: 'Carpenter',
      icon: 'ac',
    ),
    WorkModel(
      name: 'Barber',
      icon: 'lights',
    ),
    WorkModel(
      name: 'Plumber',
      icon: 'water',
    ),
    WorkModel(
      name: 'Programmer',
      icon: 'bugs',
    ),
    WorkModel(
      name: 'Cleaner',
      icon: 'cleans',
    ),
    WorkModel(
      name: 'Carpenter',
      icon: 'saw',
    ),
    WorkModel(
      name: 'Technician',
      icon: 'settingsLarge',
    ),
    WorkModel(
      name: 'Cleaner',
      icon: 'cleans',
    ),
  ];
  WorksScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(null),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
                onTap: () {
                  //NOTE: this function just for testing
                  AppRouter.navigateToWidget(ChoiceCardScr());
                },
                child: const CustomIconWid(
                  height: 30,
                  icon: 'bell',
                )),
          )
        ],
        title: const SizedBox(height: 50, child: AppLogoWid()),
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
        ),
      ),
      body: Consumer<AuthProvider>(
        builder: ((context, provider, child) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: CustomAppBarShapeWid(),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          gradient: primaryGradient,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 90,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: blackColor.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Select Service",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: normalFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    children: List.generate(
                      localWorks.length,
                      (index) {
                        return Center(
                          child: WorkCardWid(
                            workModel: localWorks[index],
                          ),
                        );
                      },
                    ),
                    // TODO: Uncomment this code when you want to use API
                    // children: List.generate(
                    //   provider.allWorks.length,
                    //   (index) {
                    //     return Center(
                    //       child: WorkCardWid(
                    //         workModel: provider.allWorks[index],
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),
                )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
