import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_change_password_widget.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController currentPassController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscure1 = true;
  bool isObscure2 = true;
  bool isObscure3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F6F6,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Change Password',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(Assets.icons.arrowBack)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(26.h),
                Text(
                  'Current Password',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    color: AppColors.c000000,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                CustomChangePasswordWidget(
                  hintText: 'Enter current password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password'.tr;
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long'.tr;
                    }
                    return null;
                  },
                  textEditingController: currentPassController,
                ),
                UIHelper.verticalSpace(16.h),
                Text(
                  'New Password',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    color: AppColors.c000000,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                CustomChangePasswordWidget(
                  hintText: 'Enter new password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password'.tr;
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long'.tr;
                    }
                    return null;
                  },
                  textEditingController: newPasswordController,
                ),
                UIHelper.verticalSpace(16.h),
                Text(
                  'Confirm Password',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    color: AppColors.c000000,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                CustomChangePasswordWidget(
                  hintText: 'Enter confirm new Password',
                  textEditingController: confirmPasswordController,
                  validator: (value) => confirmPasswordValidator(
                      value, newPasswordController.text),
                ),
                UIHelper.verticalSpace(8.h),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          NavigationService.navigateTo(Routes.welcomeScreen);
        },
        child: Padding(
          padding: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 21.h),
          child: Container(
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
          ),
        ),
      ),
    );
  }
}

String? confirmPasswordValidator(String? value, String? originalPassword) {
  if (value == null || value.isEmpty) {
    return 'Please confirm your password';
  }
  if (value != originalPassword) {
    return 'Passwords do not match';
  }
  return null;
}
