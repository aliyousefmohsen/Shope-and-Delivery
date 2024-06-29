import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/onboarding/widgets/get_started_button.dart';
import 'package:test2/screens/onboarding/widgets/slider_on_boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A4BA0),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s30),
          Padding(
            padding: const EdgeInsets.only(left: AppSize.s40),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: StringManager.onboardingTitle,
                    style: StylesManager.h1Bold30
                        .copyWith(color: Colors.white, height: 1.18),
                  ),
                  WidgetSpan(child: Image.asset(AssetsManager.emoji)),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSize.s20),
          SliderOnBoarding(),
          Lottie.asset(AssetsManager.cartAnimation),
          const Expanded(child: SizedBox()),
          const Center(
            child: GetStartedButton(),
          ),
          const SizedBox(height: AppSize.s40),
        ],
      )),
    );
  }
}




/* Stack(
              children: [
                Text(
                  StringManager.onboardingTitle,
                  style: StylesManager.h1Bold30.copyWith(color: Colors.white),
                ),
                Positioned(
                  bottom: 9,
                  left: 100,
                  child: Image.asset(AssetsManager.emoji),
                ),
              ],
            ), */