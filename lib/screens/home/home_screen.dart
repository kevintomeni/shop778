import 'package:flutter/material.dart';
import 'package:shop778/screens/home/components/body.dart';

import '../../components/custom_button_nav_bar.dart';
import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
