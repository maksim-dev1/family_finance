import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthRegisterRequestDTO with _$AuthRegisterRequestDTO {
  const factory AuthRegisterRequestDTO({
    required String name,
    required String email,
  }) = _AuthRegisterRequestDTO;

  factory AuthRegisterRequestDTO.fromJson(Map<String, Object?> json) =>
      _$AuthRegisterRequestDTOFromJson(json);
}

@freezed
class AuthLoginRequestDTO with _$AuthLoginRequestDTO {
  const factory AuthLoginRequestDTO({
    required String email,
  }) = _AuthLoginRequestDTO;
  factory AuthLoginRequestDTO.fromJson(Map<String, Object?> json) =>
      _$AuthLoginRequestDTOFromJson(json);
}

@freezed
class AuthVerifeRequestDTO with _$AuthVerifeRequestDTO {
  const factory AuthVerifeRequestDTO({
    required String email,
    required String code,
  }) = _AuthVerifeRequestDTO;

  factory AuthVerifeRequestDTO.fromJson(Map<String, Object?> json) =>
      _$AuthVerifeRequestDTOFromJson(json);
}

@freezed
class AuthResponseDTO with _$AuthResponseDTO {
  const factory AuthResponseDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthResponseDTO;

  factory AuthResponseDTO.fromJson(Map<String, Object?> json) =>
      _$AuthResponseDTOFromJson(json);
}

@freezed
class RefreshTokenDTO with _$RefreshTokenDTO {
  const factory RefreshTokenDTO({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshTokenDTO;

  factory RefreshTokenDTO.fromJson(Map<String, Object?> json) =>
      _$RefreshTokenDTOFromJson(json);
}
