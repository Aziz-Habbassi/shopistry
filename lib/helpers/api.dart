import 'package:dio/dio.dart';

class Api {
  Future<dynamic> getmethod(String url) async {
    final Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("There was an error");
    }
  }

  Future<dynamic> postmethod(
    String url,
    Map<String, dynamic> body, {
    String? token,
  }) async {
    final Response response = await Dio().post(
      url,
      data: body,
      options: Options(headers: token == null ? {} : {"Authorization": token}),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Error");
    }
  }

  Future<dynamic> putmethod(
    String url,
    Map<String, dynamic> body, {
    String? token,
  }) async {
    final Response response = await Dio().put(
      url,
      data: body,
      options: Options(
        headers: token == null ? {} : {"Authorization": "Bearer ichbindusth"},
      ),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Error");
    }
  }
}
