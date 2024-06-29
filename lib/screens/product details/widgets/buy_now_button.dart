// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/helper/add_item_to_cart.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/models/product_model.dart';
import 'package:test2/screens/checkout/check_out_screen.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';

class BuyNowButton extends StatelessWidget {
  ProductModel productModel;
  BuyNowButton({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addItemToCart(productModel);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const CheckOutScreen();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.darkBlue,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.40, AppSize.s56),
        side: const BorderSide(color: ColorManager.darkBlue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
      ),
      child: Text(
        StringManager.buyNow,
        style: StylesManager.button1_14.copyWith(
          color: ColorManager.whiteColor,
        ),
      ),
    );
  }
}
