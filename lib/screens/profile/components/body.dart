import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/user-svgrepo-com.svg",
          text: 'My Account',
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/bell-svgrepo-com.svg",
          text: 'Notifications',
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/setting-svgrepo-com.svg",
          text: 'Settings',
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/question-mark-svgrepo-com.svg",
          text: 'Help Center',
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/log-out-svgrepo-com.svg",
          text: 'Log Out',
          press: () {},
        ),
      ],
    );
  }
}
