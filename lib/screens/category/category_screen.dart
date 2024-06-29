import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/category/widget/grid_view.dart';
import 'package:test2/widgets/category%20and_%20sub_category_list_view.dart';

import 'widget/app_bar_sliver.dart';
import 'widget/list_view_vertical.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});
  bool flag = true;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const AppBarSliver(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppPadding.p10),
              child: IconButton(
                  onPressed: () {
                    widget.flag = !widget.flag;
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.change_circle_rounded,
                    color: ColorManager.darkBlue,
                    size: AppSize.s30,
                  )),
            ),
          ),
          widget.flag
              ? const SliverToBoxAdapter(child: SizedBox())
              : CategoryListView(),
          widget.flag
              ? const GridViewinCategoryScreen()
              : const ListViewVertical(),
        ],
      ),
    );
  }
}
