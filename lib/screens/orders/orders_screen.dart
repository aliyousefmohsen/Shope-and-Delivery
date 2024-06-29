import 'package:flutter/material.dart';
import 'package:test2/core/utils/values_manager.dart';

import '../../core/utils/color_manager.dart';
import 'widgets/all_orders_sliver_list.dart';
import 'widgets/app_bar_order_sliver.dart';
import 'widgets/current_and_past_buttons.dart';
import 'widgets/on_way_sliver_list.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({super.key});
  bool flag = true;
  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppBarOrderSliver(),
            SliverToBoxAdapter(
              child: IconButton(
                  onPressed: () {
                    widget.flag = !widget.flag;
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.change_circle_rounded,
                    color: ColorManager.orangeYellow,
                    size: AppSize.s30,
                  )),
            ),
            widget.flag
                ? const SliverToBoxAdapter(child: CurrentAndPastButtons())
                : const SliverToBoxAdapter(child: SizedBox()),
            widget.flag ? const OnWaySliveList() : AllOrdersSliverList()
          ],
        ),
      ),
    );
  }
}
