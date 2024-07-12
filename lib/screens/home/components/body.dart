import 'package:flutter/material.dart';
import 'package:shop778/models/product.dart';
import 'package:shop778/screens/home/components/section_title.dart';
import 'package:shop778/size-config.dart';

import '../../../components/product_card.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(30)),
          DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Categories(),
          SizedBox(height: getProportionateScreenWidth(30)),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(30)),
          SectionTitle(text: "Popular Product", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                    product: demoProducts[index],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

