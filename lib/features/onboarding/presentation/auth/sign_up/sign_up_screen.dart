// import 'package:eurogoods/constants/text_font_style.dart';
// import 'package:eurogoods/gen/colors.gen.dart';
// import 'package:eurogoods/helpers/ui_helpers.dart';
// import 'package:eurogoods/provider/auth_provider.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();

//   ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer<AuthProvider>(builder: (context, provider, Widget) {
//         return SafeArea(
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.w),
//               child: Stack(
//                 children: [
//                   SingleChildScrollView(
//                     child: Form(
//                       key: _formKey,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('bitword',
//                               style: TextStyle(
//                                 fontFamily: 'Arial Rounded MT Bold',
//                                 color: AppColors.c01779D,
//                                 fontSize: 57.h,
//                                 fontWeight: FontWeight.w700,
//                                 letterSpacing: -0.25.w,
//                               )),
//                           UIHelper.verticalSpace(32.h),
//                           Text(
//                             'Create an Account',
//                             style: TextFontStyle.textStyle24c848585PoppinsW400,
//                           ),
//                           UIHelper.verticalSpace(39.h),
//                           // EmailTextField(
//                           //   controller: provider.nameController,
//                           //   hintText: 'Name',
//                           //   textColor: AppColors.c5A5C5F,
//                           //   validator: (value) {
//                           //     if (value == null || value.isEmpty) {
//                           //       return 'Please enter your name';
//                           //     }
//                           //     return null;
//                           //   },
//                           // ),
//                           UIHelper.verticalSpace(16.h),
//                           // EmailTextField(
//                           //   controller: provider.emailController,
//                           //   hintText: 'Email Address',
//                           //   textColor: AppColors.c5A5C5F,
//                           //   validator: (value) {
//                           //     final RegExp emailRegex = RegExp(
//                           //         r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
//                           //     if (value == null || value.isEmpty) {
//                           //       return 'Please enter your email';
//                           //     } else if (!emailRegex.hasMatch(value)) {
//                           //       return 'Please enter a valid email address';
//                           //     }
//                           //     return null;
//                           //   },
//                           // ),
//                           UIHelper.verticalSpace(16.h),
//                           // PasswordTextField(
//                           //   hintText: 'Password',
//                           //   textColor: AppColors.c5A5C5F,
//                           //   controller: provider.passwordController,
//                           //   validator: (value) {
//                           //     if (value == null || value.isEmpty) {
//                           //       return 'Please enter your password'.tr;
//                           //     }
//                           //     if (value.length < 8) {
//                           //       return 'Password must be at least 8 characters long'
//                           //           .tr;
//                           //     }
//                           //     return null;
//                           //   },
//                           // ),
//                           UIHelper.verticalSpace(16.h),
//                           // PasswordTextField(
//                           //   hintText: 'Confirm Password',
//                           //   textColor: AppColors.c5A5C5F,
//                           //   controller: provider.confirmPasswordController,
//                           //   validator: (value) {
//                           //     if (value == null || value.isEmpty) {
//                           //       return 'Please enter your confirm password'.tr;
//                           //     }
//                           //     if (value.length < 8) {
//                           //       return 'Password must be at least 8 characters long'
//                           //           .tr;
//                           //     }
//                           //     if (value.trim() !=
//                           //         provider.passwordController.text.trim()) {
//                           //       return "Both passwords do not match".tr;
//                           //     }
//                           //     return null;
//                           //   },
//                           // ),
//                           UIHelper.verticalSpace(20.h),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Checkbox(
//                                     activeColor: AppColors.allPrimaryColor,
//                                     value: provider.isAcceptTermAndCond,
//                                     side: BorderSide(
//                                       color: Colors.grey,
//                                     ),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5.r),
//                                     ),
//                                     onChanged: (_) {
//                                       setState(() {
//                                         provider.toggleTermsCondition();
//                                       });
//                                     },
//                                   ),
//                                 ],
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 8),
//                                     Text.rich(
//                                       TextSpan(
//                                         children: [
//                                           TextSpan(
//                                             text:
//                                                 'By continuing, you agree to our ',
//                                             style: TextFontStyle
//                                                 .textStyle24c848585PoppinsW400,
//                                           ),
//                                           TextSpan(
//                                             text: 'Terms of\n',
//                                             recognizer: TapGestureRecognizer()
//                                               ..onTap =
//                                                   () => print('terms of click'),
//                                             style: TextFontStyle
//                                                 .textStyle24c848585PoppinsW400
//                                                 .copyWith(
//                                               decoration:
//                                                   TextDecoration.underline,
//                                             ),
//                                           ),
//                                           TextSpan(
//                                             text: 'Service',
//                                             recognizer: TapGestureRecognizer()
//                                               ..onTap =
//                                                   () => print('Service click'),
//                                             style: TextFontStyle
//                                                 .textStyle24c848585PoppinsW400
//                                                 .copyWith(
//                                               decoration:
//                                                   TextDecoration.underline,
//                                             ),
//                                           ),
//                                           TextSpan(
//                                             text: ' and ',
//                                             style: TextFontStyle
//                                                 .textStyle24c848585PoppinsW400,
//                                           ),
//                                           TextSpan(
//                                             text: 'Privacy Policy.',
//                                             recognizer: TapGestureRecognizer()
//                                               ..onTap = () =>
//                                                   print('Privacy Policy click'),
//                                             style: TextFontStyle
//                                                 .textStyle24c848585PoppinsW400
//                                                 .copyWith(
//                                               decoration:
//                                                   TextDecoration.underline,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           UIHelper.verticalSpace(20.h),
//                           // ValueListenableBuilder(
//                           //     valueListenable: isLoading,
//                           //     builder: (BuildContext, dynamic, Widget) {
//                           //       return customElevatedButton(
//                           //         onPressed: () {
//                           //           _signUpMethod(provider);
//                           //         },
//                           //         child: !isLoading.value
//                           //             ? Text(
//                           //                 'Register',
//                           //                 style: TextFontStyle
//                           //                     .textStyle16cFFFFFFPoppinsW500
//                           //                     .copyWith(fontSize: 16.sp),
//                           //               )
//                           //             : loading_widget(),
//                           //         bgColor: AppColors.allPrimaryColor,
//                           //       );
//                           //     }),
//                           // customElevatedButton(
//                           //         onPressed: () {
//                           //           _signUpMethod(provider);
//                           //         },
//                           //         child:Text(
//                           //                 'Register',
//                           //                 style: TextFontStyle
//                           //                     .textStyle16cFFFFFFPoppinsW500
//                           //                     .copyWith(fontSize: 16.sp),
//                           //               ),

