import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/screens/category/widget/item_in_grid_view.dart';

import '../../../core/const/const.dart';

class GridViewinCategoryScreen extends StatelessWidget {
  const GridViewinCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      sliver: SliverGrid.builder(
        itemCount: categoreis.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 /
                2.5, // بس يكون عندي العنصر يلي داخل الجريد فيو طولو أكبر من عرضو الكريد فيو بتعرضو بشكل مربع وبيطلع معي خطأ أوفر فلو لهيك بستخدم تشايلد أسبيكت راتيو
            crossAxisCount: 2,
            mainAxisSpacing: AppSize.s19,
            crossAxisSpacing: AppSize.s19),
        itemBuilder: (context, index) {
          return ItemInGridView(
            categoryModel: categoreis[index],
          );
        },
      ),
    );
  }
}
