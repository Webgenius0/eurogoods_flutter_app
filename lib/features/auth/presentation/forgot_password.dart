import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/common_widgets/custom_textformfield.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // variables
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(45.h),
                      Text(
                        "Forgot \npassword?",
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700,
                      ),

                      UIHelper.verticalSpace(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "* We have sent an OTP code to your email \nand ********ley@gmail.com. Enter the OTP \ncode below to verify",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.c02344A,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(36.h),

                      //------------email textfield-------------
                      CustomTextFormField(
                        hintText: 'Enter your email address here',
                        prefixIcon: Assets.icons.email,
                        backgroundColor: AppColors.cFFFFFF,
                        borderColor: AppColors.c02344A,
                        iconColor: AppColors.c02344A,
                        hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),

                      UIHelper.verticalSpace(30.h),

                      //------------Continue button-------------
                      CustomButton(
                        text: "Continue",
                        onPressed: () {
                          NavigationService.navigateTo(Routes.otpVerifyScreen);
                        },
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700
                            .copyWith(
                                color: AppColors.cFFFFFF,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
