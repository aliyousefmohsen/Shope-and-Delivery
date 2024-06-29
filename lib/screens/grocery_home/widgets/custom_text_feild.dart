import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
  });
  final borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSize.s28),
    borderSide: BorderSide.none,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: AppSize.s35, bottom: AppSize.s30),
        child: TextField(
          style: const TextStyle(
            color: Colors.white, // لون النص المدخل
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: AppMargin.m28,
                  top: AppMargin.m16,
                  bottom: AppMargin.m16,
                  right: AppMargin.m16),
              child: SvgPicture.asset(
                AssetsManager.iconSearch,
              ),
            ),
            hintText: StringManager.hintText,
            hintStyle: StylesManager.body02Regular14
                .copyWith(color: ColorManager.blackHintText),
            contentPadding:
                const EdgeInsets.symmetric(vertical: AppPadding.p16),
            border: InputBorder
                .none, // إزالة الخط السفلي الافتراضي من جميع حالات التيكست فيلد بما فيها الإنابلد و الفوكس بوردر
            enabledBorder: borderStyle,
            focusedBorder: borderStyle,
            filled: true, // بدون وضع ترو لن يتم تفعيل خاصية الفيل كلر
            fillColor: ColorManager.deepBlue,
          ),
        ));
  }
}
