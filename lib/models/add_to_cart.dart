import 'package:gp/utilities/assets.dart';

class AddToCartModel {
  final int id;
  final int productId;
  final String description;
  final String title;
  final int price;
  final int? quantity;

  final String image;
  final String size;

  AddToCartModel({
    required this.id,
    required this.description,
    required this.title,
    required this.quantity,

    required this.price,
    required this.productId,
    required this.image,
    required this.size,

  });
}

List<AddToCartModel> cartItem = [
  AddToCartModel(
    id: 1,
    productId: 3,
    title: "Piece one",
    price: 234,
    size: 'X',
    quantity: 3,
    description: dummyText,
    image: appAssets.product_1,
  ),
  AddToCartModel(
    id: 4,
    productId: 2,
    title: "Piece five",
    description: dummyText,
    price: 234,
    quantity: 4,
    size: 'M',
    image: appAssets.product_4,
  ),
  AddToCartModel(
    id: 5,
    productId: 8,
    title: "Piece six",
    description: dummyText,
    price: 234,
    size: 'X',
    quantity: 8,
    image: appAssets.product_5,
  ),
  AddToCartModel(
    id: 6,
    productId: 9,
    title: "Piece seven",
    price: 234,
    description: dummyText,
    size: 'XL',
    quantity: 4,
    image: appAssets.product_6,
  ),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
