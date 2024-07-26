import 'package:get/get.dart';
import 'package:getxproject/apibase/apibase.dart';
import 'package:getxproject/model/productModel.dart';

class ProductController extends GetxController {
  final ApiBase _apiBase = ApiBase();
  RxBool isLoading = false.obs;
  final RxList<ProductModel> _productList = <ProductModel>[].obs;

  List<ProductModel> get productList => _productList;

  void getProducts() {
    isLoading.value = true;
    _apiBase.get("https://fakestoreapi.com/products", (data) {
      isLoading.value = false;
      _productList.value = (data as List)
          .map((product) => ProductModel.fromJson(product))
          .toList();

      print(data);
    }, (e) {
      isLoading.value = false;
      print(e);
    });
  }
}
