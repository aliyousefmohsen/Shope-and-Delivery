import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/values_manager.dart';

class DecreaseIcon extends StatelessWidget {
  const DecreaseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: ColorManager.black10.withOpacity(0.4),
        radius: AppSize.s18,
        child: SvgPicture.asset(
          AssetsManager.mins,
          width: AppSize.s11,
        ),
      ),
    );
  }
}
