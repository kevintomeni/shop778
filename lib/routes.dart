import 'package:flutter/material.dart';
import 'package:shop778/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop778/screens/details/details_screen.dart';
import 'package:shop778/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop778/screens/home/home_screen.dart';
import 'package:shop778/screens/otp/otp_screen.dart';
import 'package:shop778/screens/splash/splash_screen.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/tuto/tuto_screen.dart';

//we use name route
//All our routes will be Avialable
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName:(context)=> DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context)=> ProfileScreen(),
  TutoScreen.routeName:(context)=>TutoScreen(),
};
