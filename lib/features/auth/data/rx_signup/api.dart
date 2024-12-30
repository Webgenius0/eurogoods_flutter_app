import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:eurogoods/features/auth/model/sign_up_model.dart';
import 'package:eurogoods/helpers/toast.dart';

import '../../../../networks/dio/dio.dart';
import '../../../../networks/endpoints.dart';
import '../../../../networks/exception_handler/data_source.dart';

final class SignupApi {
  static final SignupApi _singleton = SignupApi._internal();
  SignupApi._internal();
  static SignupApi get instance => _singleton;

  Future<SignupModel> signup({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      Map data = {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
      };

      Response response = await postHttp(Endpoints.signUp(), data);

      if (response.statusCode == 200) {
        final data = SignupModel.fromRawJson(json.encode(response.data));
        ToastUtil.showShortToast(response.data['message']);
        return data;
      } else {
        // Handle non-200 status code errors
        throw DataSource.DEFAULT.getFailure();
      }
    } catch (error) {
      // Handle generic errors
      // throw ErrorHandler.handle(error).failure.responseMessage;
      rethrow;
    }
  }
}
