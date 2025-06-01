import 'package:shopistry/helpers/api_class.dart';
import 'package:shopistry/models/product_model.dart';

class AllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    final List response = await ApiClass().getmethod(
      "https://fakestoreapi.com/products",
    );
    List<ProductModel> list = [];
    for (dynamic product in response) {
      list.add(ProductModel.fromJson(product));
    }
    print(list[0].id);
    return list;
  }
}
