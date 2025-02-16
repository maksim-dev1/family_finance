import 'package:family_finance/common/utils/string.dart';
import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/api/auth_http_api.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/interface/interfsce_auth_data_provider.dart';
import 'package:flutter/foundation.dart';

class AuthDataProviderImpl implements IAuthDataProvider {
  final AuthHttpApi _authHttpApi;

  AuthDataProviderImpl({required AuthHttpApi authHttpApi})
      : _authHttpApi = authHttpApi;

  @override
  Future<void> login({required AuthLoginRequestDTO authLoginRequest}) async {
    try {
      return await _authHttpApi.login(body: authLoginRequest);
    } catch (e, stackTrace) {
      print('Error $e');
      if (kDebugMode) {
        print(stackTrace);
      }
      final detailedError = getDetailedErrorMessage(e);
      throw Exception("Ошибка: $detailedError");
    }
  }

  @override
  Future<AuthResponseDTO> logout(
      {required RefreshTokenDTO refreshToken}) async {
    try {
      final response = await _authHttpApi.logout(body: refreshToken);
      return response;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
      }
      final detailedError = getDetailedErrorMessage(e);
      throw Exception("Ошибка: $detailedError");
    }
  }

  @override
  Future<AuthResponseDTO> refreshToken(
      {required RefreshTokenDTO refreshToken}) async {
    try {
      final response = await _authHttpApi.refreshToken(body: refreshToken);
      return response;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
      }
      final detailedError = getDetailedErrorMessage(e);
      throw Exception("Ошибка: $detailedError");
    }
  }

  @override
  Future<void> register(
      {required AuthRegisterRequestDTO authRegisterRequest}) async {
    try {
      return await _authHttpApi.register(body: authRegisterRequest);
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
      }
      final detailedError = getDetailedErrorMessage(e);
      throw Exception("Ошибка: $detailedError");
    }
  }

  @override
  Future<AuthResponseDTO> verify(
      {required AuthVerifeRequestDTO authVerifeRequest}) async {
    try {
      final response = await _authHttpApi.verify(body: authVerifeRequest);
      return response;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
      }
      final detailedError = getDetailedErrorMessage(e);
      throw Exception("Ошибка: $detailedError");
    }
  }
}
