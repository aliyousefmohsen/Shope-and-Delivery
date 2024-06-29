import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/screens/grocery_home/widgets/list_view_recomended.dart';
import 'package:test2/screens/grocery_home/widgets/sold_list_view.dart';

import '../../core/utils/values_manager.dart';

import 'widgets/custom_sliver_app_bar.dart';
import 'widgets/deals_grid_view.dart';
import 'widgets/save_mony_and_times.dart';

// ignore: must_be_immutable
class GroceryHome extends StatefulWidget {
  GroceryHome({super.key});
  bool flag = false;
  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          CustomSliverAppBar(height: height),
          const SliverToBoxAdapter(child: SizedBox(height: AppSize.s26)),
          !widget.flag ? const SoldListView() : const SavedMonyAndTime(),
          const SliverToBoxAdapter(child: SizedBox(height: AppSize.s26)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p20, bottom: AppPadding.p5),
              child: Row(
                children: [
                  !widget.flag
                      ? Text(
                          StringManager.groceryHomeRecommended,
                          style: StylesManager.h1Regular30,
                        )
                      : Text(
                          StringManager.groceryHomeDealsOnFruitsAndTea,
                          style: StylesManager.h3Bold20,
                        ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p12),
                    child: IconButton(
                        onPressed: () {
                          widget.flag = !widget.flag;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.change_circle_sharp,
                          color: ColorManager.orangeYellow,
                          size: AppSize.s30,
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: AppSize.s16,
            ),
          ),
          widget.flag ? DealsGridView() : const ListViewRecomended(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: AppSize.s20,
            ),
          ),
        ],
      ),
    );
  }
}
