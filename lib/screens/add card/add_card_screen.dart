import 'package:flutter/material.dart';
import 'package:test2/core/utils/string_manager.dart';
import 'package:test2/core/utils/values_manager.dart';

import 'package:test2/screens/cart/widgets/app_bar_cart.dart';
import 'package:test2/screens/cart/widgets/fatora.dart';

import 'widgets/text_field_card.dart';
import 'widgets/tow_text_field.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: AppPadding.p24),
              child: AppBarCart(
                title: StringManager.addCard,
              ),
            ),
            TextFieldCard(
              title: StringManager.cardHolderName,
            ),
            SizedBox(height: AppSize.s31),
            TextFieldCard(
              title: StringManager.cardNumber,
            ),
            SizedBox(height: AppSize.s31),
            TowTextField(),
            Expanded(child: SizedBox()),
            Fatora(
              titleOfButton: StringManager.makePayment,
            ),
          ],
        ),
      ),
    );
  }
}
