class ItemModel {
  final String image;
  final String title;
  final String price;
  String? oldPrice;

  ItemModel(
      {required this.title,
      required this.image,
      required this.price,
      this.oldPrice});
}
