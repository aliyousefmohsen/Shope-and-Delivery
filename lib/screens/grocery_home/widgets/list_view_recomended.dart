import 'package:flutter/material.dart';

import 'package:test2/screens/grocery_home/widgets/recomende_item_list_view.dart';

import '../../../core/const/const.dart';
import '../../../core/utils/values_manager.dart';

class ListViewRecomended extends StatelessWidget {
  const ListViewRecomended({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return RecomendedItemListView(
              productModel: products[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: AppSize.s20,
            );
          },
        ),
      ),
    );
  }
}
