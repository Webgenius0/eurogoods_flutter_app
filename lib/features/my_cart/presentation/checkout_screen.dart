import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/share_bottom_sheet_widget.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Checkout',
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
            UIHelper.verticalSpace(12.h),

            //shipping address
            Text(
              'Shipping Address',
              style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.c17242B),
            ),
            UIHelper.verticalSpace(32.h),

            Row(
              children: [
                Text(
                  'Home',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.c000000),
                ),
                UIHelper.horizontalSpace(10.h),
                Text(
                  'Main Address',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
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
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.c17242B),
                ),
                UIHelper.horizontalSpace(8.h),
                Text(
                  '(684) 555-0102',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.c000000),
                ),
              ],
            ),
            UIHelper.verticalSpace(4.h),
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
                  color: Colors.black,
                ),
                UIHelper.horizontalSpace(4.h),
                Text(
                  'Pinpoint already',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.c000000),
                ),
              ],
            ),

            UIHelper.verticalSpace(30.h),
            Text(
              'Order List',
              style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.c17242B),
            ),
            UIHelper.verticalSpace(16.h),
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.sp,
                                                      color: AppColors.c17242B),
                                            ),
                                            GestureDetector(
                                              onTap: () => showModalBottomSheet(
                                                context: context,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                    top: Radius.circular(28.0),
                                                  ),
                                                ),
                                                builder: (context) =>
                                                    ShareBottomSheet(),
                                              ),
                                              child: SvgPicture.asset(
                                                Assets.icons.delete,
                                                height: 14.h,
                                                width: 14.w,
                                              ),
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
                                              '\$120',
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
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(2.r),
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
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(2.r),
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
                                                            color: AppColors
                                                                .c000000,
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                ),
                                                Container(
                                                  height: 24.h,
                                                  width: 25.w,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(2.r),
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
                  ),
                  //------------totall ammount-------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c17242B,
                          height: 2.4,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      UIHelper.verticalSpace(16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ammount:',
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c000000,
                              fontWeight: FontWeight.w400,
                              height: 2.0,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text('\$458',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                color: AppColors.c000000,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              )),
                        ],
                      ),
                      UIHelper.verticalSpace(8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shiping:',
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c000000,
                              height: 2.0,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text('\$42',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                color: AppColors.c000000,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              )),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Cost:',
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c000000,
                              fontWeight: FontWeight.w400,
                              height: 2.0,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text('\$500',
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                color: AppColors.c000000,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              )),
                        ],
                      ),
                      Container(
                        height: 55.h,
                        width: double.infinity,
                        child: CustomButton(
                          text: "Continue to payment",
                          onPressed: () => NavigationService.navigateTo(
                              Routes.paymentScreen),
                          style: TextFontStyle.textStyle36c0E4F6MontserratW700
                              .copyWith(
                                  color: AppColors.cFFFFFF,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),

            UIHelper.verticalSpace(10.h),
          ],
        ),
      ),
    );
  }
}
