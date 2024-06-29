import 'package:flutter/material.dart';

import '../../../../models/product_model.dart';
import '../../../../widgets/back_icon.dart';
import '../../../../widgets/bag_counter_black_icon.dart';
import '../../../core/utils/values_manager.dart';

class AppBarThree extends StatelessWidget {
  const AppBarThree({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: AppPadding.p25,
        left: AppPadding.p24,
        right: AppPadding.p12,
      ),
      child: Row(
        children: [
          BackIcon(),
          Spacer(flex: 1),
          Spacer(flex: 3),
          BagCounterBlackIcon()
        ],
      ),
    );
  }
}
