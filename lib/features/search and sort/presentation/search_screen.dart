import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/common_widgets/custom_horizontal_divider.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/features/home/widgets/categories_button.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  void _removeLastCharacter() {
    final text = _controller.text;
    if (text.isNotEmpty) {
      setState(() {
        _controller.text = text.substring(0, text.length - 1);
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      });
    }
  }

  final List<String> previousSearches = [
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
    "Harry Potter and the Half Blood Prince",
  ];

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
                              controller: _controller, // Attach the controller
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 14.h),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28.r),
                                    topRight: Radius.circular(28.r),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return SingleChildScrollView(
                                    child: Container(
                                      height: 800.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.cFFFFFF,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(28.r),
                                          topRight: Radius.circular(28.r),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            UIHelper.verticalSpace(61.h),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text("Sort & Filter",
                                                  style: TextFontStyle
                                                      .textStyle24c848585PoppinsW400
                                                      .copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: AppColors
                                                              .c17242B)),
                                            ),
                                            UIHelper.verticalSpace(20.h),
                                            const CustomHorizontalDivider(),
                                            UIHelper.verticalSpace(16.h),
                                            Text("Categories",
                                                style: TextFontStyle
                                                    .textStyle24c848585PoppinsW400
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            AppColors.c17242B)),
                                            Wrap(
                                              spacing:
                                                  6.0, // Horizontal spacing
                                              runSpacing:
                                                  1.0, // Vertical spacing
                                              children: [
                                                categoriesButton('All',
                                                    selected: true),
                                                categoriesButton('Special'),
                                                categoriesButton('Water'),
                                                categoriesButton('Coca-Cola'),
                                                categoriesButton(
                                                    'Energy Drinks'),
                                              ],
                                            ),
                                            UIHelper.verticalSpace(21.h),
                                            Text("Sort By",
                                                style: TextFontStyle
                                                    .textStyle24c848585PoppinsW400
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            AppColors.c17242B)),
                                            UIHelper.verticalSpace(16.h),
                                            Wrap(
                                              spacing:
                                                  4.0, // Horizontal spacing
                                              runSpacing:
                                                  1.0, // Vertical spacing
                                              children: [
                                                categoriesButton('All',
                                                    selected: true),
                                                categoriesButton('Special'),
                                                categoriesButton('Water'),
                                                categoriesButton('Coca-Cola'),
                                              ],
                                            ),
                                            UIHelper.verticalSpace(21.h),
                                            Text("Size In Litter",
                                                style: TextFontStyle
                                                    .textStyle24c848585PoppinsW400
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            AppColors.c17242B)),
                                            UIHelper.verticalSpace(16.h),
                                            Wrap(
                                              spacing:
                                                  4.0, // Horizontal spacing
                                              runSpacing:
                                                  1.0, // Vertical spacing
                                              children: [
                                                categoriesButton('All',
                                                    selected: true),
                                                categoriesButton('Special'),
                                                categoriesButton('Water'),
                                                categoriesButton('Coca-Cola'),
                                              ],
                                            ),
                                            UIHelper.verticalSpace(21.h),
                                            Text("Case in Quantity",
                                                style: TextFontStyle
                                                    .textStyle24c848585PoppinsW400
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            AppColors.c17242B)),
                                            Wrap(
                                              spacing:
                                                  4.0, // Horizontal spacing
                                              runSpacing:
                                                  1.0, // Vertical spacing
                                              children: [
                                                categoriesButton('8',
                                                    selected: true),
                                                categoriesButton('12'),
                                                categoriesButton('24'),
                                              ],
                                            ),
                                            UIHelper.verticalSpace(50.h),
                                            Row(
                                              children: [
                                                CustomButton(
                                                  text: "Submit",
                                                  onPressed: () {
                                                    // NavigationService.navigateTo(
                                                    //     Routes.createAccountScreen);
                                                  },
                                                  style: TextFontStyle
                                                      .textStyle36c0E4F6MontserratW700
                                                      .copyWith(
                                                          color:
                                                              AppColors.cFFFFFF,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                CustomButton(
                                                  text: "Submit",
                                                  onPressed: () {
                                                    // NavigationService.navigateTo(
                                                    //     Routes.createAccountScreen);
                                                  },
                                                  style: TextFontStyle
                                                      .textStyle36c0E4F6MontserratW700
                                                      .copyWith(
                                                          color:
                                                              AppColors.cFFFFFF,
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            icon: SvgPicture.asset(Assets.icons.filterBlack),
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent",
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.c000000),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        previousSearches.clear();
                      });
                    },
                    child: Text(
                      "Clear All",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.c000000),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(12.h),
              const CustomHorizontalDivider(),
              Expanded(
                child: previousSearches.isEmpty
                    ? Center(
                        child: Text(
                          "No previous searches",
                          style: TextFontStyle.textStyle24c848585PoppinsW400
                              .copyWith(fontSize: 14),
                        ),
                      )
                    : ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: previousSearches.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  previousSearches[index],
                                  style: TextFontStyle
                                      .textStyle24c848585PoppinsW400
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.c848585,
                                          fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: IconButton(
                                  icon:
                                      SvgPicture.asset(Assets.icons.crossIcon),
                                  onPressed: () {
                                    setState(() {
                                      previousSearches.removeAt(index);
                                    });
                                  },
                                ),
                              ),
                              UIHelper.verticalSpace(4.h),
                            ],
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
