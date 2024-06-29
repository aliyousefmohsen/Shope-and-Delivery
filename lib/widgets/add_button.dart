import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../core/utils/color_manager.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: AppSize.s15,
      backgroundColor: ColorManager.darkBlue,
      child: Icon(
        Icons.add,
        color: ColorManager.whiteColor,
      ),
    );
  }
}
