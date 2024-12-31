import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_widgets/custom_textformfield.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/navigation_service.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          isCentered: true,
          leading: IconButton(
              onPressed: () => NavigationService.goBack,
              icon: SvgPicture.asset(Assets.icons.arrowBack)),
          title: Text(
            "Add new Address",
            style: TextFontStyle.textStyle12c02344APoppinsW400
                .copyWith(fontSize: 18.sp, color: AppColors.c17242B),
          )),
      body: SafeArea(
          child: GestureDetector(
        onTap: () {
          _showBottomSheet(context);
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.locationImage.path),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
          ),
        ),
      )),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              )),
          height: 400.h,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(40.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Address Details",
                    style: TextFontStyle.textStyle14c3B3B3BPoppinsW500
                        .copyWith(color: AppColors.c17242B, fontSize: 18.sp),
                  ),
                ),
                UIHelper.verticalSpace(20.h),
                Divider(
                  thickness: 2.w,
                  height: 2.h,
                ),
                UIHelper.verticalSpace(40.h),
                Text(
                  "Name Address",
                  style: TextFontStyle.textStyle14c3B3B3BPoppinsW500
                      .copyWith(fontSize: 14.sp, color: AppColors.c000000),
                ),
                UIHelper.verticalSpace(12.h),
                CustomTextFormField(
                  hintText: 'Apartment',
                  // prefixIcon: Assets.icons.user,
                  backgroundColor: AppColors.cFFFFFF,
                  borderColor: AppColors.c02344A,
                  iconColor: AppColors.c02344A,
                  hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                  //controller: nameOrEmailController,
                  /* validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name or email';
                          }
                          return null;
                        }, */
                ),
                UIHelper.verticalSpace(20.h),
                Text(
                  "Name Address",
                  style: TextFontStyle.textStyle14c3B3B3BPoppinsW500
                      .copyWith(fontSize: 14.sp, color: AppColors.c000000),
                ),
                UIHelper.verticalSpace(12.h),
                CustomTextFormField(
                  hintText: '2464 Royal Ln. Mesa, New Jersey 45463',
                  // prefixIcon: Assets.icons.user,
                  backgroundColor: AppColors.cFFFFFF,
                  borderColor: AppColors.c02344A,
                  iconColor: AppColors.c02344A,
                  hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                  //controller: nameOrEmailController,
                  /* validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name or email';
                          }
                          return null;
                        }, */
                ),
                UIHelper.verticalSpace(20.h),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h
                    ),
                   // height: 55.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF39CDFD), // Gradient color 1
                          Color(0xFF0680A6), // Gradient color 2
                        ],
                        begin: Alignment.topLeft, // Gradient start
                        end: Alignment.bottomRight, // Gradient end
                      ),
                      borderRadius: BorderRadius.circular(
                          47.r), // You can adjust the radius
                    ),
                    child: Text(
                      "Add",
                      style: TextFontStyle.textStyle14c3B3B3BPoppinsW500.copyWith(color: AppColors.cFFFFFF,fontSize: 15.sp),
                    ),
                  ),
                )
              ]),
        );
      },
    );
  }
}
