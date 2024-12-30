import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle style;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF39CDFD), // Gradient color 1
              Color(0xFF0680A6), // Gradient color 2
            ],
            begin: Alignment.topLeft, // Gradient start
            end: Alignment.bottomRight, // Gradient end
          ),
          borderRadius:
              BorderRadius.circular(47.r), // You can adjust the radius
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
