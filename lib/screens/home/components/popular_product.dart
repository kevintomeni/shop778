import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop778/screens/details/details_screen.dart';

import '../../../components/product_card.dart';
import '../../../models/product.dart';
import '../../../size-config.dart';
import 'section_title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[0].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(
                          product: demoProducts[index],
                        ),
                      ),
                    );
                  return SizedBox.shrink();
                },
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
