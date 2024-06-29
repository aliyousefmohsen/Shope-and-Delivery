import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/const/const.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/screens/add%20card/add_card_screen.dart';
import 'package:test2/screens/cart/widgets/app_bar_cart.dart';
import 'package:test2/screens/checkout/widgets/container_address.dart';
import 'package:test2/widgets/width_button.dart';
import 'widgets/add_new_address_with_awesum_dialog.dart';
import 'widgets/delivery_address.dart';
import 'widgets/list_view_addresses.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: AppPadding.p24),
                    child: AppBarCart(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: DeliverAdrees(),
                ),
                ListViewAdresses(),

                SliverToBoxAdapter(
                  child: SizedBox(height: AppSize.s35),
                ),
                SliverToBoxAdapter(child: AddAddressWithAwesumDialog()),

                /// space
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppMargin.m24,
            ),
            child: WidthButton(
              text: StringManager.addCard,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const AddCardScreen();
                  },
                ));
              },
            ),
          ),
          const SizedBox(height: AppSize.s25),
        ],
      )),
    );
  }
}
