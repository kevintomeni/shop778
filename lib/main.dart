import 'package:flutter/material.dart';
import 'package:shop778/theme.dart';

import 'routes.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      //we use routeName so that we dont need to remenber the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

