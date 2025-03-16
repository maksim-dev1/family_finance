import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../DTOs/auth_dto.dart';

part 'auth_http_api.g.dart';

/// REST API-клиент для аутентификации пользователей.
///
/// Этот интерфейс определяет эндпоинты для взаимодействия с сервером
/// в рамках процессов регистрации, входа, верификации кода, обновления
/// и аннулирования токена.
@RestApi()
abstract class AuthHttpApi {
  /// Фабрика для создания экземпляра API-клиента.
  ///
  /// - [dio] - клиент HTTP-запросов.
  /// - [baseUrl] - базовый URL API.
  factory AuthHttpApi(Dio dio, {String baseUrl}) = _AuthHttpApi;

  /// Регистрирует нового пользователя.
  ///
  /// Отправляет данные нового пользователя на сервер для создания аккаунта.
  ///
  /// - [body] - DTO с данными регистрации.
  @POST('/auth/register')
  Future<void> register({
    @Body() required AuthRegisterRequestDTO body,
  });

  /// Авторизация пользователя.
  ///
  /// Отправляет учетные данные на сервер для входа в систему.
  ///
  /// - [body] - DTO с данными авторизации.
  @POST('/auth/login')
  Future<void> login({
    @Body() required String body,
  });

  /// Проверка кода подтверждения.
  ///
  /// Используется для подтверждения входа или регистрации.
  ///
  /// - [body] - DTO с кодом подтверждения.
  ///
  /// Возвращает DTO с данными пользователя и токенами аутентификации.
  @POST('/auth/verify')
  Future<AuthTokenDTO> verify({
    @Body() required AuthVerifeRequestDTO body,
  });

  /// Обновление токена доступа.
  ///
  /// Используется для получения нового access-токена по refresh-токену.
  ///
  /// - [body] - DTO с refresh-токеном.
  ///
  /// Возвращает обновленные токены доступа.
  @POST('/auth/refresh')
  Future<AuthTokenDTO> refreshToken({
    @Body() required String body,
  });

  /// Выход пользователя из системы.
  ///
  /// Отправляет refresh-токен на сервер для его аннулирования.
  ///
  /// - [body] - DTO с refresh-токеном.
  ///
  /// Возвращает статус операции.
  @POST('/auth/logout')
  Future<AuthTokenDTO> logout({
    @Body() required String body,
  });
}
