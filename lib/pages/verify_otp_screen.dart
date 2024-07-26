import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/verify_otp_controller.dart';
import 'package:getxproject/preferences/local_preferences.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  VerifyOtpController verifyOtpController = Get.put(VerifyOtpController());
  String number =
      LocalStorageUtils.instance.getString('phoneNumber').toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Enter OTP'),
          ),
          TextFormField(
            controller: verifyOtpController.otpController,
            inputFormatters: [
              LengthLimitingTextInputFormatter(6),
            ],
            decoration: const InputDecoration(
              labelText: 'Enter OTP',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print("object");

              verifyOtpController.verifyotp(
                phoneNumber: number,
                otp: int.parse(verifyOtpController.otpController.text),
                context: context,
              );
            },
            child: Obx(
              () {
                return verifyOtpController.isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Verify');
              },
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
