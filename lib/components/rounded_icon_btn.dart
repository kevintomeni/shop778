import 'package:flutter/material.dart';
import 'package:shop778/size-config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key,
    required this.iconData,
    required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.white,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
