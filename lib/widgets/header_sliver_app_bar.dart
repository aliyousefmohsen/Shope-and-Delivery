// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/widgets/search_icon_white.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/string_manager.dart';
import '../core/utils/style_maneger.dart';
import 'bag_counter_white_icon.dart';

class HeaderSliverAppBar extends StatelessWidget {
  final bool? hasSearchIcon;
  const HeaderSliverAppBar({
    super.key,
    this.hasSearchIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(StringManager.heyHalal,
            style: StylesManager.h4Medium18
                .copyWith(color: ColorManager.whiteColor)),
        const Spacer(
          flex: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.p7),
          child: hasSearchIcon == null
              ? const SizedBox()
              : const SearchIconWhite(),
        ),
        const Spacer(),
        const BagCounterWhiteIcon()
      ],
    );
  }
}
