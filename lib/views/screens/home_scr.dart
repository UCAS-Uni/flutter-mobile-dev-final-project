import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/app_logo_wid.dart';
import '../widgets/custom_icons_widget.dart';
import '../widgets/top_indicator_widget.dart';

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
          indicator: TopIndicator(),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(icon: AppLogoWid(isIcon: true), text: 'Service'),
            Tab(
                icon: CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.orders,
                ),
                text: 'Orders'),
            Tab(
                icon: CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.account,
                ),
                text: 'Account'),
            Tab(
                icon: CustomIcons(
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
          // const ServicesScr(),
          // const OrdersScr(),
          // ProfileScr(),
          // MoreOptionsScr(),
        ],
      ),
    );
  }
}
