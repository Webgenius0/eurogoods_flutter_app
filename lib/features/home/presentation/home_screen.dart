import 'dart:math';
import 'package:eurogoods/common_widgets/custom_productcard.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/features/home/widgets/categories_button.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
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
  bool toogleWishList = true;

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
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(23.r),
              bottomRight: Radius.circular(23.r),
            ),
            child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.allPrimaryColor,
                flexibleSpace: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 56.h, horizontal: 21.w),
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
                              child: InkWell(
                                onTap: () {
                                  NavigationService.navigateTo(
                                      Routes.searchScreen);
                                },
                                child: SvgPicture.asset(
                                  Assets.icons.search,
                                  // height: 16.h,
                                  // width: 16.h,
                                ),
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
                            .copyWith(
                                fontSize: 14.sp, color: AppColors.cFFFFFF),
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
                                      color: AppColors.cFFFFFF,
                                      fontSize: 20.sp)),
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
                )),
          )),
      backgroundColor: AppColors.cF5F5F5,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.verticalSpace(32.h),
              //----------------------card---------------------
              SizedBox(
                height: 250.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: beverageList.length,
                  itemBuilder: (context, index) {
                    final product = beverageList[index];
                    return Padding(
                      padding: EdgeInsets.only(
                          right: 20.w), // Add horizontal spacing
                      child: InkWell(
                        onTap: () {
                          NavigationService.navigateTo(
                              Routes.productDetailsScreen);
                        },
                        child: ProductCard(
                          imagePath: product['image'],
                          productName: product['name'],
                          productCode: product['productId'],
                          productQuantity: product['quantity'].toString(),
                          isSwitchedToQuantityCount:
                              false, // Set this based on your logic
                          onAddPressed: () {
                            // Add action for adding product
                          },
                          onIncrease: () {
                            // Action for increasing quantity
                          },
                          onDecrease: () {
                            // Action for decreasing quantity
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),

              UIHelper.verticalSpace(30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Categories",
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                        color: AppColors.c000000,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500)),
              ),
              UIHelper.verticalSpace(16.h),
              // -------------------Categories --------------------------
              Wrap(
                spacing: 7.0, // Horizontal spacing
                runSpacing: 1.0, // Vertical spacing
                children: [
                  categoriesButton('All', selected: true),
                  categoriesButton('Special'),
                  categoriesButton('Water'),
                  categoriesButton('Coca-Cola'),
                  categoriesButton('Calypso'),
                  categoriesButton('Vitamin Water'),
                  categoriesButton('Energy Drinks'),
                  categoriesButton('Snapple'),
                  categoriesButton('Arizona'),
                  categoriesButton('Sparking Water'),
                  categoriesButton('Pepsi'),
                  categoriesButton('Paper Product'),
                  categoriesButton('Coffee'),
                  categoriesButton('Eggs'),
                  categoriesButton('Kosher Soda'),
                  categoriesButton('Other'),
                ],
              ),

              UIHelper.verticalSpace(28.h),

              GestureDetector(
                onTap: () {
                  NavigationService.navigateTo(Routes.allProdcutScreen);
                },
                child: Align(
                  alignment:
                      Alignment.centerRight, // Aligns the text to the left
                  child: Text("View All Products",
                      style: TextFontStyle.textStyle24c848585PoppinsW400
                          .copyWith(
                              fontSize: 14.sp, fontWeight: FontWeight.w500)),
                ),
              ),
              UIHelper.verticalSpace(10.h),
              //-----------------Products--------------
              SizedBox(
                height: 550.h,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.62,
                  ),
                  itemCount: min(beverageList.length, 4),
                  itemBuilder: (context, idx) {
                    final product = beverageList[idx];
                    return InkWell(
                      onTap: () {
                        NavigationService.navigateTo(
                            Routes.productDetailsScreen);
                      },
                      child: ProductCard(
                        imagePath: product['image'],
                        productName: product['name'],
                        productCode: product['productId'],
                        productQuantity: product['quantity'].toString(),
                        isSwitchedToQuantityCount:
                            false, // Set this based on your logic
                        onAddPressed: () {
                          // Add action for adding product
                        },
                        onIncrease: () {
                          // Action for increasing quantity
                        },
                        onDecrease: () {
                          // Action for decreasing quantity
                        },
                      ),
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
