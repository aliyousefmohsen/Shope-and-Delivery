import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';

class TrackOrderRow extends StatelessWidget {
  ProductModel productModel;
  TrackOrderRow({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: AppPadding.p10),
                  height: 150,
                  child: Image.asset(
                    AssetsManager.track,
                    width: width * 0.43,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: AppSize.s30,
                    backgroundColor: ColorManager.whiteColor,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffECECEC),
                      radius: AppSize.s26,
                      child: Image.asset(
                        AssetsManager.deliveryMan,
                        width: AppSize.s40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Meet our rider, ',
                  style: StylesManager.labelRegular12.copyWith(
                    color: const Color(0xff616A7D),
                  ),
                ),
                TextSpan(text: 'Rakib', style: StylesManager.labelRegular12),
              ]),
            )
          ],
        ),
        const SizedBox(width: 11),
        Expanded(
          child: Column(
            children: [
              Text(
                'Your ${productModel.name}',
                style: StylesManager.h3Regular20,
              ),
              Text(
                ' are on the way',
                style: StylesManager.h3Bold20,
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      backgroundColor: ColorManager.darkBlue),
                  child: Text(
                    'Track Order',
                    style: StylesManager.button1_14
                        .copyWith(color: ColorManager.whiteColor),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
