import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import 'completed_orders_scr.dart';
import 'pending_orders_scr.dart';
import 'underway_orders_scr.dart';

class OrdersScr extends StatefulWidget {
  const OrdersScr({super.key});

  @override
  State<OrdersScr> createState() => _OrdersScrState();
}

class _OrdersScrState extends State<OrdersScr> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: 3,
        vsync: this,
        animationDuration: Duration.zero,
        initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Item Details",
          style: TextStyle(
            color: whiteColor,
            fontSize: meduimFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primaryGradient),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: offWhiteColor,
        child: Column(
          children: [
            Column(
              children: [
                TabBar(
                  labelColor: primaryColor,
                  unselectedLabelColor: greyColor,
                  tabs: const [
                    Tab(text: 'Pending'),
                    Tab(text: 'Underway'),
                    Tab(text: 'Completed'),
                  ],
                  controller: _tabController,
                  // indicatorSize: TabBarIndicatorSize.tab,
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PendingOrdersScr(),
                  UnderwayOrdersScr(),
                  CompletedOrdersScr(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
