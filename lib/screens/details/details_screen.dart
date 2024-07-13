import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/rounded_icon_btn.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute<T>.of(context).settings.arguments;
    return Scaffold(
      // By default our background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
        child: Row(),
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    required super.preferredSize,
    required super.child,
    required this.rating,
  });
  final double rating;
  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconBtn(
            iconData: Icons.arrow_back_ios_new,
            press: () => Navigator.pop(context),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  "assets/icons/star-svgrepo-com.svg",
                  color: Colors.yellow,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// But we also need to pass our product to our details screen
// And we name route sa we need to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
