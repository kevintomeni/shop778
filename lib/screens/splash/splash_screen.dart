import 'package:flutter/material.dart';
import 'package:shop778/screens/splash/components/body.dart';

import '../../size-config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/Splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
