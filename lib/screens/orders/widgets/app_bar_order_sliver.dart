import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/string_manager.dart';
import '../../cart/widgets/app_bar_cart.dart';

class AppBarOrderSliver extends StatelessWidget {
  const AppBarOrderSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      automaticallyImplyLeading: false, // اخفاء ذر الرجوع الافتراضي
      backgroundColor: Colors.white,
      pinned: true,
      title: Padding(
        padding: EdgeInsets.only(top: AppPadding.p22),
        child: AppBarCart(
          title: StringManager.orders,
        ),
      ),
    );
  }
}
