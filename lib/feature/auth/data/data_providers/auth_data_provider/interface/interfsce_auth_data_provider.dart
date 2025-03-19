import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';

/// Интерфейс для работы с данными аутентификации.
///
/// Определяет набор методов для регистрации, входа, верификации кода,
/// обновления токена и выхода из системы.
abstract interface class IAuthDataProvider {
  /// Регистрирует нового пользователя.
  ///
  /// Отправляет данные регистрации пользователя на сервер.
  ///
  /// - [authRegisterRequest] – DTO, содержащий необходимые данные для регистрации.
  Future<void> register({
    required AuthRegisterRequestDTO authRegisterRequest,
  });

  /// Выполняет вход пользователя в систему.
  ///
  /// Отправляет учетные данные для входа.
  ///
  /// - [authLoginRequest] – DTO, содержащая данные для авторизации (email).
  Future<void> login({
    required AuthLoginRequestDTO authLoginRequest,
  });

  /// Проверяет код подтверждения.
  ///
  /// Используется для подтверждения входа или регистрации пользователя.
  ///
  /// - [authVerifeRequest] – DTO с данными для верификации кода.
  ///
  /// Возвращает [AuthTokenDTO] с информацией о токене.
  Future<AuthTokenDTO> verify({
    required AuthVerifeRequestDTO authVerifeRequest,
  });

  /// Обновляет токен доступа.
  ///
  /// Используется для получения нового токена по старому refresh-токену.
  ///
  /// - [refreshToken] – DTO, содержащая refresh-токен.
  ///
  /// Возвращает [AuthTokenDTO] с обновлёнными токенами.
  Future<AuthTokenDTO> refreshToken({
    required RefreshTokenDTO refreshToken,
  });

  /// Выходит из системы.
  ///
  /// Отправляет запрос на выход пользователя, используя текущий токен.
  ///
  /// - [token] – строка, содержащая токен пользователя.
  ///
  /// Возвращает [AuthTokenDTO] с информацией о статусе выхода.
  Future<AuthTokenDTO> logout();
}
