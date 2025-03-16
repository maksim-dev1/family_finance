import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

/// Сущность запроса на регистрацию пользователя.
///
/// Содержит данные, необходимые для создания нового аккаунта:
/// - [name] – имя пользователя.
/// - [email] – электронная почта пользователя.
@freezed
class AuthRegisterRequestEntity with _$AuthRegisterRequestEntity {
  const factory AuthRegisterRequestEntity({
    required String name,
    required String email,
  }) = _AuthRegisterRequestEntity;
}

/// Сущность запроса на верификацию кода подтверждения.
///
/// Используется для подтверждения регистрации или входа пользователя.
/// - [email] – электронная почта, для которой производится верификация.
/// - [code] – код подтверждения, полученный пользователем.
@freezed
class AuthVerifeRequestEntity with _$AuthVerifeRequestEntity {
  const factory AuthVerifeRequestEntity({
    required String email,
    required String code,
  }) = _AuthVerifeRequestEntity;
}

/// Сущность, содержащая токены аутентификации.
///
/// Включает:
/// - [accessToken] – токен доступа для работы с защищёнными ресурсами.
/// - [refreshToken] – токен для обновления access-токена.
@freezed
class AuthTokenEntity with _$AuthTokenEntity {
  const factory AuthTokenEntity({
    required String accessToken,
    required String refreshToken,
  }) = _AuthTokenEntity;
}
