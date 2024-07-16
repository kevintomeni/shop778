import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop778/constants.dart';

import '../../../components/default_button.dart';
import '../../../size-config.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(15),
      ),
      // we use this height only fr demo
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.5),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(
                      "assets/icons/receipt-alt-svgrepo-com.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                      text: "Total:\n",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "\$337,15",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                    width: getProportionateScreenWidth(140),
                    child: DefaultButton(
                      text: "Check Out",
                      press: () {},
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
