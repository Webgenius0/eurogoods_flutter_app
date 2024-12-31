// ignore_for_file: deprecated_member_use
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/features/history/presentation/history_screen.dart';
import 'package:eurogoods/features/home/presentation/home_screen.dart';
import 'package:eurogoods/features/my_cart/presentation/my_cart_screen.dart';
import 'package:eurogoods/features/profile/presentation/profile_screen.dart';
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
    HomeScreen(),
    MyCartScreen(),
    HistoryScreen(),
    ProfileScreen(),
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
            iconSize: 24..sp,
            strokeColor: AppColors.c01779D,
            unSelectedColor: AppColors.c17242B,
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.categories,
                  color: _currentIndex == 0
                      ? AppColors.c01779D
                      : AppColors.c17242B,
                ),
                title: Text('Categories',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: _currentIndex == 0
                          ? AppColors.c01779D
                          : AppColors.c17242B,
                      fontSize: 10.sp,
                    )),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.cart,
                  color: _currentIndex == 1
                      ? AppColors.c01779D
                      : AppColors.c17242B,
                ),
                title: Text('My Cart',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: _currentIndex == 1
                          ? AppColors.c01779D
                          : AppColors.c17242B,
                      fontSize: 10.sp,
                    )),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.history,
                  color: _currentIndex == 2
                      ? AppColors.c01779D
                      : AppColors.c17242B,
                ),
                title: Text('History',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: _currentIndex == 2
                          ? AppColors.c01779D
                          : AppColors.c17242B,
                      fontSize: 10.sp,
                    )),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.profile,
                  color: _currentIndex == 3
                      ? AppColors.c01779D
                      : AppColors.c17242B,
                ),
                title: Text('Profile',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      color: _currentIndex == 3
                          ? AppColors.c01779D
                          : AppColors.c17242B,
                      fontSize: 10.sp,
                    )),
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
