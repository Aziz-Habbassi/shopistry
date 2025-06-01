import 'package:dio/dio.dart';
import 'package:shopistry/helpers/api_class.dart';

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {
    final List<dynamic> response = await ApiClass().getmethod(
      "https://fakestoreapi.com/products/categories",
    );
    return response;
  }
}
