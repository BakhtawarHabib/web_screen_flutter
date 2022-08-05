import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TileWidget extends StatelessWidget {
  String title;
  String iconPath;
  Widget trailWidget;
  TileWidget(
      {required this.iconPath, required this.title, required this.trailWidget});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          iconPath,
          height: 30,
        ),
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xff606C80)),
        ),
        trailWidget,
      ],
    );
  }
}
