import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productCode;
  final String productQuantity;
  final bool isSwitchedToQuantityCount;
  final VoidCallback onAddPressed;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productCode,
    required this.productQuantity,
    this.isSwitchedToQuantityCount = false,
    required this.onAddPressed,
    required this.onIncrease,
    required this.onDecrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234.h,
      width: 157.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            right: 25,
            child: SvgPicture.asset(
              'assets/icons/love_bg.svg',
              height: 12,
              width: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 19),
                Image.asset(
                  imagePath,
                  width: 90,
                  height: 90,
                ),
                SizedBox(height: 26),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    productName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productCode,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "Cs Qty: $productQuantity",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                isSwitchedToQuantityCount
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: onDecrease,
                            child: Container(
                              height: 24,
                              width: 25,
                              color: Colors.grey[300],
                              child: const Center(
                                child: Text("-"),
                              ),
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 25,
                            color: Colors.grey[200],
                            child: const Center(
                              child: Text("1"),
                            ),
                          ),
                          GestureDetector(
                            onTap: onIncrease,
                            child: Container(
                              height: 24,
                              width: 25,
                              color: Colors.grey[300],
                              child: const Center(
                                child: Text("+"),
                              ),
                            ),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: onAddPressed,
                        child: Container(
                          height: 26,
                          width: 141,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF39CDFD),
                                Color(0xFF0680A6),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(47),
                          ),
                          child: const Text(
                            "Add     +",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
