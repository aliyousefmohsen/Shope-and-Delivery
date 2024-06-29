import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';

class DeliverAdrees extends StatelessWidget {
  const DeliverAdrees({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p24),
      child: Row(
        children: [
          Text(
            StringManager.deliveryAddress,
            style: StylesManager.body2Regular16,
          ),
        ],
      ),
    );
  }
}
