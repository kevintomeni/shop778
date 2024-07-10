import 'package:flutter/material.dart';
import 'package:shop778/size-config.dart';

import '../../../components/social_card.dart';
import '../../../constants.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.02,
              ), //2% of total height
              Text('Register Account', style: headlingStyle),
              Text(
                'Complete your detail or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ), //8% of total height
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-color-svgrepo-com.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-svgrepo-com.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter-color-svgrepo-com.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing your confirm that you agree \nwith our terms and conditions ",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
