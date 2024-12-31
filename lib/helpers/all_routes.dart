// ignore_for_file: unused_element

import 'dart:io';

import 'package:eurogoods/features/history/presentation/order_details.dart';
import 'package:eurogoods/features/home/presentation/all_prodcut_screen.dart';
import 'package:eurogoods/features/home/presentation/home_screen.dart';
import 'package:eurogoods/features/home/presentation/product_details_screen.dart';
import 'package:eurogoods/features/my_cart/presentation/add_new_card.dart';
import 'package:eurogoods/features/my_cart/presentation/checkout_screen.dart';
import 'package:eurogoods/features/my_cart/presentation/payment_screen.dart';
import 'package:eurogoods/features/my_cart/presentation/save_card.dart';
import 'package:eurogoods/features/search%20and%20sort/presentation/search_screen.dart';
import 'package:eurogoods/navigation_screen.dart';
import 'package:eurogoods/features/onboarding/presentation/auth/forgot_password/forgot_password.dart';
import 'package:eurogoods/features/onboarding/presentation/auth/sign_up/sign_up_screen.dart';
import 'package:eurogoods/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String loginSwapScreen = '/loginSwapScreen';
  static const String profileScreen = '/profileScreen';
  static const String notificationScreen = '/notoficationScreen';
  static const String settingScreen = '/settingScreen';
  static const String updateProfileScreen = '/updateProfileScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String privacyScreen = '/privacyScreen';
  static const String vocabularyScreen = '/vocabulary_screen';
  static const String vocabularyFlash = '/vocabularyFlash';
  static const String vocabularyCheck = '/vocabularyCheck';
  static const String defination = '/defination';
  static const String congratulationScreen = '/congratulationScreen';
  static const String bottomNav = '/bottomNav';
  static const String customWordListScreen = '/customWordListScreen';
  static const String remediationScreen = '/remediationScreen';
  static const String createCustomWordListScreen =
      '/createCustomWordListScreen';
  static const String editOrDeleteScreen = '/editOrDeleteScreen';
  static const String home = '/home';
  static const String remidation = '/remidation';
  static const String howToUseBitWord = '/howToUseBitWord';
  static const String settingsScreen = '/settingsScreen';
  static const String changeUserProfile = '/changeUserProfile';
  // static const String forgetPassword = '/forgetPassword';
  static const String signup = '/signup';
  static const String signin = '/signin';
  static const String verification = '/verification';
  static const String newPassSet = '/new_pass_set';
  static const String forgotPassword = '/forgotPassword';
  static const String bottomNavBar = '/bottomNavBar';
  static const String homeScreen = '/homeScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String allProdcutScreen = '/allProdcutScreen';
  static const String paymentScreen = '/paymentScreen';
  static const String productDetailsScreen = '/productDetailsScreen';
  static const String searchScreen = '/searchScreen';
  static const String saveCard = '/saveCard';
  static const String addNewCardScreen = '/addNewCardScreen';
  static const String orderDetailsScreen = '/orderDetailsScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.forgotPassword:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ForgotPassword(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ForgotPassword());

      case Routes.signup:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SignUpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SignUpScreen());

      case Routes.bottomNavBar:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: BottomNavBar(), settings: settings)
            : CupertinoPageRoute(builder: (context) => BottomNavBar());

      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HomeScreen());

      case Routes.welcomeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: WelcomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => WelcomeScreen());

      case Routes.checkoutScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: CheckoutScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CheckoutScreen());

      case Routes.allProdcutScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: AllProdcutScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AllProdcutScreen());

      case Routes.paymentScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: PaymentScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => PaymentScreen());

      case Routes.productDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ProductDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ProductDetailsScreen());

      case Routes.searchScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SearchScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SearchScreen());

      case Routes.saveCard:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SaveCard(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SaveCard());

      case Routes.addNewCardScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: AddNewCardScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AddNewCardScreen());

      case Routes.orderDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: OrderDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OrderDetailsScreen());

      // case Routes.defination:
      // final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: VocabularyDefinitionScreen(
      //             getWord:args ["get_word"],
      //           ), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => VocabularyDefinitionScreen(
      //             getWord:args ["get_word"],
      //           ));
      // case Routes.remidation:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: RemediationScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => RemediationScreen());

      // case Routes.congratulationScreen:
      // final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: CongratulationScreen(
      //             getWord: args['get_word'],
      //           ), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => CongratulationScreen(
      //         getWord: args['get_word'],
      //       ));

      // case Routes.bottomNav:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: BottomNavBar(
      //             pageNum: args["pageNum"],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => BottomNavBar(
      //                 pageNum: args["pageNum"],
      //               ));

      // case Routes.vocabularyFlash:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: VocabularyFlashScreen(
      //               name: args["name"],
      //               title: args['title'],
      //               id: args['id'],
      //               singleGroupWordList: args['single_group_list'],
      //               singelGroupWordIsCompleteNullList: args["is_complete_null_list"],),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => VocabularyFlashScreen(
      //               name: args["name"],
      //               title: args['title'],
      //               id: args['id'],
      //               singleGroupWordList: args['single_group_list'],singelGroupWordIsCompleteNullList: args["is_complete_null_list"]));

      // case Routes.vocabularyCheck:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: VocabularyCheckScreen(
      //             name: args["name"],
      //             title: args["title"],
      //             getWord:args['get_word']
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => VocabularyCheckScreen(
      //                 name: args["name"],
      //                 title: args["title"],
      //                 getWord:args['get_word']
      //               ));

      // case Routes.customWordListScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: CustomWordListScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => CustomWordListScreen());

      // case Routes.remediationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: RemediationScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => RemediationScreen());

      // case Routes.createCustomWordListScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: CreateCustomWordListScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => CreateCustomWordListScreen());

      // case Routes.editOrDeleteScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: EditOrDeleteScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => EditOrDeleteScreen());

      // case Routes.privacyScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: PrivacyPolicyScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => PrivacyPolicyScreen());

      // case Routes.howToUseBitWord:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: HowToUseBitWord(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => HowToUseBitWord());

      // case Routes.settingsScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: SettingsScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SettingsScreen());

      // case Routes.changePasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ChangePasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => ChangePasswordScreen());

      // case Routes.changeUserProfile:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ChangeUserProfileScreen(), settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => ChangeUserProfileScreen());

      // case Routes.forgetPassword:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ForgetPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => ForgetPasswordScreen());

      // case Routes.signin:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: SignInScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SignInScreen());

      // case Routes.signup:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(widget: SignUpScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => SignUpScreen());

      // case Routes.verification:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: OtpVerificationScreen(
      //             email: args["email"],
      //             type: args['type'],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => OtpVerificationScreen(
      //               email: args["email"], type: args['type']));

      // case Routes.newPassSet:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: NewPasswordScreen(), settings: settings)
      //       : CupertinoPageRoute(builder: (context) => NewPasswordScreen());

      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
