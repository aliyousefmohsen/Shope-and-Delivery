class CategoryModel {
  final String image;
  final String name;
  final List<String> subCategores;
  final String from;
  final String startFrom;

  CategoryModel(
      {required this.image,
      required this.name,
      required this.subCategores,
      required this.from,
      required this.startFrom});
}
