import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/product_model.dart';

class SliderPageThree extends StatelessWidget {
  const SliderPageThree({
    super.key,
    required this.productModel,
    required this.pageController,
  });

  final ProductModel productModel;
  final PageController pageController;

  // List<String> moreImages() {

  //   List<String> x = [];
  //   x.add(
  //     productModel.images[0],
  //   );
  //   x.addAll(imagesDetails);
  //   return x;
  // }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorManager.black20.withOpacity(0.1),
      radius: 120,
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s60,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            width: 210,
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
            height: AppSize.s50,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: productModel.images.length,
            onDotClicked: (index) => pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            ),
            effect: const ExpandingDotsEffect(
              activeDotColor: ColorManager.orangeYellow,
              dotHeight: AppSize.s8,
              dotWidth: AppSize.s15,
            ),
          )
        ],
      ),
    );
  }
}
