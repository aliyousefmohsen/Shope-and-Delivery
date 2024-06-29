// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/widgets/add_button.dart';

import '../../../core/helper/add_item_to_cart.dart';
import '../../../core/utils/color_manager.dart';
import '../../product details/product_details_screen.dart';

// ignore: must_be_immutable
class RecomendedItemListView extends StatelessWidget {
  ProductModel productModel;
  RecomendedItemListView({
    super.key,
    required this.productModel,
  });
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
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
        decoration: BoxDecoration(
            color: ColorManager.black10.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12)),
        width: MediaQuery.of(context).size.width * 0.37,
        // height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: Column(
            children: [
              const SizedBox(height: AppSize.s19),
              Image.asset(
                productModel.images[0],
                height: AppSize.s70,
                width: AppSize.s70,
              ),
              const SizedBox(
                height: AppSize.s18,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
                child: Divider(),
              ),
              const SizedBox(
                height: AppSize.s5,
              ),
              Text(
                productModel.name,
                style: StylesManager.body02SemiBold14,
              ),
              Text(
                productModel.from,
                style: StylesManager.labelRegular12,
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(AppSize.s13)),
                child: Row(
                  children: [
                    const SizedBox(width: AppSize.s12),
                    Text(
                      "Unit",
                      style: StylesManager.body02SemiBold14
                          .copyWith(color: const Color(0xff8891A5)),
                    ),
                    const SizedBox(width: AppSize.s03),
                    Text(
                      "\$ ${productModel.price}",
                      style: StylesManager.labelRegular12
                          .copyWith(color: const Color(0xff3F3F3F)),
                    ),
                    const Spacer(),
                    InkWell(
                      child: const AddButton(),
                      onTap: () {
                        addItemToCart(productModel);
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
