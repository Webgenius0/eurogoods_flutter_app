// ignore_for_file: deprecated_member_use
import 'package:auto_animated/auto_animated.dart';
import 'package:eurogoods/features/profile/presentation/change_address_screen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/di.dart';
import 'package:eurogoods/helpers/helper_methods.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/register_provider.dart';
import 'package:eurogoods/loading.dart';
import 'package:eurogoods/networks/dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await _requestPermissions();
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();

  DioSingleton.instance.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
            canPop: false,
            onPopInvokedWithResult: (bool didPop, _) async {
              showMaterialDialog(context);
            },
            child: GetMaterialApp(
                //    showPerformanceOverlay: true,
                theme: ThemeData(
                    unselectedWidgetColor: Colors.white,
                    useMaterial3: false,
                    scaffoldBackgroundColor: AppColors.cFFFFFF,
                    appBarTheme: const AppBarTheme(
                        color: AppColors.cFFFFFF, elevation: 0)),
                debugShowCheckedModeBanner: false,
                builder: (context, widget) {
                  return MediaQuery(
                      data: MediaQuery.of(context), child: widget!);
                },
                navigatorKey: NavigationService.navigatorKey,
                onGenerateRoute: RouteGenerator.generateRoute,
                home: ChangeAddressScreen()));
      },
    );
  }
}
