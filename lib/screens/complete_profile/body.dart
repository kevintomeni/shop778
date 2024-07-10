import 'package:flutter/material.dart';
import 'package:shop778/constants.dart';
import 'package:shop778/size-config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.02), // 2%
            Text(
              "Complete Profile",
              style: headlingStyle,
            ),
            Text("Complete your details or continue \nwith social media",
                textAlign: TextAlign.center),
            SizedBox(height: SizeConfig.screenHeight! * 0.05), // 5%
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "By continuing your confirm that you agree\nwith our Term and condition",
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}
