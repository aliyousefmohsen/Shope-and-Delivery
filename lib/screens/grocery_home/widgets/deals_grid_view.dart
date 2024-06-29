import 'package:flutter/material.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/product_model.dart';

import '../../../core/const/const.dart';
import 'deals_item_grid_view.dart';

class DealsGridView extends StatelessWidget {
  DealsGridView({
    super.key,
  });
  List<ProductModel> fruitsAndTea = products.where((e) {
    return e.catName == StringManager.fruits ||
        e.name == StringManager.greenTea;
  }).toList();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      sliver: SliverGrid.builder(
        itemCount: fruitsAndTea.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 /
                2.5, // بس يكون عندي العنصر يلي داخل الجريد فيو طولو أكبر من عرضو الكريد فيو بتعرضو بشكل مربع وبيطلع معي خطأ أوفر فلو لهيك بستخدم تشايلد أسبيكت راتيو
            crossAxisCount: 2,
            mainAxisSpacing: AppSize.s16,
            crossAxisSpacing: AppSize.s12),
        itemBuilder: (context, index) {
          return DealsItemGridView(
            productModel: fruitsAndTea[index],
          );
        },
      ),
    );
  }
}
