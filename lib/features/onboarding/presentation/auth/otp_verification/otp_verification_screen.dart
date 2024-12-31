import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../common_widgets/custom_button.dart';
import '../../../../../constants/text_font_style.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../helpers/all_routes.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? confirmOtpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the OTP';
    } else if (value.length != 4) {
      return 'OTP must be 4 digits';
    } else {
      return null; // Return null if OTP is valid
    }
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 40.h, left: 22.w, right: 22.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "OTP code verification ",
                  style: TextFontStyle.textStyle36c0E4F6MontserratW700,
                ),
                UIHelper.verticalSpace(20.h),
                Text(
                  "* We have sent an OTP code to your email and ********ley@gmail.com. Enter the OTP code below to verify",
                  style: TextFontStyle.textStyle12c02344APoppinsW400,
                ),
                UIHelper.verticalSpace(60.h),
                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    controller: otpController,
                    length: 4,
                    validator: confirmOtpValidator,
                    showCursor: true,
                    obscureText: false,
                    pinAnimationType: PinAnimationType.fade,
                    onChanged: (v) {},
                    animationDuration: Duration(milliseconds: 300),
                    enabled: true,
                    /* errorPinTheme: isOtpError ? PinTheme(
                          height: 60.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                              color: AppColors.cB5B5B5,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                width: 2.w,
                                color: Colors.red,
                              )),
                        ): null, */
                    defaultPinTheme: PinTheme(
                      height: 65.h,
                      width: 62.w,
                      decoration: BoxDecoration(
                        //color: AppColors.cB5B5B5,
                        //color: AppColors.cBA016E,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      height: 65.h,
                      width: 62.w,
                      decoration: BoxDecoration(
                        //color: AppColors.cB5B5B5.withOpacity(0.9),
                        //color: AppColors.cBA016E,
                        /* border:
                            Border.all(color: AppColors.cBA016E, width: 2.w), */
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
                UIHelper.verticalSpace(20.h),
                Text(
                  "Didn’t receive email?",
                  style: TextFontStyle.textStyle14c3B3B3BPoppinsW500,
                ),
                UIHelper.verticalSpace(30.h),
                CustomButton(
                  text: "Continue",
                  onPressed: () {
                    NavigationService.navigateTo(Routes.createNewPassScreen);
                    // NavigationService.navigateTo(
                    //     Routes.createAccountScreen);
                  },
                  style: TextFontStyle.textStyle36c0E4F6MontserratW700.copyWith(
                      color: AppColors.cFFFFFF,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
