import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangeAddressScreen extends StatefulWidget {
  const ChangeAddressScreen({super.key});

  @override
  State<ChangeAddressScreen> createState() => _ChangeAddressScreenState();
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  TextEditingController addressNameController = TextEditingController();
  TextEditingController addressDetailsController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F6F6,
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Change Address',
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
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.location),
                    UIHelper.horizontalSpace(9.h),
                    Text(
                      '3517 W. Gray St. Utica, Pennsylvania 57867',
                      style:
                          TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c17242B,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(28.h),
                Text(
                  'Name Address',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    color: AppColors.c000000,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                TextFormField(
                  controller: addressNameController,
                  cursorColor: AppColors.cF5F5F5,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: 'Apartment',
                    hintStyle:
                        TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c000000,
                      fontSize: 12.sp,
                    ), // Hint text color
                    filled: true,

                    fillColor: Colors.white, // Background color
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(8.r), // Rounded corners
                      borderSide: BorderSide(
                        color: Colors.transparent, // Border color
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(
                        color:
                            Colors.transparent, // Border color when not focused
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(
                        color: AppColors
                            .allPrimaryColor, // Border color when focused
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Address Details',
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    color: AppColors.c000000,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                TextFormField(
                  controller: addressNameController,
                  cursorColor: AppColors.cF5F5F5,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: '2464 Royal Ln. Mesa, New Jersey 45463',
                    hintStyle:
                        TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c000000,
                      fontSize: 12.sp,
                    ), // Hint text color
                    filled: true,

                    fillColor: Colors.white, // Background color
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(8.r), // Rounded corners
                      borderSide: BorderSide(
                        color: Colors.transparent, // Border color
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(
                        color:
                            Colors.transparent, // Border color when not focused
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(
                        color: AppColors
                            .allPrimaryColor, // Border color when focused
                        width: 1.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          NavigationService.navigateTo(Routes.loginScreen);
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
                "Change Address",
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
