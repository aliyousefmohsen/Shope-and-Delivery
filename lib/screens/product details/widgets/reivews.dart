import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';

class Reivews extends StatelessWidget {
  const Reivews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: AppPadding.p10, bottom: AppPadding.p16),
          child: Row(
            children: [
              Text(
                StringManager.reviews,
                style: StylesManager.body2Regular16,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsManager.arrowdown,
                  width: AppSize.s20,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: AppSize.s40)
      ],
    );
  }
}
