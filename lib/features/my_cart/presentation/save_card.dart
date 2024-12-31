import 'dart:ui';

import 'package:eurogoods/common_widgets/add_new_card.dart';
import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SaveCard extends StatefulWidget {
  const SaveCard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SaveCardState createState() => _SaveCardState();
}

class _SaveCardState extends State<SaveCard> {
  String cardHolderName = "";
  String cardNumber = "* * * *  * * * *  * * * *  XXXX";
  String expiryDate = "XX/XX";
  String cvv = "";
  bool isToggled = false;

  final List<Map<String, String>> cardData = [
    {
      "cardNumber": "1234 5678 9012 3456",
      "cardHolderName": "John Doe",
      "expiryDate": "12/25",
    },
    {
      "cardNumber": "4321 8765 2109 6543",
      "cardHolderName": "Jane Smith",
      "expiryDate": "11/24",
    },
    {
      "cardNumber": "5678 1234 9012 4567",
      "cardHolderName": "Alex Johnson",
      "expiryDate": "10/23",
    },
    {
      "cardNumber": "6789 4321 0123 5678",
      "cardHolderName": "Emily Davis",
      "expiryDate": "09/26",
    },
  ];

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-----------Card Preview--------------

              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.sp),
                      child: Container(
                        height: 180.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.r,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                  Assets.images.cardImg.path,
                                ),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 27.w, right: 44.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UIHelper.verticalSpace(22.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                style: TextFontStyle
                                    .textStyle24c848585PoppinsW400
                                    .copyWith(fontSize: 20.sp),
                              ),
                              UIHelper.verticalSpace(31.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Card Holder Name",
                                          style: TextFontStyle
                                              .textStyle24c848585PoppinsW400
                                              .copyWith(
                                            fontSize: 12.sp,
                                            color: TextFontStyle
                                                .textStyle24c848585PoppinsW400
                                                .color
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
                                                .textStyle24c848585PoppinsW400
                                                .color
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
                    );
                  },
                ),
              ),

              UIHelper.verticalSpace(15.h),

              //------------confirm payment-------------
              AddNewCard(
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c01779D,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                  text: "Add New Card",
                  onPressed: () {
                    NavigationService.navigateTo(Routes.addNewCardScreen);
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

              TextFormField(
                textAlign: TextAlign
                    .left, // Aligns the input text to the left inside the TextFormField
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
                    borderSide: const BorderSide(color: AppColors.c926BF4),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    cardHolderName = value;
                  });
                },
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
                        "CVV",
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
                        "EXP",
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
              UIHelper.verticalSpace(13.h),
              Row(
                children: [
                  Text(
                    'Save Card Info',
                    style: TextFontStyle.textStyle24c848585PoppinsW400
                        .copyWith(fontSize: 14.sp, color: AppColors.c000000),
                  ),
                  Spacer(),
                  FlutterSwitch(
                    height: 22.0,
                    width: 38.0,
                    padding: 4.0,
                    toggleSize: 15.0,
                    borderRadius: 10.0,
                    activeColor: AppColors.c01779D,
                    value: isToggled,
                    onToggle: (value) {
                      setState(() {
                        isToggled = value;
                      });
                    },
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),

              //----------------Save Card----------------

              GestureDetector(
                onTap: () => NavigationService.navigateTo(Routes.bottomNavBar),
                child: Container(
                  height: 44.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.c01779D,
                    border: Border.all(width: 1, color: AppColors.c01779D),
                    borderRadius: BorderRadius.circular(
                        62.r), // You can adjust the radius
                  ),
                  child: Center(
                    child: Text(
                      "Save Card",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              color: AppColors.cFFFFFF,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
