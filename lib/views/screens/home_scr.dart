import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/app_logo_wid.dart';
import '../widgets/custom_icons_wid.dart';
import '../widgets/top_indicator_wid.dart';
import 'more_options_scr.dart';
import 'orders_scr.dart';
import 'profile_scr.dart';
import 'works_scr.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: Duration.zero,
        initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: secondaryColor,
        child: TabBar(
          unselectedLabelColor: whiteColor,
          labelColor: whiteColor,
          labelStyle: const TextStyle(fontSize: smallFontSize),
          controller: _tabController,
          indicator: TopIndicatorWid(),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(icon: AppLogoWid(isIcon: true), text: 'Service'),
            Tab(
                icon: CustomIconWid(
                  height: 30,
                  icon: CustomAppIcons.orders,
                ),
                text: 'Orders'),
            Tab(
                icon: CustomIconWid(
                  height: 30,
                  icon: CustomAppIcons.account,
                ),
                text: 'Account'),
            Tab(
                icon: CustomIconWid(
                  height: 30,
                  icon: CustomAppIcons.more,
                ),
                text: "More"),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          const WorksScr(),
          const OrdersScr(),
          ProfileScr(),
          MoreOptionsScr(),
        ],
      ),
    );
  }
}
