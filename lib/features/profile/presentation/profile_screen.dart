import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_listtile_widget.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.c000000,
              )),
          title: Text(
            "Profile",
            style: TextFontStyle.text18c17242BStylePopine500,
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        children: [
          Container(
            height: 120.h,
            width: 120.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.images.profileImage.path))),
          ),
          UIHelper.verticalSpace(8.h),
          Center(
              child: Text(
            "Jane Cooper",
            style: TextFontStyle.text18c17242BStylePopine500
                .copyWith(fontSize: 14.sp),
          )),
          UIHelper.verticalSpace(5.h),
          Center(
              child: Text(
            "Jane.cooper@example.com",
            style: TextFontStyle.text18c17242BStylePopine500
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w300),
          )),
          UIHelper.verticalSpace(20.h),
          CustomListtileWidget(
            leftIconPath: Assets.icons.editProfile,
            rightIconPath: Assets.icons.arrowRight,
            text: "Edit Profile",
            onTap: () {
              NavigationService.navigateTo(Routes.editProfile);
            },
          ),
          UIHelper.verticalSpace(20.h),
          GestureDetector(
            onTap: () =>
                NavigationService.navigateTo(Routes.AddNewAddressScreen),
            child: CustomListtileWidget(
                leftIconPath: Assets.icons.locationOn,
                rightIconPath: Assets.icons.arrowRight,
                text: "Address"),
          ),
          UIHelper.verticalSpace(20.h),
          GestureDetector(
            onTap: () =>
                NavigationService.navigateTo(Routes.changePasswordScreen),
            child: CustomListtileWidget(
                leftIconPath: Assets.icons.changePassword,
                rightIconPath: Assets.icons.arrowRight,
                text: "Change password"),
          ),
          UIHelper.verticalSpace(20.h),
          CustomListtileWidget(
              leftIconPath: Assets.icons.notification,
              rightIconPath: Assets.icons.arrowRight,
              text: "Notification"),
          UIHelper.verticalSpace(20.h),
          GestureDetector(
            onTap: () => NavigationService.navigateTo(Routes.helpCenter),
            child: CustomListtileWidget(
                leftIconPath: Assets.icons.help,
                rightIconPath: Assets.icons.arrowRight,
                text: "Help Center"),
          ),
          UIHelper.verticalSpace(20.h),
          CustomListtileWidget(
              leftIconPath: Assets.icons.payment,
              rightIconPath: Assets.icons.arrowRight,
              text: "Payment"),
          UIHelper.verticalSpace(20.h),
          GestureDetector(
            onTap: () => NavigationService.navigateTo(Routes.favouriteScreen),
            child: CustomListtileWidget(
                leftIconPath: Assets.icons.favorite,
                rightIconPath: Assets.icons.arrowRight,
                text: "Favorite"),
          ),
          UIHelper.verticalSpace(20.h),
          CustomListtileWidget(
            isLogoutText: true,
            leftIconPath: Assets.icons.logOut,
            rightIconPath: Assets.icons.arrowRight,
            text: "Log Out",
            onTap: () {
              NavigationService.navigateToReplacement(Routes.welcomeScreen);
            },
          ),
        ],
      ),
    );
  }
}
