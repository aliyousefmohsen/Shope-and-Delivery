import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../models/product_model.dart';
import 'add_to_cart_button.dart';
import 'buy_now_button.dart';

class AddToCartAndBuyNowButtons extends StatelessWidget {
  ProductModel productModel;
  AddToCartAndBuyNowButtons({
    super.key,
    required this.productModel,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AddToCartButton(
            productModel: productModel,
          ),
        ),
        const SizedBox(width: AppSize.s12),
        Expanded(
            child: BuyNowButton(
          productModel: productModel,
        )),
      ],
    );
  }
}
