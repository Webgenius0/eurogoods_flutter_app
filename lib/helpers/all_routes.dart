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
import 'package:eurogoods/features/auth/presentation/create_new_password_screen.dart';
import 'package:eurogoods/features/auth/presentation/otp_verification_screen.dart';
import 'package:eurogoods/features/profile/presentation/address_screen.dart';
import 'package:eurogoods/features/profile/presentation/change_address_screen.dart';
import 'package:eurogoods/features/profile/presentation/change_password_screen.dart';
import 'package:eurogoods/features/profile/presentation/edit_profile_screen.dart';
import 'package:eurogoods/features/profile/presentation/favourite_screen.dart';
import 'package:eurogoods/features/profile/presentation/help_center.dart';
import 'package:eurogoods/features/search%20and%20sort/presentation/search_content_screen.dart';
import 'package:eurogoods/features/search%20and%20sort/presentation/search_screen.dart';
import 'package:eurogoods/navigation_screen.dart';
import 'package:eurogoods/features/auth/presentation/forgot_password.dart';
import 'package:eurogoods/features/auth/presentation/sign_up_screen.dart';
import 'package:eurogoods/login_screen.dart';
import 'package:flutter/cupertino.dart';
import '../features/address/presentation/add_new_address_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  //static const String loginSwapScreen = '/loginSwapScreen';
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
  static const String loginScreen = '/loginScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String allProdcutScreen = '/allProdcutScreen';
  static const String paymentScreen = '/paymentScreen';
  static const String productDetailsScreen = '/productDetailsScreen';
  static const String searchScreen = '/searchScreen';
  static const String saveCard = '/saveCard';
  static const String addNewCardScreen = '/addNewCardScreen';
  static const String editProfile = '/editProfile';
  static const String orderDetailsScreen = '/orderDetailsScreen';
  static const String searchContentScreen = '/searchContentScreen';

  //otp-verify && new-pass
  //--->>
  static const String otpVerifyScreen = '/otp_verify_screen';
  static const String createNewPassScreen = '/create_new_pass_screen';
  static const String AddNewAddressScreen = '/Add_new_address_screen';

  //<<--

  static const String favouriteScreen = '/favouriteScreen';
  static const String helpCenter = '/helpCenter';

  static const String addressScreen = '/addressScreen';
  static const String changeAddressScreen = '/changeAddressScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //otp-verify && new-pass
      //--->>>
      case Routes.otpVerifyScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: OtpVerificationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OtpVerificationScreen());

      case Routes.createNewPassScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: CreateNewPasswordScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => CreateNewPasswordScreen());
      case Routes.AddNewAddressScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: AddNewAddressScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AddNewAddressScreen());
      //<<---
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

      case Routes.loginScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: LoginScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => LoginScreen());

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

      case Routes.editProfile:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: EditProfileScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => EditProfileScreen());
      case Routes.orderDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: OrderDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OrderDetailsScreen());
      case Routes.searchContentScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: SearchContentScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SearchContentScreen());

      case Routes.favouriteScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: FavouriteScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => FavouriteScreen());

      case Routes.helpCenter:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HelpCenter(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HelpCenter());

      case Routes.helpCenter:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HelpCenter(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HelpCenter());

      case Routes.changePasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ChangePasswordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ChangePasswordScreen());

      case Routes.addressScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: AddressScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AddressScreen());

      case Routes.changeAddressScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ChangeAddressScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ChangeAddressScreen());

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
