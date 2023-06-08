import 'package:flutter/material.dart';

import '../widgets/order_card_details_widget.dart';

class UnderwayOrdersScr extends StatelessWidget {
  const UnderwayOrdersScr({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const SizedBox(height: 2.5),
        separatorBuilder: (context, index) => OrderCardDetails(
            title: "Order #${index + 3150}",
            date: "28 Nov 2019",
            serviceType: "Carpenter"),
        itemCount: 5);
  }
}
