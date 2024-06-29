import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../core/utils/assets_manager.dart';

class SearchIconWhite extends StatelessWidget {
  const SearchIconWhite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        AssetsManager.iconSearch,
        width: AppSize.s22,
      ),
    );
  }
}
