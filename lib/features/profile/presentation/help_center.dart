import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  bool isObscure1 = true;
  bool isObscure2 = true;
  bool isObscure3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F6F6,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Help Center',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(Assets.icons.arrowBack)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(26.h),
              Text(
                'Contact Support',
                style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                  color: AppColors.c000000,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(width: 1, color: AppColors.c01779D)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Phone',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(width: 1, color: AppColors.c01779D)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Email',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(width: 1, color: AppColors.c01779D)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Facebook',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(width: 1, color: AppColors.c01779D)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Twitter',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(width: 1, color: AppColors.c01779D)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      'Instragram',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
