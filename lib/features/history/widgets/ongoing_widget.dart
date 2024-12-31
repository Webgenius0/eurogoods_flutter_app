import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryWidget extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'id': 'ID-CC1033438',
      'date': 'Oct 24, 2024 12:30',
      'price': '\$400',
      'details': '3x Clear Lemon, 5x energy drinks',
      'status': 'Completed',
    },
    {
      'id': 'ID-CC1033439',
      'date': 'Oct 23, 2024 15:45',
      'price': '\$200',
      'details': '2x Cola, 10x Snacks',
      'status': 'Completed',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 37.h),
        child: ListView.builder(
          itemCount: 3, // Number of items in the list
          itemBuilder: (context, index) {
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
                            'ID-CC1033438',
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c000000,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$400',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c17242B,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Oct 24, 2024 12:30',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '3x Clear Lemon, 5x energy drinks',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Completed',
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c1DB435,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1, color: Colors.grey[300]),
                  SizedBox(height: 8),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
