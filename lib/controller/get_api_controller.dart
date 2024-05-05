import 'dart:convert';

import 'package:get/get.dart';
import 'package:getxproject/model/get_api_model.dart';
import 'package:http/http.dart' as http;

class GetApiController extends GetxController {
  var items = Rx<GetApiModel>(GetApiModel());
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getApi();
  }

  Future<void> getApi() async {
    isLoading.value = true;
    final response = await http.get(
      Uri.parse(
          "https://mbcut2mq36.execute-api.ap-south-1.amazonaws.com/commerce//operators/group/1703228300417"),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      items.value =
          GetApiModel.fromJson(data); 
    }
    isLoading.value =
        false; 
  }
}
