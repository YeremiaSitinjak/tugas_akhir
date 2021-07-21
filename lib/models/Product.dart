import 'package:flutter/material.dart';

class Product {
  final String image, title, description, size;
  final int price, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "RedMI Note 4",
      price: 1500000,
      size: "4/64",
      description: dummyText,
      image: "assets/images/hp_1.png",
      color: Color(0xFF616161)),
  Product(
      id: 2,
      title: "MI 11 Pro 5G",
      price: 2000000,
      size: "3/16",
      description: dummyText,
      image: "assets/images/hp_2.png",
      color: Color(0xFF9ed6de)),
  Product(
      id: 3,
      title: "RedMI 9T",
      price: 3500000,
      size: "3/16",
      description: dummyText,
      image: "assets/images/hp_3.png",
      color: Color(0xFFf57e1d)),
  Product(
      id: 4,
      title: "RedMI Note 10",
      price: 950000,
      size: "6/128",
      description: dummyText,
      image: "assets/images/hp_4.png",
      color: Color(0xFFd164cd)),
  Product(
      id: 5,
      title: "RedMI K40 Pro",
      price: 6000000,
      size: "6/512",
      description: dummyText,
      image: "assets/images/hp_5.png",
      color: Color(0xFFff47b2)),
  Product(
    id: 6,
    title: "RedMI K30 Zoom",
    price: 4300000,
    size: "4/64",
    description: dummyText,
    image: "assets/images/hp_6.png",
    color: Color(0xFF04ba93),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
