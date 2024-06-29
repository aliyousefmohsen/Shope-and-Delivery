// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/models/product_model.dart';

import 'app_bar_product_details.dart';
import 'details_info.dart';
import 'slider_product_details.dart';

class PageOneDetails extends StatelessWidget {
  ProductModel productModel;

  PageOneDetails({
    super.key,
    required this.productModel,
  });

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          AppBarProductDetails(productModel: productModel),
          SliderProductDetails(
            productModel: productModel,
            pageController: pageController,
          ),
          DetailsInfo(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
