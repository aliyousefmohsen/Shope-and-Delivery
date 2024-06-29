// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/models/category_model.dart';
import 'package:test2/models/product_model.dart';

import '../grocery_home/widgets/deals_item_grid_view.dart';

class GridViewProducts extends StatelessWidget {
  CategoryModel categoryModel;
  List<ProductModel> productsItems;
  GridViewProducts({
    super.key,
    required this.categoryModel,
    required this.productsItems,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      sliver: SliverGrid.builder(
        itemCount: productsItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 /
                2.6, // بس يكون عندي العنصر يلي داخل الجريد فيو طولو أكبر من عرضو الكريد فيو بتعرضو بشكل مربع وبيطلع معي خطأ أوفر فلو لهيك بستخدم تشايلد أسبيكت راتيو
            crossAxisCount: 2,
            mainAxisSpacing: AppSize.s20,
            crossAxisSpacing: AppSize.s15),
        itemBuilder: (context, index) {
          return DealsItemGridView(
            productModel: productsItems[index],
          );
        },
      ),
    );
  }
}
