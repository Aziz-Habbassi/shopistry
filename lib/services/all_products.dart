import 'package:shopistry/helpers/api.dart';
import 'package:shopistry/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    final List response = await Api().getmethod(
      "https://fakestoreapi.com/products",
    );
    List<ProductModel> list = [];
    for (dynamic product in response) {
      list.add(ProductModel.fromJson(product));
    }
    return list;
  }
}
