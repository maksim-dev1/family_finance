  import 'package:dio/dio.dart';

String getDetailedErrorMessage(dynamic error) {
    if (error is DioException) {
      final statusCode = error.response?.statusCode ?? 'Неизвестно';
      String? message = error.message;
      final data = error.response?.data;
      if (data != null) {
        if (data is Map && data.containsKey('message')) {
          message = data['message'];
        } else {
          message = data.toString();
        }
      }
      return "Статус: $statusCode, сообщение: $message";
    } else {
      return error.toString();
    }
  }