import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:products_manager/model/product_model.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    final response = await http.get(
        'http://177.153.8.39:8048/datasnap/rest/Tservicos/GetContagem/1003/10');
    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      final listItems = decodedResponse['result'][0] as List;
      return List.generate(
          listItems.length, (i) => ProductModel.fromJson(listItems[i]));
    }
    return [];
  }
}
