import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';
import 'custom_text_feild.dart';
import 'delevery_info.dart';
import '../../../widgets/header_sliver_app_bar.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned:
            true, // منشان ما يختفي الأب بار كلو بس أعمل سكرول وإنما بضل الأب بار الطبيعي بس أعمل سكرول للأخر
        title: const HeaderSliverAppBar(),
        expandedHeight: height / 3.15,
        backgroundColor: ColorManager.darkBlue,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: height * 0.07),
            child: Column(
              children: [
                CustomTextField(),
                const DeliveryInfo(),
              ],
            ),
          ),
        ));
  }
}
