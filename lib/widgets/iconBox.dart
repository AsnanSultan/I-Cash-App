import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconBox extends StatelessWidget {
  Color color;
  IconData icon;
  Color iconColor;
  bool onTap;

  IconBox(
      {required this.color,
      required this.icon,
      required this.iconColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (onTap) {
      iconColor = Colors.white;
      color = Colors.green;
    }
    return Container(
      padding: EdgeInsets.all(12),
      child: Icon(
        icon,
        color: iconColor,
        size: 35,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: Offset(1, 2),
            spreadRadius: 3,
            blurRadius: 6,
          )
        ],
      ),
    );
  }
}
