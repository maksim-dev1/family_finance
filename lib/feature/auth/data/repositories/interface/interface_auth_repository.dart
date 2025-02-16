import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';
import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';

abstract interface class IAuthRepository {
  // Регистрация
  Future<void> register({
    required AuthRegisterRequestEntity authRegisterRequest,
  });

  // Авторизация
  Future<void> login({
    required AuthLoginRequestEntity authLoginRequest,
  });

  // Проверка кода
  Future<AuthResponseDTO> verify({
    required AuthVerifeRequestEntity authVerifeRequest,
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