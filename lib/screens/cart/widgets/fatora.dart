// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/screens/checkout/check_out_screen.dart';
import 'package:test2/screens/orders/orders_screen.dart';
import 'package:test2/widgets/width_button.dart';

import '../../../core/const/const.dart';

class Fatora extends StatelessWidget {
  final String titleOfButton;
  const Fatora({
    super.key,
    required this.titleOfButton,
  });

  double calcPricesInCart() {
    double subtotal = 0.0;
    if (cartItems.isNotEmpty) {
      for (var e in cartItems) {
        subtotal = subtotal + double.parse(e.price) * e.requiredCount!;
      }
    }
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: AppPadding.p8, right: AppPadding.p8), //top: 19,
      padding: const EdgeInsets.only(
          bottom: AppPadding.p35, left: AppSize.s16, right: AppSize.s16),
      decoration: BoxDecoration(
        color: ColorManager.black20.withOpacity(0.15),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSize.s30),
          topRight: Radius.circular(AppSize.s30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p20,
              right: AppPadding.p20,
              top: AppPadding.p17,
              bottom: AppPadding.p35,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      StringManager.subtotal,
                      style: StylesManager.body2Regular16
                          .copyWith(color: const Color(0xff616A7D)),
                    ),
                    const Spacer(),
                    Text(
                      '\$${calcPricesInCart()}',
                      style:
                          StylesManager.body02Medium14.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.s13),
                Row(
                  children: [
                    Text(
                      StringManager.delivery,
                      style: StylesManager.body2Regular16
                          .copyWith(color: const Color(0xff616A7D)),
                    ),
                    const Spacer(),
                    Text(
                      '\$${calcPricesInCart() == 0 ? 0.00 : 2}',
                      style: StylesManager.body02Medium14
                          .copyWith(fontSize: AppSize.s16),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.s16),
                Row(
                  children: [
                    Text(
                      StringManager.total,
                      style: StylesManager.body2Regular16
                          .copyWith(color: const Color(0xff616A7D)),
                    ),
                    const Spacer(),
                    Text(
                      '\$${calcPricesInCart() == 0 ? 0.00 : calcPricesInCart() + 2}',
                      style: StylesManager.body02Medium14
                          .copyWith(fontSize: AppSize.s16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          WidthButton(
            text: titleOfButton,
            onPressed: () {
              if (titleOfButton == StringManager.makePayment) {
                onRoadOrders = cartItems;
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return OrdersScreen();
                  },
                ));
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const CheckOutScreen();
                  },
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
