// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/const/const.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../widgets/back_icon.dart';

class AppBarCart extends StatelessWidget {
  final String? title;
  const AppBarCart({
    super.key,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSize.s25,
        //left: 24,
        bottom: AppSize.s48,
      ),
      child: Row(
        children: [
          const BackIcon(),
          const SizedBox(width: AppSize.s21),
          title == null
              ? Text(
                  '${StringManager.shoppingCart} (${cartItems.length})',
                  style: StylesManager.body2Regular16,
                )
              : Text(
                  '$title',
                  style: StylesManager.body2Regular16,
                ),
        ],
      ),
    );
  }
}
