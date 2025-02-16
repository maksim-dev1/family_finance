import '../../domain/entities/auth_entity.dart';
import '../DTOs/auth_dto.dart';

abstract class AuthRegisterDTOMapper {
  static AuthRegisterRequestDTO fromEntity({required AuthRegisterRequestEntity entity}) {
    return AuthRegisterRequestDTO(
      name: entity.name,
      email: entity.email,
    );
  }
}

abstract class AuthLoginDTOMapper {
  static AuthLoginRequestDTO fromEntity({required AuthLoginRequestEntity entity}) {
    return AuthLoginRequestDTO(
      email: entity.email,
    );
  }
}

abstract class AuthVerifeDTOMapper {
  static AuthVerifeRequestDTO fromEntity({required AuthVerifeRequestEntity entity}) {
    return AuthVerifeRequestDTO(
      email: entity.email,
      code: entity.code,
    );
  }
}