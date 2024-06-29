// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/product_model.dart';

import 'package:test2/screens/product%20details/widgets/app_bar_two.dart';

import 'page_two_details.dart';
import 'slider_product_details.dart';
import 'thin_chois_top_page_two.dart';

class PageDetailsTow extends StatelessWidget {
  ProductModel productModel;

  PageDetailsTow({
    super.key,
    required this.productModel,
  });

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        // shrinkWrap: true,
        children: [
          AppBarTwo(productModel: productModel),
          ThinChoiseTop(productModel: productModel),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p20, right: AppPadding.p35),
            child: SizedBox(
              //  height: MediaQuery.of(context).size.height * 0.35,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: SliderProductDetails(
                      productModel: productModel,
                      pageController: pageController,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: AppPadding.p110),
                    width: AppSize.s56,
                    height: 135,
                    decoration: BoxDecoration(
                        color: ColorManager.black20.withOpacity(0.1),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(AppSize.s20),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(AssetsManager.heart)),
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(AssetsManager.moreSquare)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: AppSize.s440,
            child: PageTwoDetails(productModel: productModel),
          ),
        ],
      ),
    );
  }
}

  //   width: MediaQuery.of(context).size.width * 0.4,