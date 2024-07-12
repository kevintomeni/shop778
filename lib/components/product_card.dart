import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop778/constants.dart';

import '../models/product.dart';
import '../size-config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
  });
  final double width, aspectRetion;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRetion,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(6)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(01),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  product.images[1],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              product.title,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenHeight(28),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(01),
                      shape: BoxShape.circle,
                    ),
                    child: product.isFavorite
                        ? SvgPicture.asset(
                            "assets/icons/heart-3.svg",
                            color: Colors.red,
                          )
                        : SvgPicture.asset(
                            "assets/icons/heart-svgrepo-com.svg",
                          ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
