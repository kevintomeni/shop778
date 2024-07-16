import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/cart.dart';
import '../../../size-config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: getProportionateScreenWidth(88),
        child: AspectRatio(
          aspectRatio: 0.88,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(cart.product.images[0]),
          ),
        ),
      ),
      SizedBox(width: getProportionateScreenWidth(20)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          cart.product.title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          maxLines: 2,
        ),
        SizedBox(height: 5),
        Text.rich(
          TextSpan(
            text: "\$${cart.product.price}",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                  text: " x${cart.numOfItems}",
                  style: TextStyle(
                    color: kTextColor,
                  )),
            ],
          ),
        ),
      ])
    ]);
  }
}