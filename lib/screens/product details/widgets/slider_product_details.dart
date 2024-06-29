import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/color_manager.dart';
import '../../../models/product_model.dart';

class SliderProductDetails extends StatelessWidget {
  const SliderProductDetails({
    super.key,
    required this.productModel,
    required this.pageController,
  });

  final ProductModel productModel;
  final PageController pageController;

  // List<String> moreImages() {
  //   List<String> x = [];
  //   x.add(productModel.images[0]);
  //   x.addAll(imagesDetails);
  //   return x;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
          child: PageView.builder(
            controller: pageController,
            itemCount: productModel.images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                productModel.images[index],
                // width: 75,
              );
            },
          ),
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: productModel.images.length,
          onDotClicked: (index) => pageController.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          effect: const ExpandingDotsEffect(
              activeDotColor: ColorManager.orangeYellow,
              dotHeight: AppSize.s8,
              dotWidth: AppSize.s15),
        )
      ],
    );
  }
}
