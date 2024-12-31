import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardWidget extends StatelessWidget {
  final Color? borderColor;
  final Color backgroundColor;
  final Widget icon;
  final double borderRadius;

  const CustomCardWidget({
    Key? key,
    this.borderColor,
    required this.backgroundColor,
    required this.icon,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor ?? Colors.transparent, // Handle null borderColor
          width: 1.0,
        ),
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}
