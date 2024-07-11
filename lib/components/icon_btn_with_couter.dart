import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size-config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key,
    required this.svrSrc,
    this.numOfItems = 0,
    required this.press,
  });
  final String? svrSrc;
  final int? numOfItems;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(children: [
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          height: getProportionateScreenWidth(46),
          width: getProportionateScreenWidth(46),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svrSrc!),
        ),
        if (numOfItems != 0)
          Positioned(
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
