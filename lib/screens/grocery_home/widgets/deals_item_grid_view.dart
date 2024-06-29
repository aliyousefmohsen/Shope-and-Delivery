import 'package:flutter/material.dart';

import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/screens/product%20details/product_details_screen.dart';
import 'package:test2/widgets/add_button.dart';

import '../../../core/helper/add_item_to_cart.dart';
import '../../../core/utils/color_manager.dart';

class DealsItemGridView extends StatelessWidget {
  final ProductModel productModel;
  DealsItemGridView({
    super.key,
    required this.productModel,
  });
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return ProductDetailsScreen(
              productModel: productModel,
              pageController: _pageController,
            );
          },
        ));
      },
      child: Container(
        //height: 150,
        decoration: BoxDecoration(
          color: ColorManager.black10.withOpacity(0.4),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        //width: width * 0.30,
        child: Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p17, right: AppPadding.p22),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s20,
              ),
              Image.asset(
                productModel.images[0],
                height: AppSize.s70,
                width: AppSize.s70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      addItemToCart(productModel);
                    },
                    child: const AddButton(),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              Row(
                children: [
                  Text(
                    "\$ ${productModel.price}",
                    style: StylesManager.body02SemiBold14,
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.28,
                    child: Text(
                      "${productModel.name} Package 1 | 1 bundle",
                      style: StylesManager.labelRegular12
                          .copyWith(color: const Color(0xff616A7D)),
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
