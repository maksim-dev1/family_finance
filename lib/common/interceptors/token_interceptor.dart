// common/interceptors/token_interceptor.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:family_finance/common/utils/token_storage.dart';

class TokenInterceptor extends InterceptorsWrapper {
  final TokenStorage _tokenStorage;

  TokenInterceptor({required TokenStorage tokenStorage})
      : _tokenStorage = tokenStorage;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenStorage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
