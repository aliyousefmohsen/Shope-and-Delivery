import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/string_manager.dart';

class SoldModel {
  final String image;
  final String amount;
  final String extraInfo;

  SoldModel({
    required this.image,
    required this.amount,
    required this.extraInfo,
  });
}

List<SoldModel> solds = [
  SoldModel(
    image: AssetsManager.orange,
    amount: '50',
    extraInfo: StringManager.onFirstThreeOrders,
  ),
  SoldModel(
    image: AssetsManager.packageApple,
    amount: '30',
    extraInfo: StringManager.onFirstTwoOrders,
  ),
  SoldModel(
    image: AssetsManager.packageFruit,
    amount: '20',
    extraInfo: StringManager.onFirstOrder,
  )
];
