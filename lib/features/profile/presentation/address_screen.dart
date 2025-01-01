import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_horizontal_divider.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Address',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(Assets.icons.arrowBack)),
        actions: [
          Transform.translate(
              offset: Offset(-20, 1),
              child: SvgPicture.asset(Assets.icons.addAddress))
        ],
      ),
      backgroundColor: AppColors.cF6F9F9,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Column(
          children: [
            Container(
              width: 333.w,
              height: 194.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFFFFFF,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Home",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              color: AppColors.c000000,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                    ),
                    UIHelper.verticalSpace(8.h),
                    CustomHorizontalDivider(),
                    UIHelper.verticalSpace(8.h),
                    Row(
                      children: [
                        Text("Jane Cooper ",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c17242B,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500)),
                        UIHelper.horizontalSpace(8.w),
                        Text("(684) 555-0102",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500))
                      ],
                    ),
                    UIHelper.verticalSpace(7.h),
                    Text('3517 W. Gray St. Utica, Pennsylvania 57867',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c17242B,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400)),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.locationOn),
                        UIHelper.horizontalSpace(4.w),
                        Text("Pinpoint already",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400))
                      ],
                    ),
                    UIHelper.verticalSpace(12.h),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            NavigationService.navigateTo(
                                Routes.changeAddressScreen);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: AppColors.c01779D)),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.h, horizontal: 16.w),
                                child: Text(
                                  "Change Address",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                        UIHelper.horizontalSpace(8.w),
                        SvgPicture.asset(Assets.icons.optionCircle)
                      ],
                    )
                  ],
                ),
              ),
            ),

            //-----------Apartment ---------------
            UIHelper.verticalSpace(16.h),
            Container(
              width: 333.w,
              height: 194.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFFFFFF,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apartment",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              color: AppColors.c000000,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                    ),
                    UIHelper.verticalSpace(8.h),
                    CustomHorizontalDivider(),
                    UIHelper.verticalSpace(8.h),
                    Row(
                      children: [
                        Text("Jane Cooper ",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c17242B,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500)),
                        UIHelper.horizontalSpace(8.w),
                        Text("(684) 555-0102",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500))
                      ],
                    ),
                    UIHelper.verticalSpace(7.h),
                    Text('3517 W. Gray St. Utica, Pennsylvania 57867',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c17242B,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400)),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.locationOn),
                        UIHelper.horizontalSpace(4.w),
                        Text("Pinpoint already",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400))
                      ],
                    ),
                    UIHelper.verticalSpace(12.h),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            NavigationService.navigateTo(
                                Routes.changeAddressScreen);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: AppColors.c01779D)),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.h, horizontal: 16.w),
                                child: Text(
                                  "Change Address",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                        UIHelper.horizontalSpace(8.w),
                        SvgPicture.asset(Assets.icons.optionCircle)
                      ],
                    )
                  ],
                ),
              ),
            ),

            //---------Office--------------
            UIHelper.verticalSpace(16.h),
            Container(
              width: 333.w,
              height: 194.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFFFFFF,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Office",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              color: AppColors.c000000,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                    ),
                    UIHelper.verticalSpace(8.h),
                    CustomHorizontalDivider(),
                    UIHelper.verticalSpace(8.h),
                    Row(
                      children: [
                        Text("Jane Cooper ",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c17242B,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500)),
                        UIHelper.horizontalSpace(8.w),
                        Text("(684) 555-0102",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500))
                      ],
                    ),
                    UIHelper.verticalSpace(7.h),
                    Text('3517 W. Gray St. Utica, Pennsylvania 57867',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c17242B,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400)),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.locationOn),
                        UIHelper.horizontalSpace(4.w),
                        Text("Pinpoint already",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400))
                      ],
                    ),
                    UIHelper.verticalSpace(12.h),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            NavigationService.navigateTo(
                                Routes.changeAddressScreen);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: AppColors.c01779D)),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.h, horizontal: 16.w),
                                child: Text(
                                  "Change Address",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                        UIHelper.horizontalSpace(8.w),
                        SvgPicture.asset(Assets.icons.optionCircle)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
