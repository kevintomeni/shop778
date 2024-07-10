import 'package:flutter/material.dart';
import 'package:shop778/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
