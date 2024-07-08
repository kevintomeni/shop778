import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size-config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required this.text,
    required this.image,
    super.key,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'SympaShop778',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image(
          image: AssetImage(
            image,
          ),
          width: getProportionateScreenWidth(335),
          height: getProportionateScreenHeight(265),
        ),
      ],
    );
  }
}
