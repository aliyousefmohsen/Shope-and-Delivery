import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';
import 'details_text.dart';
import 'add_to_cart_and_buy_now_buttons.dart';
import 'evaluation_product.dart';
import 'netritional_facts.dart';
import 'price_details.dart';
import 'reivews.dart';

class PageThreeDetailsInfo extends StatelessWidget {
  ProductModel productModel;
  PageThreeDetailsInfo({
    super.key,
    required this.productModel,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: AppMargin.m10, right: AppMargin.m10),
      padding: const EdgeInsets.only(
          left: AppPadding.p18, right: AppPadding.p18, top: AppPadding.p25),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s35),
          topRight: Radius.circular(AppSize.s35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thin Choise Top \n ${productModel.name}',
            style: StylesManager.h3Medium20.copyWith(),
          ),
          PriceDetails(productModel: productModel),
          const EvalutionProduct(),
          AddToCartAndBuyNowButtons(
            productModel: productModel,
          ),
          const SizedBox(height: AppSize.s30),
          DetailsText(
            productModel: productModel,
          ),
          const NutritionalFacts(),
          const Reivews(),
        ],
      ),
    );
  }
}
