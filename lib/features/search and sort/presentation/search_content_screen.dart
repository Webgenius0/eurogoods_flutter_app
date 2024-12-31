import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchContentScreen extends StatefulWidget {
  const SearchContentScreen({super.key});

  @override
  _SearchContentScreenState createState() => _SearchContentScreenState();
}

class _SearchContentScreenState extends State<SearchContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Column(
          children: [
            UIHelper.verticalSpace(24.h),
            Row(
              children: [
                Transform.translate(
                  offset: Offset(-8.w, 0),
                  child: InkWell(
                    onTap: () {
                      NavigationService.goBack();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: SvgPicture.asset(Assets.icons.arrowBack),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.c01779D, width: 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UIHelper.horizontalSpace(8.w),
                        InkWell(
                          onTap: () {
                            // NavigationService.navigateTo(Routes.searchScreen);
                          },
                          child: SvgPicture.asset(
                            Assets.icons.searchNormal,
                          ),
                        ),
                        UIHelper.horizontalSpace(4.h),
                        // Text(
                        //   "Coca-Cola",
                        //   style: TextFontStyle.textStyle24c848585PoppinsW400
                        //       .copyWith(
                        //           fontWeight: FontWeight.w400,
                        //           color: AppColors.c848585.withOpacity(0.7),
                        //           fontSize: 14),
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                        Expanded(
                          child: TextField(
                            // Attach the controller
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 14.h),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.asset(Assets.icons.filterBlack),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //----------how much item it gets show bellow ---------
            UIHelper.verticalSpace(16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Results for Coca-Cola",
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c000000,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "45 Item’s founds",
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: AppColors.c000000,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
