import 'package:dio/dio.dart';
import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';
import 'package:family_finance/common/utils/token_storage.dart';
import 'package:family_finance/feature/auth/data/repositories/interface/interface_auth_repository.dart';
import 'package:flutter/foundation.dart';

class AuthInterceptor extends InterceptorsWrapper {
  final IAuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  AuthInterceptor({
    required IAuthRepository authRepository,
    required TokenStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage;

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode == 401) {
      // Получаем refresh-токен из безопасного хранилища.
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken != null) {
        // Формируем DTO для logout.
        final refreshTokenDTO = RefreshTokenDTO(refreshToken: refreshToken);
        try {
          await _authRepository.logout(refreshToken: refreshTokenDTO);
        } catch (error) {
          if (kDebugMode) {
            print(error);
          }
          // Если логаут не удался, можно выполнить дополнительную обработку.
        }
        // Очищаем токены после неуспешной авторизации.
        await _tokenStorage.clearTokens();
      }
    }
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
