import 'package:eurogoods/constants/app_constants.dart';
import 'package:eurogoods/helpers/di.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    appData.write(kKeyfirstTime, false);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          // OnBoardingWidget(onDone: () {
          //   Get.to(SignInScreen());
          // }),
        ],
      ),
    ));
  }
}
