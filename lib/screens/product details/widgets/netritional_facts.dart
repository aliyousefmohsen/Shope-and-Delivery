import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';

class NutritionalFacts extends StatelessWidget {
  const NutritionalFacts({super.key});

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
                StringManager.nutritionalFacts,
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
        const Divider(
          color: Color(0XFFB2BBCE),
        ),
        const SizedBox(height: AppSize.s16)
      ],
    );
  }
}
