import 'package:flutter/material.dart';
import 'package:shop778/constants.dart';
import 'package:shop778/size-config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05, //5%
              ),
              Text(
                "OPT Verification",
                style: headlingStyle,
              ),
              Text("We sent your code to +237 695 *** 67"),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.15, //15%
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.06, //6%
              ),
              GestureDetector(
                onTap: () {
                  // resend your OTP code
                },
                child: Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expires in "), //because we allow user 30s
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) => Text(
                  "00:${value.toInt()}",
                  style: TextStyle(color: Colors.red),
                ))
      ],
    );
  }
}
