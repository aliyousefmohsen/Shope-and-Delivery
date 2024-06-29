import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/screens/orders/widgets/item_order_sucsess.dart';

import '../../../core/const/const.dart';
import 'item_order_on_the_way.dart';

class AllOrdersSliverList extends StatelessWidget {
  AllOrdersSliverList({
    super.key,
  });
  // void shuffle(List items) {
  //   // خربطة عشوائية لعناصر الليست
  //   var random = Random();

  //   for (var i = items.length - 1; i > 0; i--) {
  //     var j = random.nextInt(i + 1);
  //     var temp = items[i];
  //     items[i] = items[j];
  //     items[j] = temp;
  //   }
  // }

  List<ProductModel> allOrders = cartItems;
  @override
  Widget build(BuildContext context) {
    allOrders = allOrders + successOrders;

    //  دمج لائحتين
    return SliverList.builder(
      itemCount: allOrders.length,
      itemBuilder: (context, index) {
        if (allOrders[index].status == Status.success) {
          return ItemOrderSucsess(productModel: allOrders[index]);
        } else {
          return ItemOrderOnTheWay(productModel: allOrders[index]);
        }
      },
    );
  }
}
