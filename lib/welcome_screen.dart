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

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // variables
  TextEditingController nameOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        "Welcome \nBack!",
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700,
                      ),
                      UIHelper.verticalSpace(44.h),

                      //------------email textfield-------------
                      CustomTextFormField(
                        hintText: 'Username or Email',
                        prefixIcon: Assets.icons.user,
                        backgroundColor: AppColors.cFFFFFF,
                        borderColor: AppColors.c02344A,
                        iconColor: AppColors.c02344A,
                        hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                        controller: nameOrEmailController,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name or email';
                          }
                          return null;
                        },
                      ),
                      UIHelper.verticalSpace(31.h),

                      //------------password textfield-------------
                      CustomTextFormField(
                          isPasswordField: true,
                          hintText: 'Password',
                          prefixIcon: Assets.icons.password,
                          backgroundColor: AppColors.cFFFFFF,
                          borderColor: AppColors.c02344A,
                          iconColor: AppColors.c02344A,
                          hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                          controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            return null;
                          }),
                      UIHelper.verticalSpace(5.h),

                      //------------forgot password-------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 0.sp)),
                            onPressed: () => NavigationService.navigateTo(
                                Routes.forgotPassword),
                            child: Text(
                              "Forgot Password?",
                              style: TextFontStyle
                                  .textStyle36c0E4F6MontserratW700
                                  .copyWith(
                                color: AppColors.c01779D,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(50.h),
                    CustomButton(
                      text: "Login",
                      onPressed: () {
                        // NavigationService.navigateTo(Routes.forgotPassword);
                        NavigationService.navigateTo(Routes.bottomNavBar);
                      },
                      style: TextFontStyle.textStyle36c0E4F6MontserratW700
                          .copyWith(
                              color: AppColors.cFFFFFF,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                    ),
                    UIHelper.verticalSpace(30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create An Account",
                          style: TextFontStyle.textStyle36c0E4F6MontserratW700
                              .copyWith(
                            color: AppColors.c02344A,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        UIHelper.horizontalSpace(5.w),
                        GestureDetector(
                          onTap: () {
                            NavigationService.navigateTo(Routes.signup);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextFontStyle.textStyle36c0E4F6MontserratW700
=======
                        ],
                      ),
                      UIHelper.verticalSpace(50.h),

                      //------------login-------------
                      CustomButton(
                        text: "Login",
                        onPressed: () {
                          // NavigationService.navigateTo(Routes.forgotPassword);
                        },
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700
                            .copyWith(
                                color: AppColors.cFFFFFF,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                      ),
                      UIHelper.verticalSpace(30.h),

                      //------------signup-------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create An Account",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c02344A,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          UIHelper.horizontalSpace(5.w),
                          GestureDetector(
                            onTap: () {
                              NavigationService.navigateTo(Routes.signup);
                            },
                            child: Text(
                              "Sign Up",
                              style: TextFontStyle
                                  .textStyle36c0E4F6MontserratW700
                                  .copyWith(
                                color: AppColors.c01779D,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
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
