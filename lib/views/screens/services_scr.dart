import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/app_logo_wid.dart';
import '../widgets/custom_appbar_shape_wid.dart';
import '../widgets/custom_icons_widget.dart';
import '../widgets/service_card_wid.dart';
import 'choice_card_scr.dart';

class ServicesScr extends StatelessWidget {
  const ServicesScr({super.key});

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
            child: InkWell(
                onTap: () {
                  //NOTE: this function just for testing
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChoiceCardScreen(),
                      ));
                },
                child: const CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.bell,
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
      body: SizedBox(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: List.generate(services.length, (index) {
                    return Center(
                      child: ServiceCardWid(
                        service: services[index],
                      ),
                    );
                  })),
            )),
          ],
        ),
      ),
    );
  }
}
