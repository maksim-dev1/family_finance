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

_$AuthTokenDTOImpl _$$AuthTokenDTOImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenDTOImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$AuthTokenDTOImplToJson(_$AuthTokenDTOImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
