import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        child: SvgPicture.asset(Assets.icons.filter))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
