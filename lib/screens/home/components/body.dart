import 'package:flutter/material.dart';
import 'package:shop778/size-config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SectionTitle(
              press: () {},
              text: "Special for you",
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            SpecialOffers()
          ],
        ),
      ),
    );
  }
}
