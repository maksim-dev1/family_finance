// common/interceptors/token_interceptor.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:family_finance/common/utils/token_storage.dart';

/// Интерсептор для добавления токена авторизации в HTTP-запросы.
///
/// Класс [TokenInterceptor] извлекает access-токен из [TokenStorage]
/// и добавляет его в заголовки запроса в формате Bearer.
class TokenInterceptor extends InterceptorsWrapper {
  final TokenStorage _tokenStorage;

  /// Конструктор [TokenInterceptor].
  ///
  /// Требует:
  /// - [tokenStorage] – экземпляр [TokenStorage] для получения access-токена.
  TokenInterceptor({required TokenStorage tokenStorage})
      : _tokenStorage = tokenStorage;

  /// Обрабатывает HTTP-запрос перед его отправкой.
  ///
  /// Извлекает access-токен из хранилища и, если он существует,
  /// добавляет его в заголовки запроса в формате 'Bearer $token'.
  ///
  /// - [options] – параметры запроса.
  /// - [handler] – обработчик для продолжения обработки запроса.
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenStorage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    handler.next(options);
  }

  /// Передаёт ошибку дальше по цепочке обработчиков.
  ///
  /// - [err] – возникшая ошибка.
  /// - [handler] – обработчик для дальнейшей обработки ошибки.
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  /// Передаёт ответ дальше по цепочке обработчиков.
  ///
  /// - [response] – полученный HTTP-ответ.
  /// - [handler] – обработчик для дальнейшей обработки ответа.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
