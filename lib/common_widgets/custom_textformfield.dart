// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatefulWidget {
  final bool isPasswordField;
  final String hintText;
  final String? prefixIcon;
  final IconData? suffixIcon;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? hintTextColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  String? Function(String?)? validator;

  CustomTextFormField(
      {super.key,
      this.isPasswordField = false,
      this.hintText = 'Enter text',
      this.prefixIcon,
      this.suffixIcon,
      this.borderColor = Colors.grey,
      this.backgroundColor = Colors.white,
      this.iconColor = Colors.black,
      this.hintTextColor = Colors.grey,
      this.controller,
      this.keyboardType,
      this.validator});

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPasswordField;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 55.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: Border.all(color: widget.borderColor!),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          // Prefix Icon with consistent size
          if (widget.prefixIcon != null)
            Padding(
              padding: EdgeInsets.only(left: 11.55.w, right: 8.w),
              child: SvgPicture.asset(
                widget.prefixIcon!,
                height: 22.h,
                width: 22.w,
                color: widget.iconColor,
              ),
            ),
          // Text field area
          UIHelper.horizontalSpace(3.15.w),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              obscureText: _obscureText,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle:
                    TextFontStyle.textStyle12c02344AMontserratW500.copyWith(
                  color: AppColors.c02344A,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          // Password toggle icon
          if (widget.isPasswordField)
            IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: widget.iconColor,
                size: 22.sp,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
        ],
      ),
    );
  }
}
