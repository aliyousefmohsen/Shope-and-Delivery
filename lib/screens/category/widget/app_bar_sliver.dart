import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';
import '../../../widgets/header_sliver_app_bar.dart';

class AppBarSliver extends StatelessWidget {
  const AppBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SliverAppBar(
        pinned:
            true, // منشان ما يختفي الأب بار كلو بس أعمل سكرول وإنما بضل الأب بار الطبيعي بس أعمل سكرول للأخر
        title: const HeaderSliverAppBar(
          hasSearchIcon: true,
        ),
        expandedHeight: height / 3.15,
        backgroundColor: ColorManager.darkBlue,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: height * 0.07),
            child: Padding(
              padding: const EdgeInsets.only(left: AppMargin.m20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Shop',
                        style: StylesManager.h1Regular30.copyWith(
                            fontSize: 50, color: ColorManager.whiteColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'By Category',
                        style: StylesManager.h1Regular30.copyWith(
                            fontSize: AppSize.s50,
                            color: ColorManager.whiteColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
