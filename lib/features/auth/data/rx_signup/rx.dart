import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:eurogoods/features/auth/model/sign_up_model.dart';
import 'package:eurogoods/helpers/toast.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../networks/rx_base.dart';
import 'api.dart';

final class SignupRx extends RxResponseInt<SignupModel> {
  final api = SignupApi.instance;

  SignupRx({required super.empty, required super.dataFetcher});

  ValueStream get getFileData => dataFetcher.stream;

  Future<bool> signup({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      SignupModel data = await api.signup(
        name: name,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
      handleSuccessWithReturn(data);
      return true;
    } catch (error) {
      return handleErrorWithReturn(error);
    }
  }

  @override
  handleErrorWithReturn(dynamic error) {
    if (error is DioException) {
      if (error.response!.statusCode == 422) {
        ToastUtil.showShortToast(error.response!.data["message"]);
      } else {
        ToastUtil.showShortToast(error.response!.data["message"]);
      }
    }
    log(error.toString());
    dataFetcher.sink.addError(error);
    // throw error;
    return false;
  }
}
