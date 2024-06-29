import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              StringManager.deliveryTo,
              style: StylesManager.body2Regular16
                  .copyWith(color: ColorManager.blackHintText),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: AppPadding.p20),
              child: Text(
                StringManager.withinTime,
                style: StylesManager.body2Regular16
                    .copyWith(color: ColorManager.blackHintText),
              ),
            )
          ],
        ),
        const SizedBox(
          height: AppSize.s4,
        ),
        Row(
          children: [
            Text(
              StringManager.deliveryLocation,
              style: StylesManager.h4Regular18
                  .copyWith(color: ColorManager.black1),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsManager.arrowdown,
                  width: AppSize.s10,
                )),
            const Spacer(),
            Text(StringManager.duration,
                style: StylesManager.h4Regular18
                    .copyWith(color: ColorManager.black1)),
            const SizedBox(
              width: AppSize.s10,
            ),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsManager.arrowdown,
                  width: AppSize.s10,
                )),
          ],
        ),
        const SizedBox(
          height: AppSize.s8,
        )
      ],
    );
  }
}
