import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget categoriesButton(String text, {bool selected = false}) {
  return ChoiceChip(
    label: Text(text),
    selected: selected,
    selectedColor: Colors.teal[100],
    backgroundColor: Colors.white,
    shape: const StadiumBorder(
      side: BorderSide(color: AppColors.c01779D),
    ),
    labelStyle: !selected
        ? TextFontStyle.textStyle24c848585PoppinsW400
            .copyWith(fontSize: 10.sp, fontWeight: FontWeight.w500)
        : TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.cFFFFFF),
    onSelected: (bool value) {},
  );
}
