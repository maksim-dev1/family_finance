import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../DTOs/auth_dto.dart';

part 'auth_http_api.g.dart';

@RestApi()
abstract class AuthHttpApi {
  factory AuthHttpApi(Dio dio, {String baseUrl}) = _AuthHttpApi;

  // Регистрация
  @POST('/auth/register')
  Future<void> register({
    @Body() required AuthRegisterRequestDTO body,
  });

  // Авторизация
  @POST('/auth/login')
  Future<void> login({
    @Body() required AuthLoginRequestDTO body,
  });

  // Проверка кода
  @POST('/auth/verify')
  Future<AuthResponseDTO> verify({
    @Body() required AuthVerifeRequestDTO body,
  });

  // Обновление токена
  @POST('/auth/refresh')
  Future<AuthResponseDTO> refreshToken({
    @Body() required RefreshTokenDTO body,
  });

  // Логаут
  @POST('/auth/logout')
  Future<AuthResponseDTO> logout({
    @Body() required RefreshTokenDTO body,
  });
}
