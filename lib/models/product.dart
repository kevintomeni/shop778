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
      "assets/images/pair_homme2.jpeg",
      "assets/images/pair_homme3.jpeg",
      "assets/images/pair_homme1.jpeg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
      Colors.white,
    ],
    title: "Paire Homme",
    price: 64.90,
    description:
        "Notre collection de Paires pour homme est une selection irrésisteble d'article qui passent du formel au décontracté",
    rating: 4.4,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/polo_boss.jpeg",
      "assets/images/polo_polo.jpeg",
      'assets/images/polo_moncleray.jpeg',
    ],
    colors: [
      Colors.green,
      Colors.black,
      Colors.white,
    ],
    title: "Polo Homme",
    description:
        "C'est la piece indispensable du vestimentaire masculin, avec sa maille piquée et ses détails brodés ou imprimés qui nous sont si chers. découvrez nos polo... ",
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
      "assets/images/chemise_lacoste_homme_grise.jpeg",
      "assets/images/chemise_lacoste_homme_orange.jpeg",
    ],
    colors: [
      Colors.white,
      Colors.black,
      Colors.pink,
      Colors.grey,
    ],
    title: "Chemise Lacoste Homme",
    description:
        "Un classique des gardes-robes masculines, les chemises Lacoste sont synonyme de style durable - endossé par le crocodile. Coton pinpoint, denim, sergé ou velours côtelé, tous les tissus sont gagnats",
    price: 80.51,
    rating: 4.8,
    isFavorite: true,
    isPopular: false,
  ),
  Product(
    images: [
      "assets/images/nike_blanche.jpeg",
      "assets/images/nike_dunk_vert1.jpeg",
      "assets/images/Nike_montante.jpeg",
      "assets/images/nike_rose.jpeg",
      "assets/images/nike_secai.jpeg",
    ],
    colors: [
      Colors.white,
      Colors.black,
      Colors.green,
      Colors.pink,
    ],
    title: "Chaussure Nike",
    description:
        "Incontemporel de la garde-robe homme Notre collection de Paires pour homme est une selection irrésisteble d'article qui passent du formel au décontracté",
    price: 26.54,
    rating: 4.1,
    isFavorite: false,
    isPopular: false,
  ),
  Product(
    images: [
      "assets/images/protege_Airpord1.jpeg",
      "assets/images/protege_Airpord2.jpeg",
      "assets/images/protege_Airpord3.jpeg",
      "assets/images/protege_Airpord5.jpeg",
    ],
    colors: [
      Color(0xFF8360BB),
      Colors.black,
      Colors.pink,
      Colors.white,
    ],
    title: "Protege AirPord",
    description:
        "Protege vos different AirPord  avec cet accessoire vous donnant encore plus de charisme",
    price: 10.54,
    rating: 4.1,
    isFavorite: false,
    isPopular: false,
  ),
];
