import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAcceptTermAndCond = false;
  bool get isAcceptTermAndCond => _isAcceptTermAndCond;

  void toggleTermsCondition() {
    _isAcceptTermAndCond = !_isAcceptTermAndCond;
    notifyListeners();
  }
  
  // For SignUp
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // for verification
  TextEditingController otpContoller= TextEditingController(); 
}
