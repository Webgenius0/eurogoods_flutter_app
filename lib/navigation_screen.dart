// ignore_for_file: deprecated_member_use
import 'package:eurogoods/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'gen/assets.gen.dart';
import 'gen/colors.gen.dart';
import 'helpers/helper_methods.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

final class BottomNavBar extends StatefulWidget {
  final int? pageNum;
  const BottomNavBar({
    super.key,
    this.pageNum,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<StatefulWidget> _screens = [
    WelcomeScreen(),
    WelcomeScreen(),
    WelcomeScreen(),
    WelcomeScreen(),
    WelcomeScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.pageNum ?? 0; // Use the pageNum or default to 0
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _screens[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 70.h,
          child: CustomNavigationBar(
            iconSize: 24.r,
            selectedColor: Colors.red,
            strokeColor: AppColors.allPrimaryColor,
            unSelectedColor: Colors.black,
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.home,
                  color: _currentIndex == 0
                      ? AppColors.allPrimaryColor
                      : AppColors.c5A5C5F,
                ),
                title: Text(
                  "${"Home"}",
                  // style: TextFontStyle.textStyle16cFFFFFFPoppinsW500.copyWith(
                  //   fontSize: 14.sp,
                  //   color: (_currentIndex == 0)
                  //       ? AppColors.allPrimaryColor
                  //       : AppColors.c5A5C5F,
                  // )
                ),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.home,
                  color: _currentIndex == 1
                      ? AppColors.allPrimaryColor
                      : AppColors.c5A5C5F,
                ),
                title: Text(
                  "Vocabulary",
                  // style: TextFontStyle.textStyle16cFFFFFFPoppinsW500.copyWith(
                  //   fontSize: 12.sp,
                  //   color: (_currentIndex == 1)
                  //       ? AppColors.allPrimaryColor
                  //       : AppColors.c5A5C5F,
                  // ),
                ),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.home,
                  color: _currentIndex == 2
                      ? AppColors.allPrimaryColor
                      : AppColors.c5A5C5F,
                ),
                title: Text(
                  "Remidation",
                  // style: TextFontStyle.textStyle16cFFFFFFPoppinsW500.copyWith(
                  //   fontSize: 12.sp,
                  //   color: (_currentIndex == 2)
                  //       ? AppColors.allPrimaryColor
                  //       : AppColors.c5A5C5F,
                  // ),
                ),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.home,
                  color: _currentIndex == 3
                      ? AppColors.allPrimaryColor
                      : AppColors.c5A5C5F,
                ),
                title: Text(
                  "Custom",
                  //   style: TextFontStyle.textStyle16cFFFFFFPoppinsW500.copyWith(
                  //       fontSize: 12.sp,
                  //       color: (_currentIndex == 3)
                  //           ? AppColors.allPrimaryColor
                  //           : AppColors.c5A5C5F,
                  //       overflow: TextOverflow.ellipsis),
                  // ),
                ),
                // CustomNavigationBarItem(
                //   icon: SvgPicture.asset(
                //     Assets.icons.user,
                //     color: _currentIndex == 4
                //         ? AppColors.allPrimaryColor
                //         : AppColors.c5A5C5F,
                //   ),
                //   title: Text(
                //     "Profile",
                //     style: TextFontStyle.textStyle16cFFFFFFPoppinsW500.copyWith(
                //       fontSize: 12.sp,
                //       color: (_currentIndex == 4)
                //           ? AppColors.allPrimaryColor
                //           : AppColors.c5A5C5F,
                //     ),
                //   ),
                // ),
              )
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
