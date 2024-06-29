import 'package:flutter/material.dart';

import '../../../core/const/const.dart';
import 'cart_item.dart';

class ListViewCart extends StatelessWidget {
  const ListViewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: cartItems.length, //cartItems.length,
      itemBuilder: (context, index) =>
          ItemCart(productModel: cartItems[index] //  cartItems[index],
              ),
    );
  }
}
