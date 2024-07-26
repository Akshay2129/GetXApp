import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/apibase/apibase.dart';
import 'package:getxproject/routes.dart';
import 'package:go_router/go_router.dart';

class VerifyOtpController extends GetxController {
  final ApiBase _apiBase = ApiBase();
  final _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  final TextEditingController _otpController = TextEditingController(text: "");
  TextEditingController get otpController => _otpController;
  verifyotp({
    int? otp,
    String? phoneNumber,
    required BuildContext context,
  }) async {
    var data = {
      'phoneNumber': phoneNumber,
      'otp': otp,
    };
    try {
      _isLoading.value = true;
      _apiBase.post(
          "https://4r4iwhot12.execute-api.ap-south-1.amazonaws.com/auth/auth/validateOtp",
          data, (data) {
        _isLoading.value = false;
        homepage(context);
        print(data);
      }, (e) {
        _isLoading.value = false;
        print(e);
      });
    } catch (e) {
      _isLoading.value = false;
      print(e);
    }
  }
}

void homepage(BuildContext context) {
  GoRouter.of(context).go(Routes.products);
}
