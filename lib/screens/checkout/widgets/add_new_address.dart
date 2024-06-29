import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/style_maneger.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s80,
      width: MediaQuery.of(context).size.width * 0.82,
      child: DottedBorder(
        color: Colors.black26.withOpacity(0.02), // لون الحدود
        strokeWidth: 2, // سماكة الحدود
        dashPattern: const [
          AppSize.s15,
          AppSize.s10
        ], // نمط النقط (12 نقاط فاصلة، 3 نقاط فارغة)
        borderType: BorderType.RRect, // نوع الحدود (مستطيل مستدير)
        radius: const Radius.circular(AppSize.s20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsManager.circleAdd),
              const SizedBox(width: AppSize.s8),
              Text(
                StringManager.addNewAddress,
                style: StylesManager.body2Regular16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
