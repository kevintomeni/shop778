import 'package:flutter/material.dart';
import 'package:shop778/screens/splash/splash_screen.dart';

import 'screens/sign_in/sign_in_screen.dart';

//we use name route
//All our routes will be Avialable
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen()
};
