import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/screens/product%20details/widgets/app_bar_three.dart';
import 'package:test2/screens/product%20details/widgets/slider_page_three.dart';
import 'page_three_details_info.dart';

class PageThreeDetails extends StatelessWidget {
  ProductModel productModel;

  PageThreeDetails({
    super.key,
    required this.productModel,
  });

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: AppSize.s245,
                child: Column(
                  children: [
                    AppBarThree(productModel: productModel),
                  ],
                ),
              ),
              Positioned(
                top: AppSize.s20,
                left: AppSize.s100,
                right: AppSize.s100,
                child: SliderPageThree(
                  productModel: productModel,
                  pageController: pageController,
                ),
              ),
            ],
          ),
          PageThreeDetailsInfo(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
