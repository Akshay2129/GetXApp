import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/send_otp_controller.dart';

class SendOtp extends StatelessWidget {
  const SendOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    SendOtpController sendOtpController = Get.put(SendOtpController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Send OTP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a phone number';
                }
                if (value.length != 10 ||
                    !RegExp(r'^[0-9]+$').hasMatch(value)) {
                  return 'Please enter a valid ten-digit phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                sendOtpController.sendOtp(textEditingController.text);
              },
              child: Obx(() {
                return sendOtpController.isLoading.value
                    ? const CircularProgressIndicator()
                    : const Text("Send OTP");
              }),
            ),
          ],
        ),
      ),
    );
  }
}
