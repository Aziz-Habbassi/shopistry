import 'package:shopistry/helpers/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    final List<dynamic> response = await Api().getmethod(
      "https://fakestoreapi.com/products/categories",
    );
    return response;
  }
}
