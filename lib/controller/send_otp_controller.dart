import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/pages/MyHomePage.dart';
import 'package:http/http.dart' as http;

class SendOtpController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> sendOtp(String? phoneNumber) async {
    print("Sending OTP to $phoneNumber");
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse(
          "https://4r4iwhot12.execute-api.ap-south-1.amazonaws.com/auth/auth/sendOtp",
        ),
        headers: {'Content-Type': 'application/json'},
        body: '{"phoneNumber": "$phoneNumber"}',
      );

      if (response.statusCode == 200) {
        print("OTP sent successfully");
        Get.snackbar(
          "success",
          " OTP sent successfully to existing user",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.off(MyHomePage());
      } else {
        print("Failed to send OTP. Status code: ${response.statusCode}");

        Get.snackbar(
          "Error",
          "Failed to send OTP. Status code: ${response.statusCode}",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print("Exception occurred: $e");

      Get.snackbar(
        "Error",
        "Exception occurred: $e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
