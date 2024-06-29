import 'package:flutter/material.dart';

import '../../../core/utils/string_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/product_model.dart';
import 'evaluation_product.dart';

class ThinChoiseTop extends StatelessWidget {
  ThinChoiseTop({
    super.key,
    required this.productModel,
  });

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p20, top: AppPadding.p10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: RichText(
              text: TextSpan(children: [
                const TextSpan(
                    text: StringManager.thinChoise,
                    style: TextStyle(
                        fontSize: AppSize.s50,
                        fontWeight: FontWeight.w300,
                        color: Colors.black)),
                TextSpan(
                  text: ' ${StringManager.top} ${productModel.name}',
                  style: const TextStyle(
                      fontSize: AppSize.s50,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ]),
            ),
          ),
          const SizedBox(height: AppSize.s14),
          const EvalutionProduct(),
        ],
      ),
    );
  }
}
