import 'package:shopistry/helpers/api.dart';
import 'package:shopistry/models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategory(String category) async {
    final List response = await Api().getmethod(
      "https://fakestoreapi.com/products/category/$category",
    );
    List<ProductModel> list = [];
    for (dynamic product in response) {
      list.add(ProductModel.fromJson(product));
    }
    return list;
  }
}
