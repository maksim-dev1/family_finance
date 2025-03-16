import 'package:family_finance/common/utils/token_storage.dart';
import 'package:family_finance/feature/auth/data/repositories/interface/interface_auth_repository.dart';
import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

/// BloC для управления процессами аутентификации.
///
/// Класс [AuthBloc] обрабатывает события аутентификации ([AuthEvent])
/// и изменяет состояние ([AuthState]) в зависимости от результата операций
/// регистрации, входа, верификации, выхода и проверки текущего статуса аутентификации.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  /// Конструктор [AuthBloc].
  ///
  /// Требует:
  /// - [authRepository] – репозиторий для выполнения запросов аутентификации.
  /// - [tokenStorage] – хранилище для работы с токенами.
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
        checkAuth: (event) => _checkAuth(
          emit: emit,
        ),
      ),
    );
  }

  /// Проверяет текущий статус аутентификации.
  ///
  /// Если в хранилище отсутствует refresh-токен или он пустой,
  /// переводит состояние в [AuthState.unAuntificatid].
  /// Иначе выполняет запрос обновления токена и сохраняет новые токены.
  ///
  /// При успешном обновлении состояние меняется на [AuthState.auntificatid],
  /// в случае ошибки – на [AuthState.unAuntificatid].
  Future<void> _checkAuth({required Emitter<AuthState> emit}) async {
    try {
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        emit(const AuthState.unAuntificatid());
        return;
      }
      final authResponse = await _authRepository.refreshToken(
        refreshToken: refreshToken,
      );

      await _tokenStorage.saveTokens(
          authResponse.accessToken, authResponse.refreshToken);
      emit(AuthState.auntificatid());
    } catch (e) {
      emit(const AuthState.unAuntificatid());
    }
  }

  /// Обрабатывает событие регистрации нового пользователя.
  ///
  /// Вызывает метод [register] репозитория с переданными данными.
  /// В случае ошибки состояние переводится в [AuthState.unAuntificatid].
  ///
  /// - [authRegisterRequest] – данные для регистрации в виде [AuthRegisterRequestEntity].
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

  /// Обрабатывает событие входа пользователя.
  ///
  /// Вызывает метод [login] репозитория с переданными данными для авторизации.
  /// При возникновении ошибки состояние меняется на [AuthState.unAuntificatid].
  ///
  /// - [authLoginRequest] – данные для авторизации (например, email или логин).
  Future<void> _login({
    required String authLoginRequest,
    required Emitter<AuthState> emit,
  }) async {
    try {
      await _authRepository.login(authLoginRequest: authLoginRequest);
    } catch (e) {
      emit(AuthState.unAuntificatid());
    }
  }

  /// Обрабатывает событие верификации кода подтверждения.
  ///
  /// Переводит состояние в [AuthState.loading], затем вызывает метод
  /// [verify] репозитория с переданными данными в виде [AuthVerifeRequestEntity].
  /// При успешной верификации сохраняет токены и переводит состояние на [AuthState.auntificatid].
  /// В случае ошибки – меняет состояние на [AuthState.unAuntificatid].
  ///
  /// - [authVerifeRequest] – данные для верификации.
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

  /// Обрабатывает событие выхода пользователя из системы.
  ///
  /// Выполняет необходимые действия для выхода и переводит состояние в [AuthState.unAuntificatid].
  Future<void> _logout({
    required Emitter<AuthState> emit,
  }) async {
    emit(AuthState.unAuntificatid());
  }
}
