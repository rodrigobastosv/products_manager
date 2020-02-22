import 'package:products_manager/data/mock_data.dart';
import 'package:products_manager/model/product_model.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    await Future.delayed(Duration(seconds: 2));
    final products = productsJson['products'];
    return List.generate(
        products.length, (i) => ProductModel.fromJson(products[i]));
  }
}
