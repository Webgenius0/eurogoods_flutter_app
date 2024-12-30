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
  bool isSwitchedToQuantityCount = true;

  List<Map<String, dynamic>> beverageList = [
    {
      'name': 'Coca Cola 8/2 Liter',
      'productId': 'C001',
      "quantity": 1,
      "image": Assets.images.cocaKola.path
    },
    {
      'name': 'Sprite 8/2 Liter',
      'productId': 'C003',
      "quantity": 1,
      "image": Assets.images.sprite.path
    },
    {
      'name': 'CF Diet Coke ',
      'productId': 'Soft Drink',
      "quantity": 1,
      "image": Assets.images.dietCoke.path
    },
    {
      'name': 'Coca Cola 8/2 Liter',
      'productId': 'Soft Drink',
      "quantity": 1,
      "image": Assets.images.cocaKola.path
    },
  ];

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
      backgroundColor: AppColors.cF5F5F5,
      body: Column(
        children: [
          UIHelper.verticalSpace(32.h),
          //----------------------card---------------------
          SizedBox(
            height: 260.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: beverageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: 4.w), // Add horizontal spacing
                  child: productCard(),
                );
              },
            ),
          )

          // Text("Categories"),
        ],
      ),
    );
  }

  Container productCard() {
    return Container(
      height: 234.h,
      width: 157.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.cFFFFFF,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.verticalSpace(19.h),
                Image.asset(
                  Assets.images.cocaKola.path,
                  width: 90.w,
                  height: 90.h,
                ),
                UIHelper.verticalSpace(26.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Coca Cola 8/2 Liter",
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.c000000),
                  ),
                ),
                UIHelper.verticalSpace(6.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "C001",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.c000000.withOpacity(0.7)),
                    ),
                    Text(
                      "Cs Qty: 8",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.c000000.withOpacity(0.7)),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(8.h),

                //------------------add button--------------
                isSwitchedToQuantityCount
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isSwitchedToQuantityCount =
                                !isSwitchedToQuantityCount;
                          });
                        },
                        child: Container(
                          height: 26.h,
                          width: 141.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF39CDFD),
                                Color(0xFF0680A6),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(47.r),
                          ),
                          child: Text(
                            "Add +",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                                    color: AppColors.cFFFFFF,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24.h,
                            width: 25.w,
                            color: AppColors.cEBECF0,
                            child: Center(
                              child: Text("+"),
                            ),
                          ),
                          Container(
                            height: 24.h,
                            width: 25.w,
                            color: AppColors.cF5F5F5,
                            child: Center(
                              child: Text("1"),
                            ),
                          ),
                          Container(
                            height: 24.h,
                            width: 25.w,
                            color: AppColors.cEBECF0,
                            child: Center(
                              child: Text("-"),
                            ),
                          )
                        ],
                      )

                //-----------------------increase/decrease quantity button -------------------------------
              ],
            ),
          )
        ],
      ),
    );
  }
}
