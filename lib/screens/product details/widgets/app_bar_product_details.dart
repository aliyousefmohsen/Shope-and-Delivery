import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';
import '../../../widgets/back_icon.dart';
import '../../../widgets/bag_counter_black_icon.dart';

class AppBarProductDetails extends StatelessWidget {
  const AppBarProductDetails({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p25,
        left: AppPadding.p24,
        right: AppPadding.p12,
        bottom: AppPadding.p22,
      ),
      child: Row(
        children: [
          const BackIcon(),
          const Spacer(flex: 1),
          Text(
            productModel.name,
            style: StylesManager.body2Regular16,
          ),
          const Spacer(flex: 3),
          const BagCounterBlackIcon()
        ],
      ),
    );
  }
}
