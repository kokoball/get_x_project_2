import 'package:http/http.dart' as http;

import '../model/product_model.dart';

class Services {
  static var client = http.Client();

  static Future<List<Product>?> fetchProdects() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if (response.statusCode == 200) {
      var jasonData = response.body;
      return productFromJson(jasonData);
    } else {
      return null;
    }
  }
}
