import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/product%20details/widgets/page_details_tow.dart';
import 'package:test2/screens/product%20details/widgets/thin_chois_top_page_two.dart';
import '../../../models/product_model.dart';
import 'add_to_cart_and_buy_now_buttons.dart';
import 'details_info.dart';
import 'details_text.dart';
import 'netritional_facts.dart';
import 'price_details.dart';
import 'reivews.dart';

class PageTwoDetails extends StatelessWidget {
  const PageTwoDetails({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: AppPadding.p20, right: AppPadding.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PriceDetails(productModel: productModel),
            const SizedBox(height: AppPadding.p10),
            AddToCartAndBuyNowButtons(productModel: productModel),
            const SizedBox(height: AppPadding.p30),
            DetailsText(productModel: productModel),
            const NutritionalFacts(),
            const Reivews(),
          ],
        ),
      ),
    );
  }
}
