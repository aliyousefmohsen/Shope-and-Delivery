import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/color_manager.dart';

class SliderOnBoarding extends StatelessWidget {
  final PageController pageController = PageController();

  List<String> textsInSlider = [
    "There's something for everyone\nto enjoy with Sweet Shop \nFavourites",
    "Discover the joy in every bite\nwith our DeliciousDelights \nCollection",
    "Experience a world of flavors\nwith our Gourmet Treats\nSelection"
  ];

  SliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSize.s40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s5),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: PageView.builder(
              controller: pageController,
              itemCount: textsInSlider.length,
              itemBuilder: (context, index) {
                return Text(
                  textsInSlider[index],
                  style: StylesManager.h4Medium18.copyWith(
                    color: const Color(0xffB2BBCE),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: AppSize.s40,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            onDotClicked: (index) => pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn),
            effect: const ExpandingDotsEffect(
                activeDotColor: ColorManager.whiteColor,
                dotHeight: AppSize.s8,
                dotWidth: AppSize.s15),
          )
        ],
      ),
    );
  }
}
