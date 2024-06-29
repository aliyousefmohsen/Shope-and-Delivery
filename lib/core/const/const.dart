// Cart Items
import 'package:test2/models/address_model.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';
import '../utils/assets_manager.dart';
import '../utils/string_manager.dart';

// cartItems List
List<ProductModel> cartItems = [];
//onRoadOrders List
List<ProductModel> onRoadOrders = [];
// allOrders List
List<ProductModel> allOrders = [];
// adressesList
List<AddressModel> adressesList = [
  AddressModel(
    place: StringManager.home,
    detailsAdress: StringManager.greenWay,
  ),
  AddressModel(
    place: StringManager.office,
    detailsAdress: StringManager.medicalRoad,
  ),
];

// Gategories List
List<CategoryModel> categoreis = [
  CategoryModel(
    image: AssetsManager.fishCategory2,
    name: 'Fishes',
    from: 'Fresh from sea',
    subCategores: ['Popular', 'Low Prices', 'Small Fishes', 'Big Fishes'],
    startFrom: '13',
  ),
  CategoryModel(
    image: AssetsManager.meats,
    name: 'Meats',
    from: 'Organic',
    subCategores: [],
    startFrom: '18',
  ),
  CategoryModel(
    image: AssetsManager.fruits,
    name: 'Fruits',
    from: 'Fresh & Organic',
    subCategores: [],
    startFrom: '24',
  ),
  CategoryModel(
    image: AssetsManager.vegetables,
    name: 'Vegetables',
    from: 'Organic',
    subCategores: [],
    startFrom: '8',
  ),
  CategoryModel(
    image: AssetsManager.vegetables,
    name: 'Vegetables',
    from: 'Organic',
    subCategores: [],
    startFrom: '38',
  ),
  CategoryModel(
    image: AssetsManager.vegetables,
    name: 'Vegetables',
    from: 'Organic',
    subCategores: [],
    startFrom: '10',
  ),
  CategoryModel(
    image: AssetsManager.meats,
    name: 'Meats',
    from: 'Organic',
    subCategores: [],
    startFrom: '27',
  ),
  CategoryModel(
    image: AssetsManager.fruits,
    name: 'Fruits',
    from: 'Fresh & Organic',
    subCategores: [],
    startFrom: '29',
  ),
];

// Products List
List<ProductModel> products = [
  ProductModel(
    images: [AssetsManager.apple2, AssetsManager.apple3, AssetsManager.apple],
    name: StringManager.apple,
    price: '15',
    details: StringManager.productDetails,
    from: StringManager.fresh,
    discount: true,
    catName: StringManager.fruits,
    status: Status.unknown,
  ),
  ProductModel(
    images: [AssetsManager.meat2, AssetsManager.meat3, AssetsManager.meats],
    name: StringManager.halalMeats,
    price: '45',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.meats,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.orange3,
      AssetsManager.orange2,
      AssetsManager.orange
    ],
    name: StringManager.orange,
    price: '8',
    details: StringManager.productDetails,
    from: StringManager.fresh,
    discount: false,
    catName: StringManager.fruits,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.banana,
      AssetsManager.banan3,
      AssetsManager.banan2,
    ],
    name: StringManager.bananas,
    price: '23',
    details: StringManager.productDetails,
    from: StringManager.organic,
    discount: false,
    catName: StringManager.fruits,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.greenTea,
      AssetsManager.tea_2,
      AssetsManager.tea_3,
    ],
    name: StringManager.greenTea,
    price: '28',
    details: StringManager.productDetails,
    from: StringManager.organic,
    discount: false,
    catName: StringManager.drinks,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.freshLemon,
      AssetsManager.lemon_2,
      AssetsManager.lemon_3,
    ],
    name: StringManager.freshLemon,
    price: '12',
    details: StringManager.productDetails,
    from: StringManager.organic,
    discount: false,
    catName: StringManager.fruits,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.strawberries_2,
      AssetsManager.strawberries_1,
      AssetsManager.strawberries_3,
    ],
    name: StringManager.strawberries,
    price: '37',
    details: StringManager.productDetails,
    from: StringManager.organic,
    discount: false,
    catName: StringManager.fruits,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish6,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.bigSmallFish,
    price: '36',
    details: StringManager.productDetails,
    from: StringManager.freshFromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish1,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.fish,
    price: '11',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish2,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.clownTang,
    price: '31',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish4,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.fish,
    price: '16',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish5,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.clownFish,
    price: '39',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
  ProductModel(
    images: [
      AssetsManager.fish3,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.goldFish,
    price: '75',
    details: StringManager.productDetails,
    from: StringManager.freshFromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.unknown,
  ),
];

//successOrders
List<ProductModel> successOrders = [
  ProductModel(
    images: [
      AssetsManager.fish2,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.clownTang,
    price: '31',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.success,
  ),
  ProductModel(
    images: [
      AssetsManager.fish4,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.fish,
    price: '16',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.success,
  ),
  ProductModel(
    images: [
      AssetsManager.fish5,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.clownFish,
    price: '39',
    details: StringManager.productDetails,
    from: StringManager.fromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.success,
  ),
  ProductModel(
    images: [
      AssetsManager.fish3,
      AssetsManager.fishEating,
      AssetsManager.fishMeat,
    ],
    name: StringManager.goldFish,
    price: '75',
    details: StringManager.productDetails,
    from: StringManager.freshFromSea,
    discount: false,
    catName: StringManager.fishes,
    status: Status.success,
  ),
];