//                           //         bgColor: AppColors.allPrimaryColor,
//                           //       ),
//                           UIHelper.verticalSpace(68.h),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('Already have an account?',
//                                   style: TextFontStyle
//                                       .textStyle24c848585PoppinsW400
//                                       .copyWith(
//                                           color: AppColors.c01779D,
//                                           fontSize: 16.sp)),
//                               UIHelper.horizontalSpace(12.h),
//                               TextButton(
//                                   onPressed: () {
//                                     // Get.to(() => SignInScreen());
//                                   },
//                                   child: Text('Log In',
//                                       style: TextFontStyle
//                                           .textStyle24c848585PoppinsW400
//                                           .copyWith(
//                                               color: AppColors.allPrimaryColor,
//                                               fontSize: 16.sp)))
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   // Show loading overlay
//                   ValueListenableBuilder<bool>(
//                     valueListenable: isLoading,
//                     builder: (context, value, child) {
//                       if (value) {
//                         // return WaitingWidget();
//                       }
//                       return SizedBox.shrink(); // No overlay when not loading
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   // void _signUpMethod(AuthProvider provider) async {
//   //   if (!provider.isAcceptTermAndCond) {
//   //     // ToastUtil.showShortToast("Please accept the Terms and Conditions.");
//   //     return;
//   //   }

//   //   if (_formKey.currentState?.validate() ?? false) {
//   //     isLoading.value = true;

