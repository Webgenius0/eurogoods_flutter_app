import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'Favourite',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
          onPressed: () => NavigationService.goBack(),
          icon: SvgPicture.asset(Assets.icons.arrowBack),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.all(8.0),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      height: 98.0, // Adjust as per your requirements
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors
                            .grey.shade300, // Replace with AppColors.cC7D3D7
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 82.0,
                            width: 82.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.85),
                              color: Colors
                                  .white, // Replace with AppColors.cFFFFFF
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    Assets.images.cocaKola
                                        .path, // Replace with Assets.images.cocaKola.path
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  top: 1.0,
                                  right: -4.0,
                                  child: SvgPicture.asset(
                                    'assets/icons/love_bg.svg', // Replace with Assets.icons.loveBg
                                    height: 16.0,
                                    width: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Container(
                              height: 82.0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.85),
                                color: Colors
                                    .white, // Replace with AppColors.cFFFFFF
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'C001',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black.withOpacity(
                                              0.7), // Replace with AppColors.c000000
                                        ),
                                      ),
                                      Text(
                                        'Cs Qty: 8',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black.withOpacity(
                                              0.7), // Replace with AppColors.c000000
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    'Coca Cola 8/2 Liter',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      color: Colors
                                          .black87, // Replace with AppColors.c17242B
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 83.0,
                                    height: 23.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28.0),
                                      color: AppColors.c01779D,
                                      // Replace with AppColors.c01779D
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add To Cart",
                                        style: TextFontStyle
                                            .textStyle24c848585PoppinsW400
                                            .copyWith(
                                          fontSize: 10.sp,
                                          color: AppColors.cFFFFFF,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
