import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/cart/cart_screen.dart';

import '../core/const/const.dart';

import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/style_maneger.dart';

class BagCounterBlackIcon extends StatefulWidget {
  const BagCounterBlackIcon({
    super.key,
  });

  @override
  State<BagCounterBlackIcon> createState() => _BagCounterBlackIconState();
}

class _BagCounterBlackIconState extends State<BagCounterBlackIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CartScreen(),
          ),
        );
        setState(() {});
      },
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: AppPadding.p7),
              child: SvgPicture.asset(AssetsManager.bagBlack)),
          Padding(
            padding: const EdgeInsets.only(left: AppSize.s11),
            child: CircleAvatar(
              radius: 10.5,
              backgroundColor: ColorManager.orangeYellow,
              child: Text(
                cartItems.length.toString(),
                style: StylesManager.button1_14
                    .copyWith(color: ColorManager.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
