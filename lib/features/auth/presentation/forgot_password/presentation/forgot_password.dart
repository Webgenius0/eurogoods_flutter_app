import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/common_widgets/custom_textformfield.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
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
  TextEditingController nameOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    UIHelper.verticalSpace(44.h),
                    CustomTextFormField(
                      hintText: 'Username or Email',
                      prefixIcon: Assets.icons.email,
                      backgroundColor: AppColors.cFFFFFF,
                      borderColor: AppColors.c02344A,
                      iconColor: AppColors.c02344A,
                      hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                      controller: nameOrEmailController,
                    ),
                    UIHelper.verticalSpace(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 0.sp)),
                          onPressed: () {},
                          child: Text(
                            "* We will send you a message to set or \nreset your new password",
                            style: TextFontStyle.textStyle36c0E4F6MontserratW700
                                .copyWith(
                              color: AppColors.c01779D,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(50.h),
                    CustomButton(
                      text: "Submit",
                      onPressed: () {
                        // NavigationService.navigateTo(
                        //     Routes.createAccountScreen);
                      },
                      style: TextFontStyle.textStyle36c0E4F6MontserratW700
                          .copyWith(
                              color: AppColors.cFFFFFF,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
