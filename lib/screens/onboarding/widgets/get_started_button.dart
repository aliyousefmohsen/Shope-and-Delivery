import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/grocery_home/grocery_home.dart';
import 'package:test2/widgets/home_screen_with_nav_bar.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width / 1.45,
      height: AppSize.s70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              StringManager.getStarted,
              style: StylesManager.body1SemiBold16,
            ),
            const Icon(
              Icons.arrow_forward,
              color: ColorManager.blackColor,
              size: AppSize.s28,
            ),
          ],
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomeScreenWithNavBar(),
            ),
          );
        },
      ),
    );
  }
}
