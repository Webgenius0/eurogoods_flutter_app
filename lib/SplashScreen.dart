import 'package:eurogoods/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Configure the status bar style to remove shadows
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        // backgroundColor: AppColors.allPrimaryColor,
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                Assets.images.onsplash
                    .path, // Replace with your background image asset
                fit: BoxFit.cover,
              ),
            ),

            // Foreground content
            Center(
              child: Image.asset(
                Assets.images.splash.path,
                height: 98.h,
                width: 210.7.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
