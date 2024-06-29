// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/models/sold_model.dart';
import 'package:test2/screens/product/products_screen.dart';
import '../../../core/const/const.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class SoldItemListView extends StatelessWidget {
  SoldModel soldModel;
  SoldItemListView({
    super.key,
    required this.soldModel,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductsScreen(
                categoryModel: categoreis[0],
                appBarSubCategoryName: 'Sold Items',
                productsItems: products),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.74,
        // height: MediaQuery.of(context).size.height * 0.16,
        decoration: BoxDecoration(
          color: ColorManager.orangeYellow,
          borderRadius: BorderRadius.circular(AppSize.s24),
        ),
        child: Row(
          children: [
            const SizedBox(width: AppSize.s24),
            Image.asset(
              soldModel.image,
              height: AppSize.s70,
              width: AppSize.s70,
            ),
            const SizedBox(width: AppSize.s20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get',
                  style: StylesManager.h3Regular20
                      .copyWith(color: ColorManager.whiteColor),
                ),

                Text(
                  '${soldModel.amount}% OFF',
                  style: StylesManager.h1Bold30
                      .copyWith(color: ColorManager.whiteColor),
                ), // ammount

                Text(
                  soldModel.extraInfo,
                  style: StylesManager.h3Regular20.copyWith(
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
