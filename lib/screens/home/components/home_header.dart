import 'package:flutter/material.dart';

import '../../../components/icon_btn_with_couter.dart';
import '../../../size-config.dart';
import '../../cart/cart_screen.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svrSrc: "assets/icons/cart-svgrepo-com.svg",
            press: ()=> Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svrSrc: "assets/icons/bell-svgrepo-com.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
