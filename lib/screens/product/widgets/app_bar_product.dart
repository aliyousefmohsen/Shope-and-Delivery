import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/style_maneger.dart';
import '../../../widgets/back_icon.dart';
import '../../../widgets/bag_counter_black_icon.dart';
import '../../../widgets/search_icon_black.dart';

class AppBarProduct extends StatelessWidget {
  const AppBarProduct({
    super.key,
    required this.subCategory,
  });

  final String subCategory;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p25,
        left: AppPadding.p24,
        right: AppPadding.p12,
        bottom: AppPadding.p22,
      ),
      child: Row(
        children: [
          const BackIcon(),
          const Spacer(
            flex: 1,
          ),
          Text(
            subCategory,
            style: StylesManager.body2Regular16,
          ),
          const Spacer(
            flex: 3,
          ),
          const SearchIconBlack(),
          const Spacer(
            flex: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: AppPadding.p7),
            child: BagCounterBlackIcon(),
          ),
        ],
      ),
    ));
  }
}
