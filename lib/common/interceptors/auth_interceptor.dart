import 'package:dio/dio.dart';
import 'package:family_finance/common/utils/token_storage.dart';
import 'package:family_finance/feature/auth/data/repositories/interface/interface_auth_repository.dart';
import 'package:flutter/foundation.dart';

/// Интерсептор для обработки ошибок авторизации в [Dio].
///
/// Класс [AuthInterceptor] перехватывает ошибки HTTP-запросов, в частности,
/// обрабатывает ответы с кодом 401 (Unauthorized). При обнаружении такой ошибки
/// происходит попытка выполнить логаут с использованием refresh-токена и очистка токенов.
class AuthInterceptor extends InterceptorsWrapper {
  final IAuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  /// Конструктор [AuthInterceptor].
  ///
  /// Требует:
  /// - [authRepository] – репозиторий для выполнения операций аутентификации,
  ///   например, логаута.
  /// - [tokenStorage] – хранилище для работы с токенами.
  AuthInterceptor({
    required IAuthRepository authRepository,
    required TokenStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage;

  /// Обрабатывает ошибки, возникающие при выполнении HTTP-запросов.
  ///
  /// Если ответ содержит статус 401 (Unauthorized), выполняется следующая логика:
  /// 1. Получение refresh-токена из безопасного хранилища.
  /// 2. При наличии refresh-токена – попытка выполнить логаут через [_authRepository.logout].
  /// 3. Вне зависимости от результата логаута, очищаются токены.
  ///
  /// После обработки ошибки она передаётся далее через [handler.next(err)].
  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode == 401) {
      // Получаем refresh-токен из безопасного хранилища.
      final token = await _tokenStorage.getAccessToken();
      if (token != null) {
        // Формируем запрос на логаут с использованием refresh-токена.
        try {
          await _authRepository.logout(token: token);
        } catch (error) {
          if (kDebugMode) {
            print(error);
          }
          // Дополнительная обработка ошибки логаута может быть выполнена здесь.
        }
        // Очищаем токены после неуспешной авторизации.
        await _tokenStorage.clearTokens();
      }
    }
    handler.next(err);
  }

  /// Перед выполнением запроса.
  ///
  /// Метод может использоваться для добавления заголовков, токенов или иной
  /// дополнительной обработки запроса до его отправки.
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  /// Перед выполнением обработки ответа.
  ///
  /// Метод может использоваться для обработки и модификации полученных данных.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
