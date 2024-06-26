import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/pages/MyHomePage.dart';
import 'package:getxproject/pages/about_page.dart';
import 'package:getxproject/pages/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: AbouPage(),
    );
  }
}
