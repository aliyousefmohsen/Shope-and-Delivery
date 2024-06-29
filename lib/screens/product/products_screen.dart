// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:test2/models/category_model.dart';
import 'package:test2/models/product_model.dart';
import 'package:test2/screens/product/grid_view_products.dart';
import 'package:test2/screens/product/widgets/app_bar_product.dart';
import 'package:test2/widgets/category%20and_%20sub_category_list_view.dart';

import '../../core/const/const.dart';

class ProductsScreen extends StatelessWidget {
  CategoryModel categoryModel;
  String appBarSubCategoryName;
  List<ProductModel> productsItems;

  List<String> categoryNames =
      categoreis.map((category) => category.name).toList();
  ProductsScreen({
    super.key,
    required this.categoryModel,
    required this.appBarSubCategoryName,
    required this.productsItems,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AppBarProduct(subCategory: appBarSubCategoryName),
            CategoryListView(
                subCategory: categoryModel.subCategores.isEmpty
                    ? categoryNames
                    : categoryModel.subCategores),
            GridViewProducts(
              productsItems: productsItems,
              categoryModel: categoryModel,
            ),
          ],
        ),
      ),
    );
  }
}
