import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

@freezed
class AuthRegisterRequestEntity with _$AuthRegisterRequestEntity {
  const factory AuthRegisterRequestEntity({
    required String name,
    required String email,
  }) = _AuthRegisterRequestEntity;
}

@freezed
class AuthLoginRequestEntity with _$AuthLoginRequestEntity {
  const factory AuthLoginRequestEntity({
    required String email,
  }) = _AuthLoginRequestEntity;
}

@freezed
class AuthVerifeRequestEntity with _$AuthVerifeRequestEntity {
  const factory AuthVerifeRequestEntity({
    required String email,
    required String code,
  }) = _AuthVerifeRequestEntity;
}