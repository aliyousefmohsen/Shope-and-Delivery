import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/utils/style_maneger.dart';

class TextFieldCard extends StatelessWidget {
  final String title;

  UnderlineInputBorder underLineStyle() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1, // عرض الخط الأسفل الحقل النصي
        color: Color(0xffE9EAF4),
      ),
    );
  }

  const TextFieldCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p20, right: AppPadding.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: StylesManager.body02Regular14.copyWith(
              color: const Color(0xff8891A5),
            ),
          ),
          TextField(
            // scrollPadding: EdgeInsets.zero,
            decoration: InputDecoration(
                enabledBorder: underLineStyle(),
                focusedBorder: underLineStyle()),
          ),
        ],
      ),
    );
  }
}
