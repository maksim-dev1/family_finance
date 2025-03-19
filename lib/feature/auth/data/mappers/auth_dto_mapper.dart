import '../../domain/entities/auth_entity.dart';
import '../DTOs/auth_dto.dart';

abstract class AuthRegisterDTOMapper {
  static AuthRegisterRequestDTO fromEntity(
      {required AuthRegisterRequestEntity entity}) {
    return AuthRegisterRequestDTO(
      name: entity.name,
      email: entity.email,
    );
  }
}

abstract class AuthLoginRequestDTOMapper {
  static AuthLoginRequestDTO fromEntity({required AuthLoginRequestEntity entity}) {
    return AuthLoginRequestDTO(
      email: entity.email,
    );
  }
}

abstract class RefreshTokenDTOMapper {
  static RefreshTokenDTO fromEntity({required RefreshTokenEntity entity}) {
    return RefreshTokenDTO(
      refreshToken: entity.refreshToken,
    );
  }
}

abstract class AuthVerifeDTOMapper {
  static AuthVerifeRequestDTO fromEntity(
      {required AuthVerifeRequestEntity entity}) {
    return AuthVerifeRequestDTO(
      email: entity.email,
      code: entity.code,
    );
  }
}

abstract class AuthTokenDTOMapper {
  static AuthTokenEntity toEntity({required AuthTokenDTO dto}) {
    return AuthTokenEntity(
      accessToken: dto.accessToken,
      refreshToken: dto.refreshToken,
    );
  }
}
