// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/category_model.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/screens/product/products_screen.dart';

import '../../../core/const/const.dart';

import '../../../core/utils/color_manager.dart';

class ItemInGridView extends StatelessWidget {
  CategoryModel categoryModel;
  ItemInGridView({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
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
      child: Container(
        decoration: BoxDecoration(
            color: ColorManager.black10.withOpacity(0.25),
            borderRadius: BorderRadius.circular(AppSize.s12)),
        width: width * 0.40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s28),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s20,
              ),
              Image.asset(
                categoryModel.image,
                height: AppSize.s100,
                width: AppSize.s100,
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
              const Divider(),
              const SizedBox(
                height: AppSize.s07,
              ),
              Text(
                categoryModel.name,
                style: StylesManager.body02SemiBold14,
              ),
              Text(
                categoryModel.from,
                style: StylesManager.labelRegular12
                    .copyWith(color: const Color(0xff616A7D)),
                // overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
