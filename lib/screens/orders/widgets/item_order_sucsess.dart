import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';

import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/product_model.dart';

class ItemOrderSucsess extends StatelessWidget {
  ProductModel productModel;

  ItemOrderSucsess({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            left: AppPadding.p24,
            right: AppPadding.p24,
            bottom: AppPadding.p20),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                productModel.images[0],
                width: 45,
              ),
              const SizedBox(width: AppSize.s26),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.name,
                    style: StylesManager.body02Regular14,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    '\$${productModel.price}',
                    style: StylesManager.body02Regular14,
                  ),
                ],
              ),
              const Spacer(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'ID :',
                    style: StylesManager.body02Regular14.copyWith(
                      color: const Color(0xff616A7D),
                    ),
                  ),
                  TextSpan(
                      text: StringManager.id,
                      style: StylesManager.body02Regular14),
                ]),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s16),
          Row(
            children: [
              SizedBox(width: AppSize.s67),
              Text(
                '02/10/2021',
                style: StylesManager.body02Regular14.copyWith(
                  color: const Color(0xff8891A5),
                ),
              ),
              const Spacer(),
              Container(
                width: AppSize.s74,
                height: AppSize.s26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s6),
                  color: const Color(0xffEAEEF6),
                ),
                child: Center(
                  child: Text(
                    StringManager.success,
                    style: StylesManager.labelMedium12
                        .copyWith(color: ColorManager.darkBlue),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s28),
          const Divider(
            thickness: 0.55,
          ),
        ]));
  }
}
