// ignore_for_file: must_be_immutable

import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChangePasswordWidget extends StatefulWidget {
  final String hintText;
  TextEditingController textEditingController;
  String? Function(String?)? validator;

  CustomChangePasswordWidget(
      {Key? key,
      required this.hintText,
      required this.textEditingController,
      this.validator})
      : super(key: key);

  @override
  _CustomChangePasswordWidgetState createState() =>
      _CustomChangePasswordWidgetState();
}

class _CustomChangePasswordWidgetState
    extends State<CustomChangePasswordWidget> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.textEditingController,
      cursorColor: AppColors.cF5F5F5,
      obscureText: _isObscured,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
          color: AppColors.c000000,
          fontSize: 12.sp,
        ), // Hint text color
        filled: true,
        fillColor: Colors.white, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r), // Rounded corners
          borderSide: BorderSide(
            color: Colors.transparent, // Border color
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.transparent, // Border color when not focused
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.allPrimaryColor, // Border color when focused
            width: 1.0,
          ),
        ),
        suffixIcon: IconButton(
          iconSize: 20.sp,
          icon: Icon(
            _isObscured ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey, // Icon color
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
      ),
    );
  }
}
