import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p12,
        bottom: AppPadding.p24,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$${productModel.price}',
                  style: StylesManager.body1SemiBold16
                      .copyWith(color: ColorManager.darkBlue),
                ),
                TextSpan(
                  text: '/KG',
                  style: StylesManager.body2Regular16
                      .copyWith(color: ColorManager.darkBlue),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSize.s14),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p10, vertical: AppPadding.p4),
            decoration: BoxDecoration(
              color: ColorManager.darkBlue,
              borderRadius: BorderRadius.circular(AppSize.s20),
            ),
            child: Text(
              '\$22.04 OFF',
              style: StylesManager.labelRegular12
                  .copyWith(color: ColorManager.whiteColor),
            ),
          ),
          const SizedBox(width: AppSize.s30),
          const Spacer(
            flex: 2,
          ),
          Text(
            'Reg: \$56.70 USD',
            style: StylesManager.body02Regular14
                .copyWith(color: const Color(0xffB2BBCE)),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
