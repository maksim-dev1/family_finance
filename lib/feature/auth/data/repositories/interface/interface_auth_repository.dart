import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';

/// Интерфейс репозитория для работы с аутентификацией.
///
/// Определяет набор методов для регистрации, входа, верификации кода,
/// обновления токена и выхода из системы.
abstract interface class IAuthRepository {
  /// Регистрирует нового пользователя.
  ///
  /// Отправляет данные регистрации для создания аккаунта.
  ///
  /// - [authRegisterRequest] – объект [AuthRegisterRequestEntity] с данными регистрации.
  Future<void> register({
    required AuthRegisterRequestEntity authRegisterRequest,
  });

  /// Выполняет вход пользователя в систему.
  ///
  /// Отправляет данные для входа, например, email или имя пользователя.
  ///
  /// - [authLoginRequest] – строка с данными для авторизации.
  Future<void> login({
    required AuthLoginRequestEntity authLoginRequest,
  });

  /// Проверяет код подтверждения.
  ///
  /// Используется для верификации пользователя при входе или регистрации.
  ///
  /// - [authVerifeRequest] – объект [AuthVerifeRequestEntity] с данными верификации.
  ///
  /// Возвращает объект [AuthTokenEntity] с информацией о токене.
  Future<AuthTokenEntity> verify({
    required AuthVerifeRequestEntity authVerifeRequest,
  });

  /// Обновляет токен доступа.
  ///
  /// Используется для получения нового токена доступа по refresh-токену.
  ///
  /// - [refreshToken] – строка, содержащая refresh-токен.
  ///
  /// Возвращает объект [AuthTokenEntity] с обновлёнными токенами.
  Future<AuthTokenEntity> refreshToken({
    required RefreshTokenEntity refreshToken,
  });

  /// Выполняет выход пользователя из системы.
  ///
  /// Отправляет запрос на логаут, используя текущий токен.
  ///
  /// - [token] – строка, содержащая токен пользователя.
  Future<void> logout();
}
