import 'package:flutter/material.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/cart/widgets/app_bar_cart.dart';

import '../../../core/utils/color_manager.dart';

class AppBarSliverCart extends StatelessWidget {
  const AppBarSliverCart({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SliverAppBar(
      automaticallyImplyLeading: false, // اخفاء ذر الرجوع الافتراضي
      pinned:
          true, // منشان ما يختفي الأب بار كلو بس أعمل سكرول وإنما بضل الأب بار الطبيعي بس أعمل سكرول للأخر
      title: const Padding(
        padding: EdgeInsets.only(
            top: AppPadding.p30, left: AppPadding.p10, bottom: AppPadding.p8),
        child: AppBarCart(),
      ),
      expandedHeight: height * 0.28,
      backgroundColor: ColorManager.orangeYellow,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsManager.sold),
            ),
          ),
        ),
      ),
    );
  }
}
