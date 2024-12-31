import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCard extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle style;

  const AddNewCard({
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
        height: 44.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.c01779D.withOpacity(0.2),
          border: Border.all(width: 1, color: AppColors.c01779D),
          borderRadius:
              BorderRadius.circular(62.r), // You can adjust the radius
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.addNewCard),
            UIHelper.horizontalSpace(8.w),
            Text(
              text,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
