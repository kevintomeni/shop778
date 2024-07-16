import 'package:flutter/material.dart';

import '../../components/custom_button_nav_bar.dart';
import '../../enums.dart';

class TutoScreen extends StatelessWidget {
  const TutoScreen({super.key});
  static String routeName = "/tuto";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tutoriel"),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.tuto,
      ),
    );
  }
}
