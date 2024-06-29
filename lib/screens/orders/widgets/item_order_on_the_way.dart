// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';
import 'track_order_row.dart';

class ItemOrderOnTheWay extends StatelessWidget {
  ProductModel productModel;

  ItemOrderOnTheWay({
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

          TrackOrderRow(productModel: productModel),
          //Track Row
          const SizedBox(height: AppSize.s28),
          const Divider(
            thickness: 0.55,
          ),
        ]));
  }
}
