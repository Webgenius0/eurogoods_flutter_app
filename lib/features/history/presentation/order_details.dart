import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F5F5,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Order Details',
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //shipping address
            Text(
              'Shipping Address',
              style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.c17242B),
            ),
            UIHelper.verticalSpace(12.h),
            Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.cFFFFFF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Home',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                      UIHelper.horizontalSpace(16.h),
                      Text(
                        'Main Address',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(8.h),
                  Divider(
                    color: AppColors.c848585.withOpacity(0.5),
                    height: 1.h,
                  ),
                  UIHelper.verticalSpace(8.h),
                  Row(
                    children: [
                      Text(
                        'Jane Cooper',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                      UIHelper.horizontalSpace(16.h),
                      Text(
                        '(684) 555-0102',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(14.h),
                  Text(
                    '3517 W. Gray St. Utica, Pennsylvania 57867',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.c17242B),
                  ),
                  UIHelper.verticalSpace(4.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.location,
                        color: AppColors.c17242B,
                        height: 16.h,
                        width: 16.w,
                      ),
                      UIHelper.horizontalSpace(9.h),
                      Text(
                        'Pinpoint already',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(20.h),
            Text(
              'Order List',
              style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.c17242B),
            ),
            UIHelper.verticalSpace(6.h),
            //------------list of order items-------------
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
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
                                  child:
                                      Image.asset(Assets.images.cocaKola.path),
                                ),
                                UIHelper.horizontalSpace(8.w),
                                Expanded(
                                  child: Container(
                                    height: 82.h,
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 11.w, vertical: 5.h),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(3.85.r),
                                      color: AppColors.cFFFFFF,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        UIHelper.verticalSpace(4.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$120',
                                              style: TextFontStyle
                                                  .textStyle24c848585PoppinsW400
                                                  .copyWith(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.c000000,
                                              ),
                                            ),
                                            Text(
                                              'Qty: 12',
                                              style: TextFontStyle
                                                  .textStyle24c848585PoppinsW400
                                                  .copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.c000000,
                                              ),
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
                  ),
                ],
              ),
            )),

            UIHelper.verticalSpace(10.h),
          ],
        ),
      ),
      //------------continue to payment-------------
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 10.h),
        child: Container(
          height: 55.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total amount',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.c000000)),
              Text('\$500',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.c000000))
            ],
          ),
        ),
      ),
    );
  }
}
