import 'package:flutter/material.dart';
import 'package:test2/models/sold_model.dart';

import '../../../core/utils/values_manager.dart';
import 'sold_item_list_view.dart';

class SoldListView extends StatelessWidget {
  const SoldListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.16,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          scrollDirection: Axis.horizontal,
          itemCount: solds.length,
          itemBuilder: (context, index) {
            return SoldItemListView(
              soldModel: solds[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: AppSize.s18,
            );
          },
        ),
      ),
    );
  }
}
