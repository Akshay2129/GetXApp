import 'package:get/get.dart';

class AppCotroller extends GetxController {
  RxInt n = 0.obs;
  // RxString name = "Akshay".obs;
  // RxBool isset = true.obs;
  // RxDouble result = 0.0.obs;

  void increase() {
    n++;
    print(n);
  }

  void decrease() {
    n--;
    print(n);
  }
}
