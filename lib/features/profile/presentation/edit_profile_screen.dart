import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_datepicker_screen.dart';
import 'package:eurogoods/common_widgets/custom_textformfield.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        appBar: CustomAppBar(
            leading: IconButton(
                onPressed: () {
                  NavigationService.goBack;
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.c000000,
                )),
            title: Text(
              "Edit Profile",
              style: TextFontStyle.text18c17242BStylePopine500,
            )),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 120.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(Assets.images.profileImage.path),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 87.h,
                    left: 193.w,
                    child: SvgPicture.asset(Assets.icons.editProfilePic))
              ],
            ),
            UIHelper.verticalSpace(65.h),
            Text(
              "Name",
              style: TextFontStyle.text14c000000StylePopine400,
            ),
            UIHelper.verticalSpace(5.h),
            CustomTextFormField(
              hintText: 'Username or Email',
              backgroundColor: AppColors.cFFFFFF,
              borderColor: AppColors.c02344A,
              iconColor: AppColors.c02344A,
              hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name or email';
                }
                return null;
              },
            ),
            UIHelper.verticalSpace(20.h),
            Text(
              "Email",
              style: TextFontStyle.text14c000000StylePopine400,
            ),
            UIHelper.verticalSpace(5.h),
            CustomTextFormField(
              hintText: 'user@user.com',
              backgroundColor: AppColors.cFFFFFF,
              borderColor: AppColors.c02344A,
              iconColor: AppColors.c02344A,
              hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name or email';
                }
                return null;
              },
            ),
            UIHelper.verticalSpace(20.h),
            Text(
              "Phone Number",
              style: TextFontStyle.text14c000000StylePopine400,
            ),
            UIHelper.verticalSpace(5.h),
            IntlPhoneField(
              validator: (value) {
                if (value == null || !value.isValidNumber()) {
                  return 'Please enter a valid phone number';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              initialCountryCode: 'BD',
              dropdownIconPosition: IconPosition.trailing,
              dropdownDecoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(8.r),
              ),
              decoration: InputDecoration(
                fillColor: AppColors.cFFFFFF,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: AppColors.c000000),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: AppColors.c000000),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: AppColors.c000000),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              languageCode: "en",
              onCountryChanged: (country) {},
            ),
            Text(
              "Date of Birth",
              style: TextFontStyle.text18c17242BStylePopine500,
            ),
            UIHelper.verticalSpace(5.h),
            const CustomDatePickerField(
              hintText: "1 January, 2003",
              borderColor: AppColors.c02344A,
            ),
          ],
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            NavigationService.navigateTo(Routes.bottomNavBar);
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
                  "Update",
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.cFFFFFF,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ));
  }
}
