import 'package:eurogoods/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [Text("Hello")],
        ),
      )),
    );
  }
}
