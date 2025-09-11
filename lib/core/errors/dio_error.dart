import 'package:dio/dio.dart';

class DioErrorMapper {
  static String map(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout, please try again.';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout, please try again.';
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        return 'Server error: $statusCode → ${e.response?.statusMessage}';
      default:
        return 'Network error: ${e.message}';
    }
  }
}
