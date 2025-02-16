// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRegisterRequestDTOImpl _$$AuthRegisterRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthRegisterRequestDTOImpl(
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$AuthRegisterRequestDTOImplToJson(
        _$AuthRegisterRequestDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

_$AuthLoginRequestDTOImpl _$$AuthLoginRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthLoginRequestDTOImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$AuthLoginRequestDTOImplToJson(
        _$AuthLoginRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$AuthVerifeRequestDTOImpl _$$AuthVerifeRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthVerifeRequestDTOImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$AuthVerifeRequestDTOImplToJson(
        _$AuthVerifeRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };

_$AuthResponseDTOImpl _$$AuthResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseDTOImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$AuthResponseDTOImplToJson(
        _$AuthResponseDTOImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$RefreshTokenDTOImpl _$$RefreshTokenDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenDTOImpl(
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenDTOImplToJson(
        _$RefreshTokenDTOImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
    };
