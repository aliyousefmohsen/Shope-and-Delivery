// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test2/widgets/category_button.dart';

import '../core/const/const.dart';
import '../core/utils/values_manager.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  List<String>? subCategory;
  CategoryListView({
    super.key,
    this.subCategory,
  });
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: AppSize.s80,
        child: ListView.separated(
            padding: const EdgeInsets.only(
                left: AppPadding.p24,
                right: AppPadding.p24,
                top: AppPadding.p8,
                bottom: AppPadding.p25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryButton(
                  categoryName: subCategory != null
                      ? subCategory![index]
                      : categoreis[index].name);
            },
            separatorBuilder: (_, __) => const SizedBox(
                  width: AppSize.s10,
                ),
            itemCount:
                subCategory != null ? subCategory!.length : categoreis.length),
      ),
    );
  }
}
