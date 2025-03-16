import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

/// DTO для запроса на регистрацию пользователя.
///
/// Содержит информацию о пользователе, необходимую для создания нового аккаунта.
/// 
/// - [name] – имя пользователя.
/// - [email] – электронная почта пользователя.
@freezed
class AuthRegisterRequestDTO with _$AuthRegisterRequestDTO {
  const factory AuthRegisterRequestDTO({
    required String name,
    required String email,
  }) = _AuthRegisterRequestDTO;

  /// Создает экземпляр [AuthRegisterRequestDTO] из JSON-данных.
  factory AuthRegisterRequestDTO.fromJson(Map<String, Object?> json) =>
      _$AuthRegisterRequestDTOFromJson(json);
}

/// DTO для запроса на верификацию кода подтверждения.
///
/// Используется для подтверждения регистрации или входа пользователя.
/// 
/// - [email] – электронная почта, с которой производится верификация.
/// - [code] – код подтверждения, полученный пользователем.
@freezed
class AuthVerifeRequestDTO with _$AuthVerifeRequestDTO {
  const factory AuthVerifeRequestDTO({
    required String email,
    required String code,
  }) = _AuthVerifeRequestDTO;

  /// Создает экземпляр [AuthVerifeRequestDTO] из JSON-данных.
  factory AuthVerifeRequestDTO.fromJson(Map<String, Object?> json) =>
      _$AuthVerifeRequestDTOFromJson(json);
}

/// DTO для передачи информации о токенах аутентификации.
///
/// Содержит как access-токен, так и refresh-токен, используемые для
/// управления сессией пользователя.
/// 
/// - [accessToken] – токен для доступа к защищенным ресурсам.
/// - [refreshToken] – токен для обновления access-токена.
@freezed
class AuthTokenDTO with _$AuthTokenDTO {
  const factory AuthTokenDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthTokenDTO;

  /// Создает экземпляр [AuthTokenDTO] из JSON-данных.
  factory AuthTokenDTO.fromJson(Map<String, Object?> json) =>
      _$AuthTokenDTOFromJson(json);
}
