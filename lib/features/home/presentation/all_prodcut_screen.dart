import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_productcard.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AllProdcutScreen extends StatefulWidget {
  const AllProdcutScreen({super.key});

  @override
  _AllProdcutScreenState createState() => _AllProdcutScreenState();
}

class _AllProdcutScreenState extends State<AllProdcutScreen> {
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
      appBar: CustomAppBar(
        isCentered: false,
        title: Text(
          'All Products',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(Assets.icons.arrowBack)),
      ),
      backgroundColor: AppColors.cF5F5F5,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.verticalSpace(28.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "45 Item’s",
                  style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.c000000),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              GridView.builder(
                shrinkWrap:
                    true, // Makes the GridView take only as much space as needed
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents the grid from scrolling independently
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.70,
                ),
                itemCount: beverageList.length,
                itemBuilder: (context, idx) {
                  final product = beverageList[idx];
                  return InkWell(
                    onTap: () {
                      NavigationService.navigateTo(Routes.productDetailsScreen);
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
            ],
          ),
        ),
      ),
    );
  }
}
