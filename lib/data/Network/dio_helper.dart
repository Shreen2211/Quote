import 'package:dio/dio.dart';

import 'end_point.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: EndPoint.BaseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> get(
      {required String endpoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? Params}) async {
    try {
      Response? response =
          await dio?.get(endpoint, data: body, queryParameters: Params);
      return response!;
    } catch (e) {
      rethrow;
    }
  }
}
