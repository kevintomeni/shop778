import 'package:flutter/material.dart';
import 'package:shop778/components/default_button.dart';
import 'package:shop778/screens/home/home_screen.dart';
import 'package:shop778/size-config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: SizeConfig.screenHeight! * 0.08,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(100),
        ),
        child: Image.asset(
          "assets/images/success1.gif",
          height: SizeConfig.screenHeight! * 0.3,
        ),
      ),
      SizedBox(
        height: SizeConfig.screenHeight! * 0.03,
      ),
      Text(
        "Login Success",
        style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      Spacer(),
      SizedBox(
        width: SizeConfig.screenWidth! * 0.6,
        child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }),
      ),
      Spacer(),
    ]);
  }
}
