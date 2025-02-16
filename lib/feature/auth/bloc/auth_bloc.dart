import 'package:family_finance/common/utils/token_storage.dart';
import 'package:family_finance/feature/auth/data/DTOs/auth_dto.dart';
import 'package:family_finance/feature/auth/data/repositories/interface/interface_auth_repository.dart';
import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  AuthBloc({
    required IAuthRepository authRepository,
    required TokenStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage,
        super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) => event.map(
        registration: (event) => _registration(
          authRegisterRequest: event.authRegisterRequest,
          emit: emit,
        ),
        login: (event) => _login(
          authLoginRequest: event.authLoginRequest,
          emit: emit,
        ),
        verify: (event) => _verify(
          authVerifeRequest: event.authVerifeRequest,
          emit: emit,
        ),
        logout: (event) => _logout(
          emit: emit,
        ),
        checkAuth: (enent) => _checkAuth(
          emit: emit,
        ),
      ),
    );
  }

  Future<void> _checkAuth({required Emitter<AuthState> emit}) async {
    try {
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        emit(const AuthState.unAuntificatid());
        return;
      }
      final authResponse = await _authRepository.refreshToken(
        refreshToken: RefreshTokenDTO(refreshToken: refreshToken),
      );

      await _tokenStorage.saveTokens(
          authResponse.accessToken, authResponse.refreshToken);
      emit(AuthState.auntificatid());
    } catch (e) {
      emit(const AuthState.unAuntificatid());
    }
  }

  Future<void> _registration({
    required AuthRegisterRequestEntity authRegisterRequest,
    required Emitter<AuthState> emit,
  }) async {
    try {
      await _authRepository.register(authRegisterRequest: authRegisterRequest);
    } catch (e) {
      emit(AuthState.unAuntificatid());
    }
  }

  Future<void> _login({
    required AuthLoginRequestEntity authLoginRequest,
    required Emitter<AuthState> emit,
  }) async {
    try {
      await _authRepository.login(authLoginRequest: authLoginRequest);
    } catch (e) {
      emit(AuthState.unAuntificatid());
    }
  }

  Future<void> _verify({
    required AuthVerifeRequestEntity authVerifeRequest,
    required Emitter<AuthState> emit,
  }) async {
    emit(AuthState.loading());
    try {
      final authResponse =
          await _authRepository.verify(authVerifeRequest: authVerifeRequest);
          
      await _tokenStorage.saveTokens(
          authResponse.accessToken, authResponse.refreshToken);

      emit(AuthState.auntificatid());
    } catch (e) {
      emit(AuthState.unAuntificatid());
    }
  }

  Future<void> _logout({
    required Emitter<AuthState> emit,
  }) async {
    emit(AuthState.unAuntificatid());
  }
}
