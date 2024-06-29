import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';

import '../../../core/utils/values_manager.dart';

class IncreaseIcon extends StatelessWidget {
  const IncreaseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorManager.black10.withOpacity(0.4),
      radius: AppSize.s18,
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: AppSize.s18,
          )),
    );
  }
}
