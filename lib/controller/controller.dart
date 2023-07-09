import 'package:get/get.dart';
import '../data/services.dart';
import '../model/product_model.dart';

class Controller extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    var products = await Services.fetchProdects();
    if (products != null) {
      productList.value = products;
    }
  }
}
