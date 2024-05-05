import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/get_api_controller.dart';
import 'package:getxproject/model/get_api_model.dart';

class AbouPage extends StatelessWidget {
  const AbouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetApiController getApiController = Get.put(GetApiController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ABOUT PAGE",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => getApiController.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: getApiController.items.value.data?.length,
                  itemBuilder: (context, index) {
                    Datum? item = getApiController.items.value.data?[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item?.name ?? ""),
                        Text(item?.gender ?? ""),
                        Text(item!.phoneNumber.toString()),
                       const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  },
                ),
        ),
      ),
    );
  }
}
