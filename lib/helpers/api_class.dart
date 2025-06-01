import 'package:dio/dio.dart';

class ApiClass {
  Future<dynamic> getmethod(String url) async {
    final Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("There was an error");
    }
  }
}
