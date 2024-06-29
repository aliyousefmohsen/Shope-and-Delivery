import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/string_manager.dart';
import 'custom_button.dart';

class CurrentAndPastButtons extends StatelessWidget {
  const CurrentAndPastButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p22, right: AppPadding.p22, bottom: AppPadding.p50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: CustomButton(title: StringManager.current)),
          const SizedBox(width: AppSize.s8),
          Expanded(child: CustomButton(title: StringManager.past)),
        ],
      ),
    );
  }
}
