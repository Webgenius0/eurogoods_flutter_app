import 'package:eurogoods/common_widgets/custom_appbar.dart';
import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/common_widgets/custom_horizontal_divider.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: CustomAppBar(
        isCentered: true,
        title: Text(
          'Product Details',
          style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c17242B),
        ),
        leading: IconButton(
            onPressed: () => NavigationService.goBack,
            icon: SvgPicture.asset(
              Assets.icons.arrowBack,
            )),
        actions: [
          IconButton(
            onPressed: () {
              // Your action logic
              print("Add button pressed");
            },
            icon: Icon(
              Icons.add,
              size: 17.5.sp, // Use sp for responsive font sizes
              //color: AppColors.c000000,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.cF6F6F6,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.verticalSpace(20.h),
              Container(
                height: 268.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.cFFFFFF,
                ),
                child: Center(
                  child: Image.asset(
                    Assets.images.cocaKola.path,
                    fit: BoxFit.cover,
                    height: 183.h,
                  ),
                ),
              ),
              UIHelper.verticalSpace(12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Assets.icons.imagebackward),
                  SvgPicture.asset(Assets.icons.imageforward),
                ],
              ),
              UIHelper.verticalSpace(8.h),
              Text("Coca Cola 8/2 Liter"),
              UIHelper.verticalSpace(20.h),
              const CustomHorizontalDivider(),
              UIHelper.verticalSpace(21.h),
              //-----------------Quantity and Price ---------------------//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "QUANTITY",
                    style: TextFontStyle.textStyle24c848585PoppinsW400
                        .copyWith(fontSize: 16.sp, color: AppColors.c777777),
                  ),
                  Text(
                    "PRICE",
                    style: TextFontStyle.textStyle24c848585PoppinsW400
                        .copyWith(fontSize: 16.sp, color: AppColors.c777777),
                  ),
                ],
              ),
              //Increase decrease of quantity------------------------
              UIHelper.verticalSpace(4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Assets.icons.minusWithBorder),
                      UIHelper.horizontalSpace(15.w),
                      Text(
                        "1",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: AppColors.c181725),
                      ),
                      UIHelper.horizontalSpace(15.w),
                      SvgPicture.asset(Assets.icons.plusWithBorder),
                    ],
                  ),

                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "\$10",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c000000,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: " \/ ltr",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                                color: AppColors.c000000,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500))
                  ]))
                  // Text(
                  //   "\$10 / ltr",
                  // )
                ],
              ),
              UIHelper.verticalSpace(21.h),
              const CustomHorizontalDivider(),
              UIHelper.verticalSpace(24.h),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Detail",
                    style: TextFontStyle.textStyle24c848585PoppinsW400
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  )),

              UIHelper.verticalSpace(10.h),
              Text(
                "Bell Pepper Red is a vibrant and flavorful vegetable known for its sweet taste and crisp texture. This variety of pepper is a popular choice in culinary dishes due to its versatility and nutritional benefits. It adds a burst of color and taste to salads, stir-fries, soups, and other dishes.",
                style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.c777777),
              ),
              UIHelper.verticalSpace(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Item Code: C001",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "UPC: 049000050103",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Stock : 3Items Left",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pieces in a Case: 8",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Brand: Coca-Cola",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Department: Coca-Cola",
                        style: TextFontStyle.textStyle24c848585PoppinsW400
                            .copyWith(
                          color: AppColors.c777777,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 21, right: 21, bottom: 33),
        child: CustomButton(
          text: "Add To Cart",
          onPressed: () {
            // NavigationService.navigateTo(
            //     Routes.createAccountScreen);
          },
          style: TextFontStyle.textStyle36c0E4F6MontserratW700.copyWith(
              color: AppColors.cFFFFFF,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
