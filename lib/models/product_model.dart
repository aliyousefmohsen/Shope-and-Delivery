class ProductModel {
  final List<String> images;
  final String name;
  final String price;
  final String details;
  final String from;
  final bool discount;
  final String catName;
  int? requiredCount;
  Status status;

  ProductModel({
    required this.images,
    required this.name,
    required this.price,
    required this.details,
    required this.from,
    required this.discount,
    required this.catName,
    this.status = Status.unknown,
    this.requiredCount = 1,
  });
}

enum Status {
  success,
  onRoad,
  unknown, // الحالة الافتراضية
}
