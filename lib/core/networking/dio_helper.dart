import 'package:dio/dio.dart';
import 'package:news_app/core/networking/api_endpoints.dart';

class DioHelper {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      receiveDataWhenStatusError: true,
    ),
  );

  Future<Response> getRequest({
    required String endPoint,
    required Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
