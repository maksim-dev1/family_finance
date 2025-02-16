import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/interface/interfsce_auth_data_provider.dart';
import 'package:family_finance/feature/auth/data/mappers/auth_dto_mapper.dart';

import '../../../domain/entities/auth_entity.dart';
import '../interface/interface_auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final IAuthDataProvider _authDataProvider;

  AuthRepositoryImpl({required IAuthDataProvider authDataProvider})
      : _authDataProvider = authDataProvider;

  @override
  Future<void> login({required AuthLoginRequestEntity authLoginRequest}) async {
    final authLoginRequestDto = AuthLoginDTOMapper.fromEntity(entity: authLoginRequest);
    return await _authDataProvider.login(authLoginRequest: authLoginRequestDto);
  }

  @override
  Future<AuthResponseDTO> logout(
      {required RefreshTokenDTO refreshToken}) async {
    return await _authDataProvider.logout(refreshToken: refreshToken);
  }

  @override
  Future<AuthResponseDTO> refreshToken(
      {required RefreshTokenDTO refreshToken}) async {
    return await _authDataProvider.refreshToken(refreshToken: refreshToken);
  }

  @override
  Future<void> register({required AuthRegisterRequestEntity authRegisterRequest}) async {
    final authRegisterRequestDto = AuthRegisterDTOMapper.fromEntity(entity: authRegisterRequest);
    return await _authDataProvider.register(authRegisterRequest: authRegisterRequestDto);
  }

  @override
  Future<AuthResponseDTO> verify(
      {required AuthVerifeRequestEntity authVerifeRequest}) async {
    final authVerifeRequestDto = AuthVerifeDTOMapper.fromEntity(entity: authVerifeRequest);
    return await _authDataProvider.verify(authVerifeRequest: authVerifeRequestDto);
  }
}
