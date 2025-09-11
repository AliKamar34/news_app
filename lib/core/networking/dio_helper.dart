import 'package:dio/dio.dart';

class DioHelper {
  final Dio dio = Dio();

  DioHelper();

  Future<Response> getRequest({
    required String url,
    required Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
