import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OngoingWidget extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'id': 'ID-CC1033438',
      'date': 'Oct 24, 2024 12:30',
      'price': '\$400',
      'details': '3x Clear Lemon, 5x energy drinks',
      'status': 'SHIPPED',
    },
    {
      'id': 'ID-CC1033439',
      'date': 'Oct 23, 2024 15:45',
      'price': '\$200',
      'details': '2x Cola, 10x Snacks',
      'status': 'SHIPPED',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 37.h),
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: orders.length, // Number of items in the list
          itemBuilder: (context, index) {
            final data = orders[index];

            return GestureDetector(
              onTap: () =>
                  NavigationService.navigateTo(Routes.orderDetailsScreen),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['id'],
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c000000,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          UIHelper.verticalSpace(4.h),
                          Text(data['date'],
                              style: TextFontStyle.textStyle24c848585PoppinsW400
                                  .copyWith(
                                color: AppColors.c000000,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              )),
                        ],
                      ),
                      Text(
                        data['price'],
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c17242B,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data['details'],
                          style: TextFontStyle.textStyle24c848585PoppinsW400
                              .copyWith(
                            color: AppColors.c17242B,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          )),
                      Text(
                        data['status'],
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c055AD9,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(16.h),
                  Divider(thickness: 1, color: Colors.grey[300]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
