// ignore_for_file: constant_identifier_names

//const String url = "https://andradamarcu.softvencefsd.xyz";
const String url = "https://bitword.net";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class PaymentGateway {
  PaymentGateway._();
  static String gateway(String orderId) => "";
}

final class Endpoints {
  Endpoints._();
  //backend_url
  static String signUp() => "/api/register";
  static String Verify() => "/api/verify-otp";

  //signIn
  static String signIn() => "/api/login";
  static String forgetPass() => "/api/forget-password";
  static String newPassSet() => "/api/reset-password";
  static String verifyOtp() => "/api/verify-otp";
  static String logOut() => "/api/logout";
  static String howToUse() => "/api/content/how-to-use";
  static String changePass() => "/api/update-password";

  static String getProfile() => "/api/me";
  static String updateProfile() => "/api/update-profile";

  static String privacyPolicy() => "/api/content/privacy-policy";


  //vocabulary
  static String getVGroups() => "/api/vocabulary/groups";
  static String getVSingleGroup(int id) => "/api/vocabulary/groups/single/$id";
  static String getSingleWord(int id) => "/api/vocabulary/word/single/$id";
  static String getWordDefintion(int id) => "/api/vocabulary/word-definition/single/$id";
  static String postWordCheck(int id) => "/api/vocabulary/word-check/single/$id";


}
