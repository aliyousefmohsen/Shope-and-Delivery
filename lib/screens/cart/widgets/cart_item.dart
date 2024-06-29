import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/helper/add_item_to_cart.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/const/const.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';

// ignore: must_be_immutable
class ItemCart extends StatefulWidget {
  ProductModel productModel;

  ItemCart({
    super.key,
    required this.productModel,
  });

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p24, right: AppPadding.p24, bottom: AppPadding.p20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.productModel.images[0],
                width: 45,
              ),
              const SizedBox(width: AppSize.s26),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.name,
                    style: StylesManager.body02Regular14,
                  ),
                  const SizedBox(height: AppSize.s03),
                  Text(
                    '\$${widget.productModel.price}',
                    style: StylesManager.body02Regular14,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      decreaseRequiredCountOrRemoveItemFromCart();
                      setState(() {});
                    },
                    child: CircleAvatar(
                      backgroundColor: ColorManager.black10.withOpacity(0.4),
                      radius: AppSize.s21,
                      child: SvgPicture.asset(
                        AssetsManager.mins,
                        width: AppSize.s11,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s11),
                    child: Text(
                      widget.productModel.requiredCount.toString(),
                      style: StylesManager.body2Regular16,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: ColorManager.black10.withOpacity(0.4),
                    radius: AppSize.s21,
                    child: IconButton(
                        onPressed: () {
                          addItemToCart(widget.productModel);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.add,
                          size: AppSize.s18,
                        )),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: AppSize.s16),
          const Divider(
            thickness: 0.3,
          ),
        ],
      ),
    );
  }

  void decreaseRequiredCountOrRemoveItemFromCart() {
    int index = 0;
    for (var e in cartItems) {
      if (e.catName == widget.productModel.name) {
        index = cartItems.indexOf(e);
      }
    }

    if (widget.productModel.requiredCount == 1) {
      cartItems.removeAt(index);
    } else {
      widget.productModel.requiredCount =
          widget.productModel.requiredCount! - 1;
    }
  }
}
