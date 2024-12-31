// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListtileWidget extends StatelessWidget {
  final String rightIconPath;
  final String leftIconPath;
  final String text;
  bool isLogoutText;
  final Function()? onTap;

  CustomListtileWidget({
    Key? key,
    required this.leftIconPath,
    required this.rightIconPath,
    required this.text,
    this.isLogoutText = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.transparent,
      // focusColor: Colors.transparent,
      // hoverColor: Colors.transparent,
      // highlightColor: Colors.transparent,
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                leftIconPath,
                width: 20.w,
                height: 20.h,
                // Adjust color if necessary
              ),
              UIHelper.horizontalSpace(8.h),
              !isLogoutText
                  ? Text(
                      text,
                      style:
                          TextFontStyle.text18c17242BStylePopine500.copyWith(
                     
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  : Text(
                      text,
                      style:
                          TextFontStyle.text16cE00000StylePopine400,
                    ),
              Spacer(),
              SvgPicture.asset(
                rightIconPath,
                width: 24.w,
                height: 24.w,
                // Adjust color if necessary
              )
            ],
          ),
          UIHelper.verticalSpace(5.5.h),
       
        ],
      ),
    );
  }
}
