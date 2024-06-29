import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/product%20details/widgets/pag_three_details.dart';
import 'package:test2/screens/product%20details/widgets/page_details_tow.dart';
import 'package:test2/screens/product%20details/widgets/page_one_details.dart';
import 'package:test2/screens/product%20details/widgets/page_two_details.dart';

import '../../core/utils/color_manager.dart';
import '../../models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  final PageController pageController;

  ProductDetailsScreen(
      {super.key, required this.productModel, required this.pageController});

  @override
  Widget build(BuildContext context) {
    List pages = [
      PageOneDetails(productModel: productModel),
      PageDetailsTow(productModel: productModel),
      PageThreeDetails(productModel: productModel)
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: pages.length,
            onDotClicked: (index) => pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn),
            effect: const ExpandingDotsEffect(
                activeDotColor: ColorManager.orangeYellow,
                dotHeight: AppSize.s8,
                dotWidth: AppSize.s15),
          ),
          const SizedBox(height: AppSize.s10),
        ],
      ),
    );
  }
}
