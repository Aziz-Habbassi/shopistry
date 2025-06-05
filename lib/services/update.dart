import 'package:shopistry/helpers/api.dart';
import 'package:shopistry/models/product_model.dart';

class UpdateService {
  Future<ProductModel> put({
    required int id,
    required Map<String, dynamic> body,
  }) async {
    final Map<String, dynamic> response = await Api().putmethod(
      "https://fakestoreapi.com/products/$id",
      body,
    );
    final ProductModel productModel = ProductModel.fromJson(response);
    print(productModel.title);
    return productModel;
  }
}
