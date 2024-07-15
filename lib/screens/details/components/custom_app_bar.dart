import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_btn.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    required super.preferredSize,
    required super.child,
    required this.rating,
  });
  final double rating;
  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconBtn(
            iconData: Icons.arrow_back_ios_new,
            press: () => Navigator.pop(context),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  "assets/icons/star-svgrepo-com.svg",
                  color: Colors.yellow,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
