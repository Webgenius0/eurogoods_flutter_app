import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddNewCardScreenState createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Add New Card',
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
              Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                //------------ Card Holder Information-------------
              ),
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
                    //cardHolderName = value;
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
                    //cardNumber = value.isEmpty
                    // ? "* * * *  * * * *  * * * *  XXXX"
                    // : value.replaceAllMapped(RegExp(r".{4}"), (match) {
                    //     return "${match.group(0)} ";
                    //   }).trim();
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
                            // cvv = value;
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
                            // expiryDate = value;
                          });
                        },
                      ),
                    ],
                  )),
                ],
              ),
              UIHelper.verticalSpace(13.h),

              //----------------Add Card----------------

              Container(
                height: 44.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.c01779D,
                  border: Border.all(width: 1, color: AppColors.c01779D),
                  borderRadius:
                      BorderRadius.circular(62.r), // You can adjust the radius
                ),
                child: Center(
                  child: Text(
                    "Add Card",
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.cFFFFFF,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
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
