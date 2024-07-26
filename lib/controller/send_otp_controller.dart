import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/apibase/apibase.dart';
import 'package:getxproject/preferences/local_preferences.dart';
import 'package:getxproject/routes.dart';
import 'package:go_router/go_router.dart';

class SendOtpController extends GetxController {
  final _isLoading = false.obs;
  final ApiBase _apiBase = ApiBase();
  bool get isLoading => _isLoading.value;
  final TextEditingController _phoneController =
      TextEditingController(text: "");

  TextEditingController get phoneNumber => _phoneController;

  Future<void> sendOtp(
      {String? phonenumber, required BuildContext context}) async {
    LocalStorageUtils.savePhoneNumber(phonenumber ?? "default");
    _isLoading.value = true;
    var payload = {
      'phoneNumber': phonenumber,
    };
    _apiBase.post(
        "https://4r4iwhot12.execute-api.ap-south-1.amazonaws.com/auth/auth/sendOtp",
        payload, (data) {
      _isLoading.value = false;
      verifyscreen(context);
    }, (e) {
      _isLoading.value = false;
      print('Error: $e');
    });
  }

  void verifyscreen(BuildContext context) {
    GoRouter.of(context).go(Routes.verify);
  }
}
