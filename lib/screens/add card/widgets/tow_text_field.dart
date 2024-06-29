import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'date_text_feild.dart';
import 'text_field_card.dart';

class TowTextField extends StatelessWidget {
  const TowTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: AppPadding.p20),
      child: Row(
        children: [
          Expanded(child: DateTextFeild()),
          SizedBox(width: AppSize.s35),
          Expanded(child: TextFieldCard(title: 'CVC')),
        ],
      ),
    );
  }
}
