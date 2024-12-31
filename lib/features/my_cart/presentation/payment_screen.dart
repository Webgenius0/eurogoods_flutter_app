import 'dart:ui';

import 'package:eurogoods/common_widgets/add_new_card.dart';
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

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardHolderName = "";
  String cardNumber = "* * * *  * * * *  * * * *  XXXX";
  String expiryDate = "XX/XX";
  String cvv = "";

  // Method to show the custom alert dialog
  void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 1), () {
          // NavigationService.navigateTo(Routes.navigationScreen);
        });
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2), // Optional dark overlay
              ),
            ),
            Center(
              child: Container(
                width: 342.w, // Adjust width for responsiveness
                height: 486.h, // Adjust height for responsiveness
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.icons.bank),
                    Text(
                      "Reset Password Successful!",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text(
                      "Your password has been restored\nPlease wait a moment, we are\npreparing for you...",
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(decoration: TextDecoration.none),
                    ),
                    UIHelper.verticalSpace(20.h),
                    TextButton(
                        onPressed: () {
                          NavigationService.goBack;
                        },
                        child: Text('View Order')),
                    // const CircularProgressIndicator(),
                    UIHelper.verticalSpace(40.h),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Payment',
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
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Card Preview
              Container(
                height: 180.h,
                decoration: BoxDecoration(
                  color: AppColors.c743DFF,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.r,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w, right: 44.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.asset(
                          //   Assets.images.masterCard.path,
                          //   height: 40.h,
                          // ),
                          // const Text(
                          //   "XXXX",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                      UIHelper.verticalSpace(18.h),
                      Text(
                        cardNumber,
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(fontSize: 20.sp),
                      ),
                      UIHelper.verticalSpace(31.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Card Holder Name",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                    fontSize: 12.sp,
                                    color: TextFontStyle
                                        .textStyle24c848585PoppinsW400.color
                                        ?.withOpacity(0.8),
                                  )),
                              UIHelper.verticalSpace(6.5.h),
                              Text(
                                  cardHolderName.isNotEmpty
                                      ? cardHolderName
                                      : "XXXXXXXXX",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Expiry Date",
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                    fontSize: 12.sp,
                                    color: TextFontStyle
                                        .textStyle24c848585PoppinsW400.color
                                        ?.withOpacity(0.8),
                                  )),
                              UIHelper.verticalSpace(6.5.h),
                              Text(
                                expiryDate,
                                style: TextFontStyle
                                    .textStyle24c848585PoppinsW400
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              UIHelper.verticalSpace(15.h),

              //------------confirm payment-------------
              AddNewCard(
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c01779D,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                  text: "Confirm Payment",
                  onPressed: () {
                    //NavigationService.navigateTo(Routes.paymentScreen);
                  }),
              UIHelper.verticalSpace(20.h),

              //------------ Card Holder Information-------------
              Text(
                "Card Owner",
                style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.c000000),
              ),
              UIHelper.verticalSpace(8.h),

              Container(
                height: 38.h,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jane Cooper",
                    hintStyle: TextFontStyle.textStyle24c848585PoppinsW400,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.c926BF4.withOpacity(0.5),
                      ), // Border when not focused
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(color: AppColors.c926BF4)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      cardHolderName = value;
                    });
                  },
                ),
              ),

              UIHelper.verticalSpace(12.h),

              Text(
                "Card Number",
                style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.c000000),
              ),

              UIHelper.verticalSpace(8.h),
              // Card Number Input
              TextFormField(
                decoration: InputDecoration(
                  hintText: "5254 7634 8734 7690",
                  hintStyle: TextFontStyle.textStyle24c848585PoppinsW400,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.c926BF4.withOpacity(0.5),
                    ), // Border when not focused
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: AppColors.c926BF4)),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12.r), // Rounded corners
                  ),
                ),
                maxLength: 19,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    cardNumber = value.isEmpty
                        ? "* * * *  * * * *  * * * *  XXXX"
                        : value.replaceAllMapped(RegExp(r".{4}"), (match) {
                            return "${match.group(0)} ";
                          }).trim();
                  });
                },
              ),
              UIHelper.verticalSpace(7.h),
              // Expiry Date and CVV Inputs
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXP",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                      UIHelper.verticalSpace(8.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "24/24",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: AppColors.c926BF4)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.c926BF4.withOpacity(0.5),
                            ), // Border when not focused
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            cvv = value;
                          });
                        },
                      ),
                    ],
                  )),
                  UIHelper.horizontalSpace(13.h),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.c000000),
                      ),
                      UIHelper.verticalSpace(8.h),
                      TextField(
                        decoration: InputDecoration(
                          // labelText: "Expiration Date",
                          hintText: "7763",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: AppColors.c926BF4)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.c926BF4.withOpacity(0.5),
                            ), // Border when not focused
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        maxLength: 5,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                    ],
                  )),
                ],
              ),
              UIHelper.verticalSpace(32.h),

              //----------------Confirm Payment----------------
              Container(
                height: 55.h,
                width: double.infinity,
                child: CustomButton(
                  text: "Confirm Payment",
                  onPressed: () =>
                      NavigationService.navigateTo(Routes.paymentScreen),
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.cFFFFFF,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
