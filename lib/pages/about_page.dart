import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/pages/MyHomePage.dart';

class AbouPage extends StatelessWidget {
  const AbouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ABOUT PAGE",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.offAll(
                  MyHomePage(),
                );
              },
              child: Text("Go To Next Page"),
            ),
          ),
        ],
      ),
    );
  }
}
