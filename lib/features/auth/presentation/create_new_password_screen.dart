import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmNewPassController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    newPassController.dispose();
    confirmNewPassController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 45.h, left: 21.w, right: 21.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create new \npassword ",
                  style: TextFontStyle.textStyle36c0E4F6MontserratW700,
                ),
                UIHelper.verticalSpace(10.h),
                Text(
                  "Create your new password. if you forget it,then you have to do forgot password.",
                  style: TextFontStyle.textStyle36c0E4F6MontserratW700.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: AppColors.c02344A),
                ),
                UIHelper.verticalSpace(36.h),
                CustomTextFormField(
                    isPasswordField: true,
                    hintText: 'Create New Password',
                    prefixIcon: Assets.icons.password,
                    backgroundColor: AppColors.cFFFFFF,
                    borderColor: AppColors.c02344A,
                    iconColor: AppColors.c02344A,
                    hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                    controller: newPassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your new password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    }),
                UIHelper.verticalSpace(30.h),
                CustomTextFormField(
                    isPasswordField: true,
                    hintText: 'Confirm New Password',
                    prefixIcon: Assets.icons.password,
                    backgroundColor: AppColors.cFFFFFF,
                    borderColor: AppColors.c02344A,
                    iconColor: AppColors.c02344A,
                    hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                    controller: confirmNewPassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your confirm password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long'.tr;
                      }
                      if (newPassController.text.isNotEmpty &&
                          newPassController.text.trim() ==
                              confirmNewPassController.text.trim()) {
                        return 'Confirm pass not match new password';
                      }
                      // if (value.trim() !=
                      //     provider.passwordController.text.trim()) {
                      //   return "Both passwords do not match";
                      // }
                      return null;
                    }),
                UIHelper.verticalSpace(30.h),
                CustomButton(
                  text: "Continue",
                  onPressed: () =>
                      NavigationService.navigateTo(Routes.bottomNavBar),
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
