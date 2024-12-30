import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(201.h),
          child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.allPrimaryColor,
              flexibleSpace: Padding(
                padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 21.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40.h,
                      width: 333.w,
                      decoration: BoxDecoration(
                        color: AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              Assets.icons.search,
                              // height: 16.h,
                              // width: 16.h,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              // controller: _searchController,
                              // onChanged: _updateSearchQuery,
                              decoration: InputDecoration(
                                hintText: 'Search your product...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                // _searchController.clear();
                                // _updateSearchQuery('');
                              },
                              child: GestureDetector(
                                  onTap: () {
                                    // NavigationService.navigateTo(
                                    //     Routes.filterScreen);
                                  },
                                  child: InkWell(
                                      onTap: () {
                                        // NavigationService.navigateTo(
                                        //     Routes.filterScreen);
                                      },
                                      child: SvgPicture.asset(
                                          Assets.icons.filter))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpace(16.h),
                    Text(
                      "Current Location",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(fontSize: 14.sp, color: AppColors.cFFFFFF),
                    ),
                    UIHelper.verticalSpace(4.h),

                    ///<<<<<<<<<-----------Location-------------------->>>>>>>>>>
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("California USA",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.cFFFFFF, fontSize: 20.sp)),
                        UIHelper.horizontalSpace(12.w),
                        SvgPicture.asset(
                          Assets.icons.location,
                          width: 16.sp,
                          height: 16.sp,
                        )
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
