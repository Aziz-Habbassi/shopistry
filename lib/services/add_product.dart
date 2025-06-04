import 'package:shopistry/helpers/api.dart';
import 'package:shopistry/models/product_model.dart';

class AddProduct {
  Future<ProductModel> postproduct({
    required Map<String, dynamic> body,
    String? token,
  }) async {
    final Map<String, dynamic> product = await Api().postmethod(
      "https://fakestoreapi.com/products",
      body,
      token: token,
    );
    return ProductModel.fromJson(product);
  }
}
