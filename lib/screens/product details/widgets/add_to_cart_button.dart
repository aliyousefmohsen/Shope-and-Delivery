import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/helper/add_item_to_cart.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';

class AddToCartButton extends StatelessWidget {
  ProductModel productModel;
  AddToCartButton({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        addItemToCart(productModel); // إضافة للسلة
      },
      style: OutlinedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width * 0.40, AppSize.s56),
        side: const BorderSide(color: ColorManager.darkBlue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
      ),
      child: Text(
        StringManager.addToCart,
        style: StylesManager.button1_14.copyWith(
          color: ColorManager.darkBlue,
        ),
      ),
    );
  }
}
