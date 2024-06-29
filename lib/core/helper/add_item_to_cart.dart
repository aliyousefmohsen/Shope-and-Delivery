import 'package:test2/models/product_model.dart';

import '../const/const.dart';

void addItemToCart(ProductModel productModel) {
  if (cartItems.isNotEmpty) {
    bool itemExists = false;
    for (var e in cartItems) {
      if (e.name == productModel.name) {
        e.requiredCount = e.requiredCount! + 1;
        itemExists = true;
        break;
      }
    }
    if (!itemExists) {
      cartItems.add(productModel);
    }
  } else {
    cartItems.add(productModel);
  }
}
