import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';

abstract interface class IAuthDataProvider {
  // Регистрация
  Future<void> register({
    required AuthRegisterRequestDTO authRegisterRequest,
  });

  // Авторизация
  Future<void> login({
    required AuthLoginRequestDTO authLoginRequest,
  });

  // Проверка кода
  Future<AuthResponseDTO> verify({
    required AuthVerifeRequestDTO authVerifeRequest,
  });

  // Обновление токена
  Future<AuthResponseDTO> refreshToken({
    required RefreshTokenDTO refreshToken,
  });

  // Логаут
  Future<AuthResponseDTO> logout({
    required RefreshTokenDTO refreshToken,
  });
}
