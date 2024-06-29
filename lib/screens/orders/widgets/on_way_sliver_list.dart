import 'package:flutter/material.dart';

import '../../../core/const/const.dart';
import 'item_order_on_the_way.dart';

class OnWaySliveList extends StatelessWidget {
  const OnWaySliveList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: onRoadOrders.length,
      itemBuilder: (context, index) {
        return ItemOrderOnTheWay(
          productModel: onRoadOrders[index],
        );
      },
    );
  }
}
