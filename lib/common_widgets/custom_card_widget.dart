import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;
  final Widget icon;
  final double borderRadius;

  const CustomCardWidget({
    Key? key,
    required this.borderColor,
    required this.backgroundColor,
    required this.icon,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: 2.0),
      ),
      child: Center(
        child: icon,
      ),
      width: 80, // Customize as needed
      height: 60, // Customize as needed
    );
  }
}
