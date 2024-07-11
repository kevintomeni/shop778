import 'package:flutter/material.dart';

import '../../../size-config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTitle(
        press: () {},
        text: "Special for you",
      ),
      SizedBox(height: getProportionateScreenWidth(20)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SpecialOfferCard(
              image: "assets/images/banner5.jpg",
              press: () {},
            ),
            SpecialOfferCard(
              image: "assets/images/banner1.jpg",
              press: () {},
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            )
          ],
        ),
      )
    ]);
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    this.image,
    required this.press,
  });
  final String? image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image!,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
