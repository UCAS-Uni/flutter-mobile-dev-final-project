import 'package:flutter/material.dart';

import '../widgets/order_card_details_wid.dart';

class PendingOrdersScr extends StatelessWidget {
  const PendingOrdersScr({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const SizedBox(height: 2.5),
        separatorBuilder: (context, index) => OrderCardDetailsWid(
            title: "Order #${index + 52000}",
            date: "28 Nov 2019",
            serviceType: "Carpenter"),
        itemCount: 5);
  }
}
