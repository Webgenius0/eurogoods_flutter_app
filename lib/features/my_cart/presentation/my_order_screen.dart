import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'My Order',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(Assets.icons.arrowBack)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 21,
        ),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Expanded(
                child: ListView.builder(
              itemCount: 12,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return Column(
                  children: [
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.w, vertical: 5.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.85.r),
                                color: AppColors.cFFFFFF,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Coca Cola 8/2 Liter',
                                        style: TextFontStyle
                                            .textStyle24c848585PoppinsW400
                                            .copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                                color: AppColors.c17242B),
                                      ),
                                      SvgPicture.asset(
                                        Assets.icons.delete,
                                        height: 14.h,
                                        width: 14.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'C001',
                                        style: TextFontStyle
                                            .textStyle24c848585PoppinsW400
                                            .copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.c000000
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      Text(
                                        'Cs Qty: 8',
                                        style: TextFontStyle
                                            .textStyle24c848585PoppinsW400
                                            .copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.c000000
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  UIHelper.verticalSpace(4.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${120}',
                                        style: TextFontStyle
                                            .textStyle24c848585PoppinsW400
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
                                                bottomLeft:
                                                    Radius.circular(2.r),
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
                                                bottomLeft:
                                                    Radius.circular(2.r),
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
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            height: 24.h,
                                            width: 25.w,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(2.r),
                                                bottomRight:
                                                    Radius.circular(2.r),
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
                    UIHelper.verticalSpace(
                      12.h,
                    ),
                  ],
                );
              },
            )),
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        height: 1.8,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text('\$458',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c000000,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        )),
                  ],
                ),
                UIHelper.horizontalSpace(21.w),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: CustomButton(
                      text: "Checkout Now",
                      onPressed: () {
                        //NavigationService.navigateTo(Routes.bottomNavBar);
                      },
                      style: TextFontStyle.textStyle36c0E4F6MontserratW700
                          .copyWith(
                              color: AppColors.cFFFFFF,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
            UIHelper.verticalSpace(46.h)
          ],
        ),
      ),
    );
  }
}