//   //     await signupRx
//   //         .signup(
//   //       name: provider.nameController.text.trim(),
//   //       email: provider.emailController.text.trim(),
//   //       password: provider.passwordController.text.trim(),
//   //       passwordConfirmation: provider.confirmPasswordController.text.trim(),
//   //     )
//   //         .then((success) {
//   //       if (success) {
//   //         NavigationService.navigateToReplacementWithObject(Routes.verification,{
//   //           "email": provider.emailController.text.trim(),"type":"signUp"
//   //         });
//   //         ToastUtil.showShortToast(
//   //             "A verification email has been sent to your email. Please complete the verification.");
//   //       }

//   //       isLoading.value = false;
//   //     }, onError: (error) {
//   //       isLoading.value = false;
//   //       ToastUtil.showShortToast(error);
//   //     });
//   //   } else {
//   //     isLoading.value = false;
//   //   }
//   // }
// }

import 'package:eurogoods/common_widgets/custom_button.dart';
import 'package:eurogoods/common_widgets/custom_textformfield.dart';
import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/gen/assets.gen.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:eurogoods/helpers/all_routes.dart';
import 'package:eurogoods/helpers/navigation_service.dart';
import 'package:eurogoods/helpers/ui_helpers.dart';
import 'package:eurogoods/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // variables
  TextEditingController nameOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(45.h),
                      Text(
                        "Create an \naccount",
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700,
                      ),
                      UIHelper.verticalSpace(44.h),

                      //------------username or email-------------
                      CustomTextFormField(
                        hintText: 'Username or Email',
                        prefixIcon: Assets.icons.user,
                        backgroundColor: AppColors.cFFFFFF,
                        borderColor: AppColors.c02344A,
                        iconColor: AppColors.c02344A,
                        hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                        controller: nameOrEmailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name or email';
                          }
                          return null;
                        },
                      ),
                      UIHelper.verticalSpace(31.h),

                      //------------password textfield-------------
                      CustomTextFormField(
                          isPasswordField: true,
                          hintText: 'Password',
                          prefixIcon: Assets.icons.password,
                          backgroundColor: AppColors.cFFFFFF,
                          borderColor: AppColors.c02344A,
                          iconColor: AppColors.c02344A,
                          hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            return null;
                          }),
                      UIHelper.verticalSpace(31.h),

                      //------------confirm password textfield-------------
                      CustomTextFormField(
                          isPasswordField: true,
                          hintText: 'Confirm Password',
                          prefixIcon: Assets.icons.password,
                          backgroundColor: AppColors.cFFFFFF,
                          borderColor: AppColors.c02344A,
                          iconColor: AppColors.c02344A,
                          hintTextColor: AppColors.c02344A.withOpacity(0.8.sp),
                          controller: confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your confirm password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long'
                                  .tr;
                            }
                            // if (value.trim() !=
                            //     provider.passwordController.text.trim()) {
                            //   return "Both passwords do not match";
                            // }
                            return null;
                          }),
                      UIHelper.verticalSpace(30.h),

                      //------------Create Account-------------
                      CustomButton(
                        text: "Create Account",
                        onPressed: () {
                          // NavigationService.navigateTo(
                          //     Routes.createAccountScreen);
                        },
                        style: TextFontStyle.textStyle36c0E4F6MontserratW700
                            .copyWith(
                                color: AppColors.cFFFFFF,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                      ),
                      UIHelper.verticalSpace(48.h),

                      //------------login-------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I Already Have and account",
                            style: TextFontStyle.textStyle24c848585PoppinsW400
                                .copyWith(
                              color: AppColors.c02344A,
                              fontSize: 14.sp,
                            ),
                          ),
                          UIHelper.horizontalSpace(5.w),
                          GestureDetector(
                            onTap: () => NavigationService.navigateTo(
                                Routes.welcomeScreen),
                            child: Text(
                              "Login",
                              style: TextFontStyle
                                  .textStyle36c0E4F6MontserratW700
                                  .copyWith(
                                color: AppColors.c01779D,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
