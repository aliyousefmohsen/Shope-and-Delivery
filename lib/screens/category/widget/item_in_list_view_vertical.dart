// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/models/category_model.dart';

import '../../../core/const/const.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/product_model.dart';
import '../../product/products_screen.dart';

class ItemInListViewVertical extends StatelessWidget {
  int index;
  CategoryModel categoryModel;
  ItemInListViewVertical({
    super.key,
    required this.index,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        List<ProductModel> productsItems = products.where((e) {
          return e.catName == categoryModel.name;
        }).toList();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ProductsScreen(
                  productsItems: productsItems,
                  categoryModel: categoryModel,
                  appBarSubCategoryName: categoryModel.name);
            },
          ),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.23,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.38,
              decoration: BoxDecoration(
                color: index.isEven
                    ? ColorManager.listItemColorOne
                    : ColorManager.listItemColorTwo,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  categoryModel.image,
                  height: AppSize.s100,
                  width: AppSize.s100,
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.s16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.s12),
                Text(
                  categoryModel.name, // productName
                  style: StylesManager.h4Bold18,
                ),
                const SizedBox(height: AppSize.s10),
                Text(
                  categoryModel.from,
                  style: StylesManager.h4Regular18
                      .copyWith(color: const Color(0xff616A7D)),
                ),
                const Spacer(),
                Text(
                  'Starting from',
                  style: StylesManager.body02Regular14
                      .copyWith(color: const Color(0xff8891A5)),
                ),
                const SizedBox(height: AppSize.s10),
                Text(
                  '\$ ${categoryModel.startFrom}/kG', // price
                  style: StylesManager.body1SemiBold16
                      .copyWith(color: ColorManager.darkBlue),
                ),
                const SizedBox(height: AppSize.s10),
              ],
            )
          ],
        ),
      ),
    );
  }
}





 // way 2 to design Contanir
 
  // Stack(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         color: const Color(0xffFFDC83),
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       width: MediaQuery.of(context).size.width * 0.34,
          //     ),
          //     Padding(
          //       padding: EdgeInsets.symmetric(
          //           vertical: MediaQuery.of(context).size.height * 0.19 / 5,
          //           horizontal: MediaQuery.of(context).size.width * 0.19 / 4),
          //       child: Image.asset(
          //         AssetsManager.greenTeaWithDash,
          //         height: 100,
          //         width: 100,
          //       ),
          //     ),
          //   ],
          // ),