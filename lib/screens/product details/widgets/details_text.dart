import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../models/product_model.dart';

class DetailsText extends StatelessWidget {
  ProductModel productModel;
  DetailsText({
    super.key,
    required this.productModel,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppPadding.p33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.details,
            style: StylesManager.body2Regular16,
          ),
          const SizedBox(height: AppSize.s6),
          Text(
            productModel.details,
            style: StylesManager.body2Regular16
                .copyWith(color: const Color(0xff8891A5)),
          ),
        ],
      ),
    );
  }
}
