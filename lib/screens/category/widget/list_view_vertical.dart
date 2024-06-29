import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../../core/const/const.dart';
import 'item_in_list_view_vertical.dart';

class ListViewVertical extends StatelessWidget {
  const ListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p24, bottom: AppPadding.p24),
          child: ItemInListViewVertical(
            categoryModel: categoreis[index],
            index: index,
          ),
        );
      },
      itemCount: categoreis.length,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 1,
        );
      },
    );
  }
}
