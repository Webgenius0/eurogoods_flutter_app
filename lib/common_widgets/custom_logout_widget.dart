import 'package:eurogoods/common_widgets/customs_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLogoutWidget extends StatelessWidget {
  CustomLogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 226.h,
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UIHelper.verticalSpace(10.h),
          Container(
            height: 4.h,
            width: 48.w,
            decoration: BoxDecoration(
              color: AppColors.cD9D9D9,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          UIHelper.verticalSpace(20.h),
          Text(
            'Log Out',
            style: TextFontStyle.text14c000000StylePopine400.copyWith(
                fontSize: 18.sp,
                color: AppColors.cE00000,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.4.sp),
          ),
          UIHelper.verticalSpace(16.h),
          Divider(
            color: AppColors.c17242B.withOpacity(0.4),
            thickness: .8.sp,
          ),
          UIHelper.verticalSpace(10.h),
          Text('Are you sure you want to log out?',
              style: TextFontStyle.text14c000000StylePopine400.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.c17242B)),
          UIHelper.verticalSpace(25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomsButton(
                name: 'Cancel',
                bgColor: AppColors.cEAFEFF,
                textStyle: TextFontStyle.text14c000000StylePopine400.copyWith(
                  color: AppColors.c01779D,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  height: 1.5,
                ),
                callback: () {
                  print('Login functionality will be implement here.');
                  NavigationService.goBack;
                },
                textColor: AppColors.allPrimaryColor,
                borderColor: Colors.transparent,
              ),
              UIHelper.horizontalSpace(31.w),
              CustomsButton(
                  name: 'Yes, Logout',
                  bgColor: AppColors.allPrimaryColor,
                  callback: () async {
                    // await postLogoutRX.postLogout().waitingForFutureWithoutBg().then((succes){
                    //   appData.erase();
                    //   DioSingleton.instance.update('');
                    //   NavigationService.navigateToUntilReplacement(Routes.signin);
                    // });
                    NavigationService.navigateToReplacement(Routes.loginScreen);
                  },
                  textStyle: TextFontStyle.text14c000000StylePopine400.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      fontStyle: FontStyle.normal),
                  textColor: Colors.transparent),
            ],
          ),
          UIHelper.verticalSpace(15.h),
        ],
      ),
    );
  }
}
