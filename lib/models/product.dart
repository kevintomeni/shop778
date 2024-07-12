import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.colors,
    required this.title,
    required this.images,
    this.rating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
    required this.price,
    required this.description,
  });
}

// Our demo Product
List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/pair_homme3.jpeg",
      "assets/images/pair_homme2.jpeg",
      "assets/images/pair_homme1.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF8360BB),
      Color(0xFFDECB9C),
      Colors.white,
      Colors.black,
    ],
    title: "Paire Homme",
    price: 64.90,
    description:
        "Finaiser votre assortie monsieur pour des dinés et soirées \nl'élegance et le charisme son dans vos pieds",
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/polo_polo.jpeg",
      "assets/images/polo_boss.jpeg",
      'assets/images/polo_moncleray.jpeg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF8360BB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Polo Homme",
    description: "Polo homme 100% coton ",
    price: 45.51,
    rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/chemise_lacoste_homme_blanche.jpeg",
      "assets/images/chemise_lacoste_homme_noir.jpeg",
      "assets/images/chemise_lacoste_homme_rose.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF8360BB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Chemise Homme",
    description: "Chemise homme lacoste 100% coton",
    price: 80.51,
    rating: 4.8,
    isFavorite: true,
    isPopular: false,
  ),
  Product(
    images: [
      "assets/images/nike_blanche.jpeg",
      "assets/images/nike_noir.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF8360BB),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Protege AirPord",
    description:
        "Protege vos different AirPord  avec cet accessoire vous donnant encore plus de charisme",
    price: 26.54,
    rating: 4.1,
    isFavorite: false,
    isPopular: false,
  ),
];
