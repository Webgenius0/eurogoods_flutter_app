import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24.h, left: 21.w, right: 21.w),
      height: 352.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.r),
              topRight: Radius.circular(28.r))), // Adjust the height as needed
      child: Column(
        children: [
          Container(
            height: 4.h,
            width: 48.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: AppColors.c17242B.withOpacity(0.4)),
          ),
          Text(
            'Remove From Order',
            style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                height: 2.4,
                color: AppColors.c17242B),
          ),

          Divider(
            color: AppColors.c17242B,
          ),
          UIHelper.verticalSpace(20.h),

          // items
          Container(
            height: 98.h,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.cC7D3D7,
            ),
            child: Row(
              children: [
                Container(
                  height: 82.h,
                  width: 82.w,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.85.r),
                    color: AppColors.cFFFFFF,
                  ),
                  child: Image.asset(Assets.images.cocaKola.path),
                ),
                UIHelper.horizontalSpace(8.w),
                Expanded(
                  child: Container(
                    height: 82.h,
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.85.r),
                      color: AppColors.cFFFFFF,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Coca Cola 8/2 Liter',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: AppColors.c17242B),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'C001',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                fontSize: 12.sp,
                                color: AppColors.c000000.withOpacity(0.7),
                              ),
                            ),
                            Text(
                              'Cs Qty: 8',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                fontSize: 12.sp,
                                color: AppColors.c000000.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$111',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 25.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(2.r),
                                      bottomLeft: Radius.circular(2.r),
                                    ),
                                    color: AppColors.c01779D,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: AppColors.cFFFFFF,
                                      size: 15.sp,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 24.h,
                                  width: 25.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(2.r),
                                      bottomLeft: Radius.circular(2.r),
                                    ),
                                    color: AppColors.cF5F5F5,
                                  ),
                                  child: Text(
                                    '1',
                                    style: TextFontStyle
                                        .textStyle24c848585PoppinsW400
                                        .copyWith(
                                            color: AppColors.c000000,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  height: 24.h,
                                  width: 25.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(2.r),
                                      bottomRight: Radius.circular(2.r),
                                    ),
                                    color: AppColors.c01779D,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15.sp,
                                      color: AppColors.cFFFFFF,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          UIHelper.verticalSpace(24.h),
          //remove and cancel button
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => NavigationService.goBack,
                  child: Container(
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.cEAFEFF,
                        borderRadius: BorderRadius.circular(
                            47.r), // You can adjust the radius
                      ),
                      width: double.infinity,
                      child: Text(
                        'Cancel',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c01779D,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  height: 40.h,
                  width: double.infinity,
                  child: CustomButton(
                    text: "Yes, Remove",
                    onPressed: () {},
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.cFFFFFF,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
