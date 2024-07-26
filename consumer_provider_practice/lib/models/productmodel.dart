class ProductModel {
  String image;
  String productname;
  String price;
  bool isFavorite = false;
  int qauantity;

  ProductModel({
    required this.image,
    required this.productname,
    required this.price,
    required this.isFavorite,
    required this.qauantity

  });
}