import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/cart/widgets/app_bar_sliver_cart.dart';
import 'package:test2/screens/cart/widgets/cart_item.dart';
import 'package:test2/screens/cart/widgets/fatora.dart';

import '../../core/const/const.dart';
import 'widgets/app_bar_cart.dart';
import 'widgets/list_view_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  bool thereIsSoldInOneItemInCart() {
    bool sold = false;
    if (cartItems.isNotEmpty) {
      for (var e in cartItems) {
        if (e.discount == true) {
          sold = true;
          return sold;
        }
      }
    }
    return sold;
  }

  int itemsRemaining() {
    switch (cartItems.length) {
      case 0:
      case 1:
      case 2:
      case 3:
        return 0;
      case 4:
        {
          if (!thereIsSoldInOneItemInCart()) {
            return 0;
          } else {
            return cartItems.length - 3;
          }
        }
      default:
        if (thereIsSoldInOneItemInCart()) {
          return cartItems.length - 3;
        } else {
          return cartItems.length - 4;
        }
    }
  }

  showEitherAppBarOrSliverAppbar() {
    if (cartItems.isEmpty || !thereIsSoldInOneItemInCart()) {
      return const SliverToBoxAdapter(
          child: Padding(
        padding: EdgeInsets.only(left: AppSize.s24),
        child: AppBarCart(),
      ));
    } else if (thereIsSoldInOneItemInCart()) {
      return const AppBarSliverCart();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  showEitherAppBarOrSliverAppbar(),
                  cartItems.isNotEmpty
                      ? const SliverToBoxAdapter(
                          child: SizedBox(height: AppSize.s30),
                        )
                      : const SliverToBoxAdapter(
                          child: SizedBox(),
                        ),
                  // SliverToBoxAdapter(child: AppBarCart()),
                  const ListViewCart(),
                ],
              ),
            ),
            Theme(
              /* استخدمنا 
              theme 
             لتخصيص 
             ExpansionTile  
             وجعل لون الفواصل ديفايدر شفافًا باستخدام
             dividerColor: Colors.transparent
              */
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.only(left: AppPadding.p25),
                trailing: const SizedBox.shrink(), // إخفاء الأيقونة الافتراضية
                title: Row(
                  children: [
                    Text(
                      '+ ${itemsRemaining()} More',
                      style: StylesManager.labelMedium12
                          .copyWith(color: ColorManager.darkBlue),
                    ),
                    const Spacer(),
                    Text(
                      'Edit',
                      style: StylesManager.labelMedium12
                          .copyWith(color: ColorManager.darkBlue),
                    )
                  ],
                ),
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.525,
                    child: ListView.builder(
                      itemCount: cartItems.length, //cartItems.length,
                      itemBuilder: (context, index) => ItemCart(
                          productModel: cartItems[index] //  cartItems[index],
                          ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s10),
            const Fatora(
              titleOfButton: StringManager.proceedToCheckout,
            ),
          ],
        ),
      ),
    );
  }
}



// Padding(
//                 padding: const EdgeInsets.only(
//                   left: AppPadding.p24,
//                   right: AppPadding.p25,
//                   top: AppPadding.p10,
//                   bottom: AppPadding.p18,
//                 ),
//                 child: Row(
//                   children: [
//                     Text(
//                       '+ ${itemsRemaining()} More',
//                       style: StylesManager.labelMedium12
//                           .copyWith(color: ColorManager.darkBlue),
//                     ),
//                     const Spacer(),
//                     Text(
//                       'Edit',
//                       style: StylesManager.labelMedium12
//                           .copyWith(color: ColorManager.darkBlue),
//                     )
//                   ],
//                 ),