import 'package:flutter/material.dart';

import '../../models/cart.dart';
import 'components/body.dart';
import 'components/check_out_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: Center(
      child: Column(children: [
        Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "${demoCarts.length} items",
          style: Theme.of(context).textTheme.bodySmall,
        )
      ]),
    ));
  }
}
