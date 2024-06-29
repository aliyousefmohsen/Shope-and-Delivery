import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/style_maneger.dart';

class EvalutionProduct extends StatelessWidget {
  const EvalutionProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p34),
      child: Row(
        children: [
          SvgPicture.asset(AssetsManager.stars),
          const SizedBox(
            width: AppSize.s10,
          ),
          Text(
            '110 Reviews',
            style: StylesManager.body02Regular14
                .copyWith(color: const Color(0xffA1A1AB)),
          ),
        ],
      ),
    );
  }
}
