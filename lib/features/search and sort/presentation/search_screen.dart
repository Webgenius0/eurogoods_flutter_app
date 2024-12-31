import 'package:eurogoods/common_widgets/custom_horizontal_divider.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/features/home/presentation/product_details_screen.dart';
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
                              height: 16.w,
                              width: 16.w,
                            ),
                          ),
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
                            onPressed: _removeLastCharacter,
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
