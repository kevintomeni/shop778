import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final _name;
  final _icon;
  Category({required String name, required IconData? icon})
      : _name = name,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xfFE9EBEA),
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: 40,
            height: 40,
            child: Icon(
              _icon,
              size: 40,
              color: Colors.black45,
            ),
          ),
        ),
        Text(
          _name,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
