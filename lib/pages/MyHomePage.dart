import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/app_controller.dart';
import 'package:getxproject/controller/get_api_controller.dart';
import 'package:getxproject/pages/about_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppCotroller appCotroller = Get.put(AppCotroller());
    GetApiController getApiController = Get.put(GetApiController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Flutter Demo",
                  "Welcome to Flutter World",
                  // colorText: Colors.amber,
                );
              },
              child: const Text("Snack Bar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "ALEART",
                  content: const Column(
                    children: [
                      Text("Do You Want To Delete"),
                    ],
                  ),
                );
              },
              child: const Text("dialog Box"),
            ),
            ElevatedButton(
              onPressed: () {
                getApiController.getApi();
                Get.off(
                  const AbouPage(),
                );
              },
              child: const Text("Go To Next Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: IconButton(
                onPressed: () {
                  appCotroller.increase();
                  print("increase");
                },
                icon: const Icon(Icons.arrow_upward, size: 40),
              ),
            ),
            Obx(() => Text(
                  appCotroller.n.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                )),
            InkWell(
              child: IconButton(
                onPressed: () {
                  appCotroller.decrease();
                  print("decrease");
                },
                icon: const Icon(Icons.arrow_downward, size: 40),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
