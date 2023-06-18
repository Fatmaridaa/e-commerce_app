import 'package:gp/utilities/assets.dart';
class Product {
  final String images;
  final String title;
  final String description;
  final String size;
  final int price;
  final int id;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}


List<Product> products = [
  Product(
    id: 1,
    title: "Piece one",
    price: 234,
    size: 'X',
    description: dummyText,
    images: appAssets.product_1,
  ),
  Product(
    id: 2,
    title: "Piece two",
    price: 234,
    size: 'L',
    description: dummyText,
    images: appAssets.product_2,
  ),
  Product(
    id: 3,
    title: "Piece three",
    price: 234,
    size: 'X',
    description: dummyText,
    images: appAssets.product_3,
  ),
  Product(
    id: 4,
    title: "Piece five",
    price: 234,
    size: 'X',
    description: dummyText,
    images: appAssets.product_4,
  ),
  Product(
    id: 5,
    title: "Piece six",
    price: 234,
    size: 'M',
    description: dummyText,
    images: appAssets.product_5,
  ),
  Product(
    id: 6,
    title: "Piece seven",
    price: 234,
    size: 'XL',
    description: dummyText,
    images: appAssets.product_6,
  ),
];


String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";